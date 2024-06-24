setlocal EnableDelayedExpansion
set LookFor=Discord.exe
set LookDir=C:\Users\datmobile\AppData\Local\Discord
for /d %%d in (%LookDir%\*) do pushd %%d & (for %%z in (*.exe) do start %%z) & popd