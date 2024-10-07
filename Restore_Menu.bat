@echo off
title Restore Old Context Menu in Windows 11

:: Show initial message box with warning icon
echo MsgBox "Restore the old Context Menu in Windows 11", vbExclamation, "Restore Menu" > temp.vbs
cscript //nologo temp.vbs
del temp.vbs

:: Add the registry key
reg.exe add "HKCU\Software\Classes\CLSID\{86ca1aa0-34aa-4e8b-a509-50c905bae2a2}\InprocServer32" /f /ve

if %errorlevel% neq 0 (
    :: Show error message box
    echo MsgBox "Error: Could not apply the change. Please try running the script as an administrator.", vbCritical, "Error" > temp.vbs
    cscript //nologo temp.vbs
    del temp.vbs
) else (
    :: Show success message box
    echo MsgBox "The change was successful! Please restart File Explorer using Task Manager.", vbInformation, "Success" > temp.vbs
    cscript //nologo temp.vbs
    del temp.vbs
)

:: Clean up
del temp.vbs
