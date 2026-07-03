#include "kernel/types.h"
#include "kernel/stat.h"
#include "user/user.h"
#include "kernel/sysinfo.h"

int main(int argc, char* argv[])
{
  struct sysinfo st;
  sysinfo(&st);
  printf("nproc: %d\n freemem: %d\n", st.nproc, st.freemem);
  exit(0);
}
