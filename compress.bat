@ECHO OFF
ECHO Starting...

CD ".."
FOR /R %%x in (*.avi, *.mp4, *.vob, *.wmv, *.mkv, *.asf, *.mpg, *.mts, *.mov) do (
	ECHO %%x
:: ==== CHECKS IF VIDEO IS ALREADY COMPRESSED
	ECHO %%~nx|find "-compressed" > nul
	if errorlevel 1 (
		CD %%~px
		ffmpeg -i "%%x" -vcodec libx264 -crf 35 -r 24 "%%~nx-compressed.mp4"
		DEL "%%x" 
	)
)
PAUSE