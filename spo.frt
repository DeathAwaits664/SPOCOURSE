: inc 1 + ;
: dec 1 - ;
: sqr dup * ;
: abs dup 0 < if -1 * then ;
: odd 2 % abs ;


: prime
dup 1 > if dup 2 = not if
 dup odd if 1 repeat 2 + 2dup 2dup sqr >=
 -rot % land not 
 until
 sqr <
 else drop 0 then
 else drop 1 then
else drop 0 then ;


: allotprime prime 4 allot swap over ! ;

: cat
swap dup count >r over count r@
+ inc heap-alloc
dup rot string-copy r> over >r +
swap string-copy r> ;

: koll
dup >r
repeat dup 1 > if
dup 2 % if
dup 3 * inc else dup 2 / then
else 1 then
dup 1 = until
r> ;


m" ravin"
string-hash
.S
17019
3
%
.S
0


