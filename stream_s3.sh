ffmpeg -re -i https://s3-us-west-1.amazonaws.com/tfcvideos/rockfall.mov -vcodec libx264 -preset veryfast -maxrate 1500k -c:a aac -b:a 128k -ac 2 -ar 44100 -f flv rtmp://localhost:1935/live


ffmpeg -re -i <S3 video URL> -vcodec libx264 -preset veryfast -maxrate 1500k -c:a aac -b:a 128k -ac 2 -ar 44100 -f flv rtmp://localhost:1935/live