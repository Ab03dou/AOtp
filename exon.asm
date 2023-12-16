
.data
var: .asciiz"a"

.text
.globl main
.ent main
main:

la $a0,var
li $v0,4
syscall

li $v0,10
syscall
.end main