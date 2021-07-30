//////////////////////////
THIS IS A BATCH FILE THAT SCANS THE FOLDER TREE AND COMPRESSES ALL VIDEOS OF THE SPECIFIED FILE FORMATS (ex. *.avi, *.mp4 ...)
//////////////////////////

HOW TO INSTALL :
1. Copy the `FFmpeg` folder to your local disk C:\
2. Add the bin folder (C:\FFmpeg\bin) to the PATH (System variables)

HOW TO RUN :
-Just run the `compress.bat` file

/////////////
   NOTES
/////////////
%%x > Represents the absolute path of the file (including the file name)
%%~nx > Represents the file name without the file type ending 
%%~px > Represents the absolute path of the file (without the file name)


**ABOUT FFMPEG**

General command:
`ffmpeg -i input.avi output.mp4`

Best compression rate command:
`ffmpeg -i "input.avi" -vcodec libx264 -crf 35 -r 24 "output.mp4"`

> vcodec : video codec (265 is better but not supported in windows)
> crf (Constant Rate factor) :  the bigger the RF the worse the video quality
> r : frames per second