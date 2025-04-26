@echo off
REM sestriha sceny z filmu King Skate 
REM nektery zabery u kterejch je poznamka se nepovedly ( asi moc kratkej cas apod. asi bude existovat nejakej limit)
REM toto je jeste jako dodatek k repozitari "mvp_2_dokument" kterej jenom prehraval pomoci mpv prehravace
REM https://github.com/BtbN/FFmpeg-Builds/releases/download/latest/ffmpeg-master-latest-win64-gpl-shared.zip

REM bez parametru "-c copy" na konci udela vsechno presne i videa ktery predtim nesli
REM travalo to nekolik minut procesor jel na 100% ale udelal vsechno dobre

REM ffmpeg -i "King Skate (2018).mp4" -ss 00:00:31.000 -t 00:00:06.000 -c copy 1.mp4
REM  ^--- puvodne teda tekhle, bylo to rychli ale nebylo to 100%

ffmpeg -i "King Skate (2018).mp4" -ss 00:00:31.000 -t 00:00:06.000 1.mp4

ffmpeg -i "King Skate (2018).mp4" -ss 00:01:32.000 -t 00:00:07.000 1B.mp4

ffmpeg -i "King Skate (2018).mp4" -ss 00:05:37.500 -t 00:00:12.700 1C.mp4

ffmpeg -i "King Skate (2018).mp4" -ss 00:06:24.300 -t 00:00:12.700 2.mp4

ffmpeg -i "King Skate (2018).mp4" -ss 00:06:41.000 -t 00:00:02.300 3.mp4

ffmpeg -i "King Skate (2018).mp4" -ss 00:11:15.000 -t 00:00:02.000 4.mp4

ffmpeg -i "King Skate (2018).mp4" -ss 00:12:33.500 -t 00:00:01.500 5.mp4

ffmpeg -i "King Skate (2018).mp4" -ss 00:12:43.000 -t 00:00:07.000 6.mp4

ffmpeg -i "King Skate (2018).mp4" -ss 00:13:14.000 -t 00:00:07.700 7.mp4

ffmpeg -i "King Skate (2018).mp4" -ss 00:16:17.000 -t 00:00:17.000 8.mp4

ffmpeg -i "King Skate (2018).mp4" -ss 00:16:59.000 -t 00:00:15.500 9.mp4

ffmpeg -i "King Skate (2018).mp4" -ss 00:17:44.700 -t 00:00:34.300 10.mp4

ffmpeg -i "King Skate (2018).mp4" -ss 00:18:46.600 -t 00:00:46.900 11.mp4

ffmpeg -i "King Skate (2018).mp4" -ss 00:20:28.000 -t 00:00:21.000 12.mp4

ffmpeg -i "King Skate (2018).mp4" -ss 00:21:04.600 -t 00:00:15.900 13.mp4

ffmpeg -i "King Skate (2018).mp4" -ss 00:24:07.500 -t 00:00:34.500 14.mp4

ffmpeg -i "King Skate (2018).mp4" -ss 00:25:51.000 -t 00:00:06.500 15.mp4

ffmpeg -i "King Skate (2018).mp4" -ss 00:28:37.000 -t 00:00:06.000 16.mp4

ffmpeg -i "King Skate (2018).mp4" -ss 00:31:34.000 -t 00:00:14.700 17.mp4

ffmpeg -i "King Skate (2018).mp4" -ss 00:31:56.000 -t 00:00:04.000 18.mp4

ffmpeg -i "King Skate (2018).mp4" -ss 00:34:49.000 -t 00:00:18.300 20.mp4

ffmpeg -i "King Skate (2018).mp4" -ss 00:37:56.000 -t 00:00:07.800 21.mp4

ffmpeg -i "King Skate (2018).mp4" -ss 00:40:41.200 -t 00:00:01.900 22.mp4

ffmpeg -i "King Skate (2018).mp4" -ss 00:41:32.100 -t 00:00:15.900 23.mp4

ffmpeg -i "King Skate (2018).mp4" -ss 00:43:00.000 -t 00:00:03.100 24.mp4

ffmpeg -i "King Skate (2018).mp4" -ss 00:43:17.000 -t 00:00:15.000 25.mp4

ffmpeg -i "King Skate (2018).mp4" -ss 00:43:31.000 -t 00:00:01.200 26.mp4

ffmpeg -i "King Skate (2018).mp4" -ss 00:44:02.400 -t 00:00:04.200 26b.mp4

ffmpeg -i "King Skate (2018).mp4" -ss 00:53:40.000 -t 00:00:01.000 27.mp4

ffmpeg -i "King Skate (2018).mp4" -ss 00:54:27.000 -t 00:00:03.300 28.mp4

ffmpeg -i "King Skate (2018).mp4" -ss 00:55:56.300 -t 00:00:11.700 29.mp4

ffmpeg -i "King Skate (2018).mp4" -ss 00:56:58.000 -t 00:00:04.500 30.mp4

ffmpeg -i "King Skate (2018).mp4" -ss 00:58:30.000 -t 00:00:31.000 31.mp4

ffmpeg -i "King Skate (2018).mp4" -ss 00:58:35.900 -t 00:00:04.900 32.mp4

ffmpeg -i "King Skate (2018).mp4" -ss 01:16:19.000 -t 00:00:04.000 33.mp4

ffmpeg -i "King Skate (2018).mp4" -ss 01:18:28.600 -t 00:00:01.300 34.mp4

ffmpeg -i "King Skate (2018).mp4" -ss 01:18:31.200 -t 00:00:05.700 35.mp4

ffmpeg -i "King Skate (2018).mp4" -ss 01:19:00.500 -t 00:00:02.500 36.mp4

pause
