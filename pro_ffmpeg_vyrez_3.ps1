cls

echo "pro ffmpeg rodil dvou casu ve vterinach a ve formatu hh:mm:ss.xxx pro vyrezi z videa nebo audia"
echo "command : ffmpeg -i in.mp(3)4 -ss 00:00:15.100 -t 00:02:55.300 -c copy out.mp(3)4"
echo "cas -t znamena cas od -ss tzn. v realu udela vyrez 00:00:15.100 - 00:03:10.400 ze skladby"
echo "prvni cas musi byt vzdy nizsi nez druhy cas !"
echo ""

$cas_1 = Read-host -Prompt "zadej start cas hh:mm:ss.xxx"
#$cas_1 = "00:10:20.200" # (testovaci radek) pri tomto, predchozi radek jenom od-enterovat jako prazdny
#echo $cas_1
Write-Host -ForegroundColor Yellow $cas_1

[int] $cas_1_h = $cas_1.Substring(0,2)
#echo $cas_1_h
$cas_1_h_s = (( $cas_1_h * 3600 ))

[int] $cas_1_m = $cas_1.Substring(3,2)
#echo $cas_1_m
$cas_1_m_s = (( $cas_1_m * 60 ))


[int] $cas_1_s = $cas_1.Substring(6,2)
#echo $cas_1_s

$cas_1_ms = $cas_1.Substring(9,3)
$cas_1_ms_2 = "0."
$cas_1_ms_2 += $cas_1_ms
#echo $cas_1_ms_2
$cas_1_ms_3 = [Double] $cas_1_ms_2
#echo $cas_1_ms_3
#echo $cas_1_ms_3.GetType()

$cas_1_celkem_vterin = ((  $cas_1_h_s + $cas_1_m_s + $cas_1_s + $cas_1_ms_3 ))

$cas_2 = Read-host -Prompt "zadej stop cas  hh:mm:ss.xxx"
#$cas_2 = "01:21:34.650" 
#echo $cas_2
Write-Host -ForegroundColor Yellow $cas_2

[int] $cas_2_h = $cas_2.Substring(0,2)
#echo $cas_2_h
$cas_2_h_s = (( $cas_2_h * 3600 ))

[int] $cas_2_m = $cas_2.Substring(3,2)
#echo $cas_2_m
$cas_2_m_s = (( $cas_2_m * 60 ))

[int] $cas_2_s = $cas_2.Substring(6,2)
#echo $cas_2_s

$cas_2_ms = $cas_2.Substring(9,3)
#echo $cas_1_ms"<"
#echo $cas_1_ms.GetType()
$cas_2_ms_2 = "0."
$cas_2_ms_2 += $cas_2_ms
#echo $cas_2_ms_2
$cas_2_ms_3 = [Double] $cas_2_ms_2

#echo $cas_2_ms_3
#echo $cas_2_ms_3.GetType()

$cas_2_celkem_vterin = ((  $cas_2_h_s + $cas_2_m_s + $cas_2_s + $cas_2_ms_3 ))
#echo $cas_2_celkem_vterin

$rozdil_vterin = (( $cas_2_celkem_vterin - $cas_1_celkem_vterin ))
#echo "rozdil casu je $rozdil_vterin"

<#
PS R:\> [timespan]::FromSeconds(54680.123).tostring()
15:11:20.1230000
#>

# prevadi pocet vterin na hh:mm:ss.xxx
$ts = [timespan]::FromSeconds($rozdil_vterin)

#$ts2 = [timespan]::FromSeconds($rozdil_vterin).tostring()
#echo $ts2"<"


[string] $hh = $ts.Hours
if ( $hh.Length -eq 1 ){ $hh = "0" + $hh }
#echo $hh

[string ] $mm = $ts.Minutes
if ( $mm.Length -eq 1 ){ $mm = "0" + $mm }
#echo $mm

[string] $ss = $ts.Seconds
if ( $ss.Length -eq 1 ){ $ss = "0" + $ss }
#echo $ss

[string] $ms = $ts.Milliseconds
if ( $ms.Length -eq 1 ) {
$ms = "00" + $ms
}
#echo $ms"<<"
#echo $ms.GetType()

# echo rozdilu casu presne vcetne .xxx
$cas_1_celkem_vterin_2 = ((  $cas_1_h_s + $cas_1_m_s + $cas_1_s ))
$cas_2_celkem_vterin_2 = ((  $cas_2_h_s + $cas_2_m_s + $cas_2_s ))
[string] $rozdil_vterin_out = (( $cas_2_celkem_vterin_2 - $cas_1_celkem_vterin_2 ))
$rozdil_vterin_out += "."
$rozdil_vterin_out += $ms
#echo "rozdil casu je $rozdil_vterin_out vterin"
Write-Host -ForegroundColor cyan "rozdil casu je $rozdil_vterin_out vterin"
#echo $rozdil_vterin_out.GetType()

#ffmpeg -i in.mp4 -ss 00:00:15.000 -t 00:02:55.000 -c copy out.mp4
$out_cas = $hh + ":" + $mm + ":" + $ss
$out_1 = "ffmpeg -i in.mp4 -ss " + $cas_1 + " -t " + $out_cas + "." + $ms + " -c copy out.mp4"
echo $out_1
echo ""
echo "kdyby audio/video vytvorene timto prikazem nejak zlobylo tak zkuste podobny parametru na konci"
echo ""
$out_2 = "ffmpeg -i in.mp3 -ss " + $cas_1 + " -t " + $out_cas + "." + $ms + " out.mp3"
echo $out_2
echo ""

# pause
Read-Host -Prompt "Press ENTER to continue"
sleep -Milliseconds 300

