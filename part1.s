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
 
xorl %eax,%eax

pushl %eax  

movl %esp,%ebx

pushl %eax
 
pushl %ebx 

movl   $59,  %eax

movl %esp,%ecx 

movb $0x0b,%al

 int $0x60 
