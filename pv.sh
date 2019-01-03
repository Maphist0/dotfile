ffmpeg -r 5 -f image2 -i %05d.png -crf 25 -pix_fmt yuv420p test.mp4

