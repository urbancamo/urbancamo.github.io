! N-Queens Problem Solver in VAX BASIC
! This program finds all solutions to the N-Queens problem
! where N queens must be placed on an NxN chessboard
! such that no two queens attack each other

DECLARE INTEGER QUEEN(20)
DECLARE INTEGER SOLUTIONS, N, ROW, COL, I, SAFE, R, C

PRINT "N-Queens Problem Solver"
PRINT "========================"
PRINT

input_loop:
INPUT "Enter board size (N): "; N
IF N < 1 OR N > 20 THEN
    PRINT "N must be between 1 and 20"
    GOTO input_loop
END IF

PRINT
SOLUTIONS = 0

! Initialize the board
FOR ROW = 1 TO N
    QUEEN(ROW) = 0
NEXT ROW

! Start solving from row 1
GOSUB solve_nqueens

PRINT
PRINT "Total solutions found: "; SOLUTIONS
GOTO finished

solve_nqueens:
! Backtracking algorithm to place queens
FOR ROW = 1 TO N
    FOR COL = 1 TO N
        ! Check if queen can be placed at (ROW, COL)
        SAFE = 1
        FOR I = 1 TO ROW - 1
            ! Check column conflict
            IF QUEEN(I) = COL THEN
                SAFE = 0
                GOTO check_done
            END IF
            ! Check diagonal conflicts
            IF ABS(QUEEN(I) - COL) = ABS(I - ROW) THEN
                SAFE = 0
                GOTO check_done
            END IF
        NEXT I

        check_done:
        IF SAFE = 1 THEN
            QUEEN(ROW) = COL
            IF ROW = N THEN
                ! Found a solution
                SOLUTIONS = SOLUTIONS + 1
                PRINT "Solution "; SOLUTIONS; ":"
                GOSUB print_solution
            END IF
        END IF
    NEXT COL
    QUEEN(ROW) = 0
NEXT ROW
RETURN

print_solution:
! Print current solution
FOR R = 1 TO N
    FOR C = 1 TO N
        IF QUEEN(R) = C THEN
            PRINT "Q ";
        ELSE
            PRINT ". ";
        END IF
    NEXT C
    PRINT
NEXT R
PRINT
RETURN

finished:
END
