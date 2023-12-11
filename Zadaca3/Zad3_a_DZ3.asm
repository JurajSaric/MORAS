@BASE
D = M
@INDEX
D = D + M
@CHECK_END
D; JEQ

@BASE
D = M
@CHECK_END
D; JEQ

@INDEX
D = M
@CHECK_END
D; JEQ

@POWER
M = 1

(EXP_LOOP)
    @INDEX
    D = M
    $WHILE(D)
        @POWER
        M = M * BASE
        @INDEX
        M = M - 1
    $END

(END)
@CHECK_END
0; JMP
