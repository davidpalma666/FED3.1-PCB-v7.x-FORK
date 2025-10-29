
@echo off
cls
set arg1=%1
set arg2=%2

@echo on

::full comand to reference
::atprogram -i SWD -t atmelice -d ATSAMD21G18A -cl 2MHz -v chiperase program -f %arg1% verify -f %arg1% reset


::chip erase
atprogram -t atmelice -i SWD -d ATSAMD21G18A -cl 2MHz -v chiperase

::core program & check
atprogram -t atmelice -i SWD -d ATSAMD21G18A -cl 2MHz -v program -f %arg1%

::user page & check
atprogram -t atmelice -i SWD -d ATSAMD21G18A -cl 2MHz -v program -f %arg2%

::core program verifying
::NO NEED	atprogram -t atmelice -i SWD -d ATSAMD21G18A -cl 2MHz verify -f %arg1%

::user page verifying
::NO NEED	atprogram -t atmelice -i SWD -d ATSAMD21G18A -cl 2MHz verify -f %arg2% 

::reset
atprogram -t atmelice -i SWD -d ATSAMD21G18A -cl 2MHz reset