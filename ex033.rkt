#lang htdp/bsl
|#
The year 2000 problem was an anticipated event expected to occur due to the limitations
of computer programs. Many programs created before the turn of the millenium were written
to work with dates where the year was represented by 2 digits (with an implied "19xx" prefix).
The implication there is that when the year 2000 arrived, the digits would roll over
back to "00", and that could cause confusion or incorrect behavior of the computer programs.
One example is that an electronic sign designed to display the year would display
"Month Day, 1900" instead of "Month Day, 2000".

The implications for our programming are that we should work to anticipate such problems,
and design our programs accordingly: whether that is to handle such anticipated changes
gracefully, alert users and programmers of detected upcoming or occurred events, both, or
some other solution, is up to the programmer(s) in question.
#|