cls

echo "pro ffmpeg rodil dvou casu ve vterinach a ve formatu hh:mm:ss pro vyrezi z videi a audia mp3 apod."
echo "command : ffmpeg -i in.mp(3)4 -ss 00:00:15 -t 00:02:55 -c copy -c copy out.mp(3)4"
echo "cas -t znamena cas od -ss tzn. v realu udela vyrez 00:00:15 - 00:03:10 ze skladby"
echo "prvni cas musi byt vzdy nizsi nez druhy cas !"
echo ""

$cas_1 = Read-host -Prompt "zadej start cas hh:mm:ss"
#$cas_1 = "01:10:02"
echo $cas_1

[int] $cas_1_h = $cas_1.Substring(0,2)
#echo $cas_1_h
$cas_1_h_s = (( $cas_1_h * 3600 ))

[int] $cas_1_m = $cas_1.Substring(3,2)
#echo $cas_1_m
$cas_1_m_s = (( $cas_1_m * 60 ))


[int] $cas_1_s = $cas_1.Substring(6,2)
#echo $cas_1_s

$cas_1_celkem_vterin = ((  $cas_1_h_s + $cas_1_m_s + $cas_1_s ))
#echo $cas_1_celkem_vterin

#

$cas_2 = Read-host -Prompt "zadej stop cas  hh:mm:ss"
#$cas_2 = "02:12:06"
echo $cas_2

[int] $cas_2_h = $cas_2.Substring(0,2)
#echo $cas_2_h
$cas_2_h_s = (( $cas_2_h * 3600 ))

[int] $cas_2_m = $cas_2.Substring(3,2)
#echo $cas_2_m
$cas_2_m_s = (( $cas_2_m * 60 ))


[int] $cas_2_s = $cas_2.Substring(6,2)
#echo $cas_2_s

$cas_2_celkem_vterin = ((  $cas_2_h_s + $cas_2_m_s + $cas_2_s ))
#echo $cas_2_celkem_vterin


$rozdil_vterin = (( $cas_2_celkem_vterin - $cas_1_celkem_vterin ))
echo "rozdil casu je $rozdil_vterin vterin"
#echo "-------------------"

# prevadi pocet vterin na hh:mm:ss
$ts = [timespan]::FromSeconds($rozdil_vterin)

[string] $hh = $ts.Hours
if ( $hh.Length -eq 1 ){ $hh = "0" + $hh }
#echo $hh

[string ] $mm = $ts.Minutes
if ( $mm.Length -eq 1 ){ $mm = "0" + $mm }
#echo $mm

[string] $ss = $ts.Seconds
if ( $ss.Length -eq 1 ){ $ss = "0" + $ss }
#echo $ss


#ffmpeg -i in.mp3 -ss 00:00:15 -t 00:02:55 -c copy
$out_cas = $hh + ":" + $mm + ":" + $ss
$out = "ffmpeg -i in.mp4 -ss " + $cas_1 + " -t " + $out_cas + " -c copy out.mp4"

echo $out

echo ""

# pause
Read-Host -Prompt "Press ENTER to continue"
sleep -Milliseconds 300









 




