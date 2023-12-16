.data
puiss: .word 0
msg: .asciiz"Entrer un nombre strictement inferieur a '9':  "
msg1: .asciiz"Resultat:  "

.text
.globl main
.ent main
main:

# debut: lecture de x + condition(x<9)
debut:
# message
la $a0,msg
li $v0,4
syscall
# lecture
li $v0, 5
syscall
# condition 
blt $v0,9, suite
j debut
# suite: 
suite:
# $t0 fiha compteur
li $t0, 0 
# $t1 pour resultat de puissance
li $t1, 1 
# debut2: (comteur=compteur+1)et(multiplication)
debut2:
add $t0, $t0, 1
mul $t1, $v0, $t1
beq $t0, 10, suite2
j debut2
suite2:
# la variable puiss pour le resultat du calcul
sw $t1, puiss 
# \n
li $a0, 10
li $v0, 11
syscall

# message
la $a0,msg1
li $v0,4
syscall
# Affichage de resultat
lw $a0, puiss
li $v0, 1

syscall
li $v0, 10
syscall
.end main