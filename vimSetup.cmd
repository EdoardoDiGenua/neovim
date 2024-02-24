@echo off

set "DESTFOLDER=%LOCALAPPDATA%\nvim"

if not exist "%DESTFOLDER%" (
  mkdir "%DESTFOLDER%
  echo Folder for neovim setup created, copy configuations files...
  xcopy /s . "%DESTFOLDER%'
  del "%DESTFOLDER%\vimSetup.*"
  echo Setup complited
) else (
  echo Neovim folder already exist, skipping rest of code...
)


