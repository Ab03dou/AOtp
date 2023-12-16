.data
save: .space 1 #pour sauvegarder le caractere saisi
msg: .asciiz"Entrer un caractère en miniscule :  "
msg1: .asciiz"Ce caractère en majiscule est:  "

.text
.globl main
.ent main
main:

# debut: boucle de lire le caractere(lire + test code>=97)
debut:
la $a0,msg
li $v0,4
syscall
li $a0, 0x0a
li $v0, 11
syscall
li $v0, 12
syscall
bge $v0, 97, suiteIF # hna ida t7a9e9 condition nrohu boucle"suiteIF" 
j debut
# suiteIF:
suiteIF:
ble $v0, 122, suite
j debut
suite:
# sauvegarder le caractere
sb $v0, save
# \n
li $a0, 0x0a 
li $v0, 11
syscall
#  transformer en majiscule en t0
lb $t0, save
sub $t0, $t0, 32
# Affichage du caractere
la $a0,msg1
li $v0,4
syscall
move $a0, $t0
li $v0, 11
syscall
li $v0, 10
syscall
.end main