
.data

array: .word 1, 0, 1, 12, 0, 1, 4

.text

    la a0, array	#address of array
    li a1, 7    # unsigned	||	number of array elements
    li a2, 1	#Tghe number to find
prog:
#-----------------------------

    add so,zero,zero

loop_1st:
    
    beq a1,zero,done
    lw t1,0(a0)
    bne t1,a2,next1
    add so,ao,zero
    
next1:

    addi a0, a0, 4
    addi a1, a1, -1
    j    loop_1st


# Write your code here!
# Do not remove the prog label or write code above it!
#-----------------------------
done:
    addi a7, zero, 10 
    ecall
