ffmpeg -re -i <vide.mp4> -vcodec copy -loop -1 -c:a aac -b:a 128k -ar 44100 -strict -2 -f flv rtmp://<<URL>>/live/test
