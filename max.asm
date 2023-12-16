.data
msg: .asciiz"Entrer var1 :  "
msg1: .asciiz"Entrer var2 :  "
msg2: .asciiz"var1 is greater than var2  "
msg3: .asciiz"var2 is greater than var2  "

 var1: .word 0
 var2: .word 0

.text
.globl main
.ent main
main:

# affiichage variable"msg" 
la $a0,msg
li $v0,4
syscall
# etrer le nombre dans registre v0
li $v0,5
syscall
# n5abiw number fi "var1"
move $t0,$v0
# \n
li $a0,10
 li $v0,11
 syscall
# affichage variable"msg1"
la $a0,msg1
li $v0,4
syscall
# entrer le nombre dans registre v0
li $v0,5
syscall
# n5abiw number fi "var2"
move $t1,$v0
syscall
bgt $t0, $t1, etiq1
bgt $t1, $t0, etiq2
# etiq1
etiq1:
la $a0,msg2
li $v0,4
# etiq2
etiq2:
la $a0,msg3
li $v0,4
syscall
li $v0,10
syscall
.end main