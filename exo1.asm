.text
.globl main
.ent main
main:
# code ta3 A nhotoh fi t0
li $t0, 65 
debut_boucle :
# affichage
move $a0, $t0
li $v0, 11
syscall
# passer au lettre suivant
add $t0, $t0, 1 
# test de boucle
bgt $t0, 90, sortir_boucle 
b debut_boucle

sortir_boucle :
li $v0, 10
syscall
.end main