SELECT coalesce( decode(to_char( MOD(ROWNUM,3)), '0', 'Fizz' ) || DECODE(TO_char( MOD(ROWNUM,5) ), '0' , 'Buzz' )  , to_char(ROWNUM) ) 
  FROM dual 
CONNECT BY LEVEL <= 100
