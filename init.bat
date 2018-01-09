@echo off
cd /d "%~dp0"

for %%i in (src, 3rdparty, document, bin, tmp) do (
    md %%i >nul 2>nul
)

mklink /d /j %~dp03rdparty\virtual-treeview "E:\rover-self-work\delphi\delphiÏîÄ¿Ä£°å\3rdparty\virtual-treeview" >nul 2>nul