# 
#    Olumide Ojo
#
#

.section  .data

code:   

          .string  "/bin/sh"


.section   .text

.globl   _start

_start:
 
    pushl  $0              # push NULL to stack
    pushl  code            # push shell command onto stack
    movl   $59,  %eax      # move execve call # to %eax
    movl   %esp, %edi      # load pointer to shellcode into edi for execve
    movl   $0,   %esi      # Store NULL in esi
    movl   $0    %ebx      # Store NULL in ebx
    syscall

   movl $1, %eax            #1 is the exit() syscall
    int  $0x60


    
