::[Bat To Exe Converter]
::
::YAwzoRdxOk+EWAnk
::fBw5plQjdG8=
::YAwzuBVtJxjWCl3EqQJgSA==
::ZR4luwNxJguZRRnk
::Yhs/ulQjdF+5
::cxAkpRVqdFKZSjk=
::cBs/ulQjdF65
::ZR41oxFsdFKZSDk=
::eBoioBt6dFKZSDk=
::cRo6pxp7LAbNWATEpCI=
::egkzugNsPRvcWATEpCI=
::dAsiuh18IRvcCxnZtBJQ
::cRYluBh/LU+EWAnk
::YxY4rhs+aU+JeA==
::cxY6rQJ7JhzQF1fEqQJQ
::ZQ05rAF9IBncCkqN+0xwdVs0
::ZQ05rAF9IAHYFVzEqQJQ
::eg0/rx1wNQPfEVWB+kM9LVsJDGQ=
::fBEirQZwNQPfEVWB+kM9LVsJDGQ=
::cRolqwZ3JBvQF1fEqQJQ
::dhA7uBVwLU+EWDk=
::YQ03rBFzNR3SWATElA==
::dhAmsQZ3MwfNWATElA==
::ZQ0/vhVqMQ3MEVWAtB9wSA==
::Zg8zqx1/OA3MEVWAtB9wSA==
::dhA7pRFwIByZRRnk
::Zh4grVQjdCyDJGyX8VAjFC5HSRa+GG6pDaET+NTv5ueKtw0YTOdxfZfeug==
::YB416Ek+ZG8=
::
::
::978f952a14a936cc963da21a135fa983
@echo off
chcp 65001 > nul
title Очистка временных файлов by Timmu

rem Проверяем права администратора
>nul 2>&1 net session || (
    echo [EROR] Требуются права администратора для выполнения скрипта.
    choice /c EN /m "[REQUEST] Нажмите E для продолжения, N для отказа: "
    if errorlevel 2 (
        echo [EXIT] Вы отказались давать права администратора. Скрипт завершен.
        echo [EXIT] Нажмите любую клавишу для продолжения...
        pause >nul
        exit /b
    ) else (
        echo [REQUEST] Запрашиваем права администратора...
        powershell -Command "Start-Process -Verb runAs -FilePath \"%0\""
        exit /b
    )
)

rem Установка кодировки UTF-8
chcp 65001 > nul

color 0F
set SEPARATOR=============================================================
cls

echo %SEPARATOR%
echo Очистка временных файлов...
echo %SEPARATOR%

echo Удаление временных файлов текущего пользователя...
del /s /q %temp%\*
if %errorlevel% equ 0 (
    echo [Временные файлы текущего пользователя удалены]
) else (
    echo [Ошибка при удалении временных файлов текущего пользователя]
)
echo.

echo %SEPARATOR%
echo Удаление временных файлов в системной папке...
del /s /q C:\Windows\Temp\*
if %errorlevel% equ 0 (
    echo [Временные файлы в системной папке удалены]
) else (
    echo [Ошибка при удалении временных файлов в системной папке]
)
echo.

echo %SEPARATOR%
echo Удаление файлов в папке предварительной выборки...
del /s /q C:\Windows\Prefetch\*
if %errorlevel% equ 0 (
    echo [Файлы в папке предварительной выборки удалены]
) else (
    echo [Ошибка при удалении файлов в папке предварительной выборки]
)
echo.

echo %SEPARATOR%
echo Удаление временных файлов в AppData...
del /s /q "%LocalAppData%\Temp\*"
if %errorlevel% equ 0 (
    echo [Временные файлы в AppData удалены]
) else (
    echo [Ошибка при удалении временных файлов в AppData]
)
echo.

echo %SEPARATOR%
echo Удаление временных файлов в %temp%...
del /s /q C:\Users\User\AppData\Local\Temp\*
if %errorlevel% equ 0 (
    echo [Файлы в папке предварительной выборки удалены]
) else (
    echo [Ошибка при удалении файлов в папке предварительной выборки]
)
echo.

echo %SEPARATOR%
echo Очистка завершена.
echo %SEPARATOR%

echo.
echo :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
echo :: ██████╗░ ██╗░░░██╗   ████████╗ ██╗ ███╗░░░███╗ ███╗░░░███╗ ██╗░░░██╗ ::
echo :: ██╔══██╗ ╚██╗░██╔╝   ╚══██╔══╝ ██║ ████╗░████║ ████╗░████║ ██║░░░██║ ::
echo :: ██████╦╝ ░╚████╔╝░   ░░░██║░░░ ██║ ██╔████╔██║ ██╔████╔██║ ██║░░░██║ ::
echo :: ██╔══██╗ ░░╚██╔╝░░   ░░░██║░░░ ██║ ██║╚██╔╝██║ ██║╚██╔╝██║ ██║░░░██║ ::
echo :: ██████╦╝ ░░░██║░░░   ░░░██║░░░ ██║ ██║░╚═╝░██║ ██║░╚═╝░██║ ╚██████╔╝ ::
echo :: ╚═════╝░ ░░░╚═╝░░░   ░░░╚═╝░░░ ╚═╝ ╚═╝░░░░░╚═╝ ╚═╝░░░░░╚═╝ ░╚═════╝░ ::
echo :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
echo.
echo Нажмите любую клавишу для завершения...
pause >nul
