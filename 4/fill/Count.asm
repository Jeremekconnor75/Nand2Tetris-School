// Count.asm
// Purpose: R2 = R0 + R1
// While (R1 > 0): R2 = R2 + 1, R1 = R1 - 1

    @R0
    D = M        // D = seed
    @R2
    M = D        // R2 = seed

(LOOP)
    @R1
    D = M        // D = R1
    @END
    D;JEQ        // if R1 == 0, jump to END

    @R2
    M = M + 1    // R2 = R2 + 1

    @R1
    M = M - 1    // R1 = R1 - 1

    @LOOP
    0;JMP        // repeat

(END)
    @END
    0;JMP        // halt here forever