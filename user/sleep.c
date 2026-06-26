#include "kernel/defs.h"
#include "kernel/proc.h"
#include "kernel/syscall.c"
#include "kernel/types.h"

#include "user/user.h"

extern uint64 sys_sleep();
extern struct proc *myproc();
int sleep(int n) {

  myproc()->trapframe->a0 = n;
  sys_sleep();

  return 0;
}

int main(int argc, char *argv[]) {

  sleep(argv[1]);

  exit(0);
}
