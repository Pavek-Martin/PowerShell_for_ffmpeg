@echo off

REM https://youtu.be/OZ1Mpa-zqUI
REM  ^ tady je album ktery uz se nedalo na internetu sehnat nikde jinde, nez tady, mizerna kvalita teda docela 128Kbs jenom
REM takze stazeno pomoci yt-dlp (apod.)

REM ffmpeg -i "Tleskač - Na Předměstí Bory (2006) Celé Album.mp4" in.mp3
REM  ^ pomoci utility "ffmpeg.exe" prevedeno album z videa do mp3 jenom jako zvuk
REM https://github.com/BtbN/FFmpeg-Builds/releases/download/latest/ffmpeg-master-latest-win64-gpl-shared.zip
pause

REM a dale pak rozseka cely album v jenom dlouhym souboru mp3 na jednotlivy pisnicky,podle casu,parametr "-ss" a "-t"
REM 00:00:15 - 00:03:10 "01 - Pavlacova story.mp3"
REM ^zacetek a ^konec, skladby zjisteny pri poslechu souboru "in.m3"
ffmpeg -i in.mp3 -ss 00:00:15 -t 00:02:55 -c copy "01 - Pavlacova story.mp3" 
REM                  ^ zacatek  ^ konec tzn. pisnicka bude dlouha 2 min. 55 sec.
REM znamena to ze 2:55 od casu 0:15 tzn. 03.10 ( tady je to proste zadava trosku jinak a je nutny to takhle dodrzet ! )
REM pro toto pouzit utilitu "pro_ffmpeg_vyrez_2.exe"
REM a casy na ktery se pta zadavat jako jsou na radku "00:00:15 - 00:03:10 "01 - Pavlacova story.mp3"


REM a dale pak totez...
REM 00:03:13 - 00:05:49 "02 - Skandinavska zenska.mp3"
ffmpeg -i in.mp3 -ss 00:03:13 -t 00:02:36 -c copy "02 - Skandinavska zenska.mp3"

REM 00:05:51 - 00:09:16 "03 - Svet jako na dlani.mp3" 
ffmpeg -i in.mp3 -ss 00:05:51 -t 00:03:25 -c copy "03 - Svet jako na dlani.mp3" 

REM 00:09:20 - 00:11:53 "04 - Krutej John.mp3"
ffmpeg -i in.mp3 -ss 00:09:20 -t 00:02:33 -c copy "04 - Krutej John.mp3"

REM 00:11:55 - 00:15:30 "05 - Posledni dve volne labute.mp3"
ffmpeg -i in.mp3 -ss 00:11:55 -t 00:03:35 -c copy "05 - Posledni dve volne labute.mp3"

REM 00:15:33 - 00:18:03 "06 - Nerovnej boj.mp3"
ffmpeg -i in.mp3 -ss 00:15:33 -t 00:02:30 -c copy "06 - Nerovnej boj.mp3"

REM 00:18:06 - 00:21:28 "07 - Za Peci.mp3"
ffmpeg -i in.mp3 -ss 00:18:06 -t 00:03:22 -c copy "07 - Za Peci.mp3"

REM 00:21:31 - 00:23:39 "08 - Krchovska.mp3"
ffmpeg -i in.mp3 -ss 00:21:31 -t 00:02:08 -c copy "08 - Krchovska.mp3"

REM 00:23:41 - 00:26:17 "09 - doktorka prav.mp3"
ffmpeg -i in.mp3 -ss 00:23:41 -t 00:02:08 -c copy "09 - doktorka prav.mp3"

REM 00:26:21 - 00:29:30 "10 - Nafoukanej chlapecek.mp3"
ffmpeg -i in.mp3 -ss 00:26:21 -t 00:03:09 -c copy "10 - Nafoukanej chlapecek.mp3"

REM 00:29:30 - 00:29:33 "11 - Hop hej.mp3"
ffmpeg -i in.mp3 -ss 00:29:30 -t 00:00:03 -c copy "11 - Hop hej.mp3"

REM 00:29:37 - 00:32:56 "12 - Konec koncu.mp3"
ffmpeg -i in.mp3 -ss 00:29:37 -t 00:03:19 -c copy "12 - Konec koncu.mp3"

pause


 



