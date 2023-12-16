.data

.text
.globl main
.ent main
main:

li $v0,10
syscall
.end main

 # \n
    li $a0,10
    li $v0,11
    syscall