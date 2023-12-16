.data
 vect: .word 0, 0, 0, 0, 0 
 msg: .asciiz"Enter 5 integer numbers: " 
.text
.globl main
.ent main
main:
# 1\ prgrm y5lina nd5lu 5 entier type word w yafichihum

 la $t0, vect # load address of vect in $t0
 li $t1,1 # counter

 la $a0,msg
 li $v0,4
# ndiru boucle bch nd5lu number + counter yhbes fi 5
 debut:
  li $v0,5 # read
  syscall
sw $v0, ($t0) # store word in $v0
add $t0, $t0, 4  # adding 4 to move to the next number
add $t1, $t1, 1 # conter++
bgt $t1,5, suite # if conter>5: go to "suite"
j debut # else: jump to "debut"
suite:
# \n :
    li $a0,10
    li $v0,11
   syscall
la $t0, vect
li $t1,1 # counter

 debut2:
 lw $t2,($t0)
 move $a0,$t2
 li $v0,1 # afficher entier
 syscall
  add $t0, $t0, 4 # move to the next number
  add $t1, $t1, 1 # counter++
 bgt $t1,5, suite2 # if counter>5: go to "suite2"
 j debut2 # else: jump to "debut2"

 suite2:
li $v0,10
syscall
.end main

 # \n
    li $a0,10
    li $v0,11
    syscall