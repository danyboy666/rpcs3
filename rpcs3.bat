@ECHO OFF

:: We need to set some variables for our rom path. Edit accordingly.
:: You can edit the folders if needed but usually all es installations are similar. 
:: Use %BASENAME% without quotes to strip the rom name from the full path in es_systems.cfg.

SET ROMPATH=%~d0\emulationstation\.emulationstation\roms\ps3\
SET EBOOT=\PS3_GAME\USRDIR\EBOOT.BIN

:: Accept the %BASENAME% argument from es_system.cfg command section.
:: The tidle will strip the quotes from the %BASENAME% argument, this way the script can handle 
:: white spaces from user input or es_systems.cfg commands.

SET arg1=%~1

:: This command doesn't need to be change since it's portable for any version of es. 
:: %~d0 is simply the system variable to identify the drive letter where the bat file resides.

%~d0\emulationstation\.emulationstation\systems\rpcs3\rpcs3.exe "%ROMPATH%%arg1%%EBOOT%"
