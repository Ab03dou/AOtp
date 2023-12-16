.data
vect: .word 1, 2, 3
.text
.globl main
.ent main
main:
la $t0, vect
lw $t1, ($t0)
add $t0, $t0, 4 
lw $t2, ($t0) 
add $t0, $t0, 4
lw $t3, ($t0)

# add vect kml
add $t4,$t1, $t2
add $t4,$t4, $t3
# Afficher somme
move $a0, $t4
li $v0, 1
syscall
li $v0, 10
syscall
.end main