@echo off

rem Define websites to check
set websites=google.com netflix.com facebook.com reddit.com quora.com youtube.com gmail.com twitch.tv twitter.com github.com ptcl.com.pk stackoverflow.com

rem Check website status and display results in parallel
rem Uses the "start" command to run multiple instances of the ping command
rem The "ping" command is run with the "-n 2 -w 1000" parameters to ping each website twice with a timeout of 1 second
rem The "&&" operator is used to check the return value of the ping command
rem If the return value is 0, then the website is up
rem If the return value is 1, then the website is down
echo +---------------------+
for %%i in (%websites%) do (
  start /b ping -n 3 -w 1000 %%i > nul && echo %%i : Up || echo %%i : Down
)

echo +---------------------+
