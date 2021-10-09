@echo off
setlocal enabledelayedexpansion

set str=

for /L %%i in (1, 1, %1) do (
	for /L %%j in (1, 1, %%i) do set str=!str!*
	echo !str!
	set str=
)

echo.

@echo off
setlocal enabledelayedexpansion

set str=

for /L %%i in (1, 1, %1) do (
	set /a x=%1-%%i+1
	for /L %%j in (!x!, -1, 1) do set str=!str!*
	echo !str!
	set str=
)

echo.

@echo off
setlocal enabledelayedexpansion

set str=

for /L %%i in (1, 1, %1) do (
	set /a x=%1-%%i+1
	for /L %%j in (!x!, -1, 2) do set str=!str! 
	for /L %%m in (1, 1, %%i) do set str=!str!*
	echo !str!
	set str=
)

echo.

@echo off
setlocal enabledelayedexpansion

set str=

for /L %%i in (1, 1, %1) do (
	set /a x=%1-%%i+1
	for /L %%j in (!x!, -1, 1) do set str=!str! 
	set /a z=2*%%i-1
	for /L %%n in (1, 1, !z!) do set str=!str!*
	echo !str!
	set str=
)

set /a g=%1-1
for /L %%i in (!g!, -1, 1) do (
	set /a x=!g!-%%i+2
	for /L %%j in (1, 1, !x!) do set str=!str! 
	set /a z=2*%%i-1
	for /L %%n in (!z!, -1, 1) do set str=!str!*
	echo !str!
	set str=
)