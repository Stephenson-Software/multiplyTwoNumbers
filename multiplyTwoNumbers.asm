; pre execution we have num1 in R1 and num2 in R2
; return is R0

.ORIG x3000

TESTCODE:
AND R1, R1, #0
AND R2, R2, #0
ADD R1, R1, #5 ; store five in R1
ADD R2, R2, #6 ; store six in R2

MULTIPLY:
AND R0, R0 #0 ; clear R0
AGAIN ADD R0, R0, R1 ; add num1 to R0
ADD R2, R2, #-1 ; decrement R2
BRp AGAIN ; if more to add, jump to again

HALT

.END