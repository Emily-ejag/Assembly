main:
loop:  lw   $r1, 0($r1)
       and  $r1, $r1, $r2
       lw   $r1, 0($r1)
       lw   $r1, 0($r1)
       beq  $r1, $r0, loop