::
:: PROJECT:     RosBE - ReactOS Build Environment for Windows
:: LICENSE:     GPL - See COPYING in the top level directory
:: FILE:        Root/chdefdir.cmd
:: PURPOSE:     Tool to change the Default Work Dir in RosBE.
:: COPYRIGHT:   Copyright 2007 Daniel Reimer <reimer.daniel@freenet.de>
::
::
@echo off

if /I "%1"=="" (
    goto :DEF
) 
if /I "%1"=="default" ( 
    set "%_ROSSOURCEDIR%" == "%_ROSSRCDIRBCK%"
) else (
    set "%_ROSSOURCEDIR%" == "%1"
)
goto :END

:DEF

echo in a Path to use RosBE in or "default" to revert to Default Dir:
SET /P XY=

if /I "%XY%"=="" (
    goto :END
) 
if /I "%XY%"=="default" ( 
    set "%_ROSSOURCEDIR%" == "%_ROSSRCDIRBCK%"
) else (
    set "%_ROSSOURCEDIR%" == "%XY%"
)
goto :END

:END
