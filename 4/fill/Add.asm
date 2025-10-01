// Add.asm
// Computes R2 = R0 + R1

    @R0
    D = M        // D = R0
    @R1
    D = D + M    // D = R0 + R1
    @R2
    M = D        // R2 = result

(END)
    @END
    0;JMP        // stop infinite loop 