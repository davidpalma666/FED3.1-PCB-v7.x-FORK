
cls

@echo on

::full comand to reference
::atprogram -i SWD -t atmelice -d ATSAMD21G18A -cl 2MHz -v chiperase program -f %arg1% verify -f %arg1% reset


::chip erase
atprogram -t atmelice -i SWD -d ATSAMD21G18A -cl 2MHz -v chiperase

::core program & check
atprogram -t atmelice -i SWD -d ATSAMD21G18A -cl 2MHz -v program -f SetClock_Modified.hex

::user page & check
atprogram -t atmelice -i SWD -d ATSAMD21G18A -cl 2MHz -v program -f _userpage_REF.hex


::reset
atprogram -t atmelice -i SWD -d ATSAMD21G18A -cl 2MHz reset