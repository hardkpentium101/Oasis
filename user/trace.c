#include "kernel/param.h"
#include "kernel/types.h"

#include "user/user.h"

char *trace_call(int mask, int arg_cnt, char *cmd_args[]) { return "sdf"; }

int main(int argc, char *argv[]) {

  int mask = atoi(argv[1]);

  if (trace(mask) == 0) {
    exec(argv[2], argv + 2);
  }

  exit(0);
}
