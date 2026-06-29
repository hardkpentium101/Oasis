#include "kernel/param.h"
#include "kernel/types.h"

#include "user/user.h"

int main(int argc, char *argv[]) {

  char ch;
  char buf[512];
  int idx = 0;

  char *cmd_args[MAXARG];

  while (read(0, &ch, 1) > 0) {
    if (ch != '\n') {
      buf[idx++] = ch;
    } else {
      buf[idx] = '\0';
      int arg_cnt = 0;
      for (int i = 1; i < argc; i++) {
        cmd_args[arg_cnt++] = argv[i];
      }

      char *p = buf;
      while (*p) {
        while (*p == ' ' || *p == '\t')
          *p++ = '\0';

        if (*p == '\0')
          break;

        cmd_args[arg_cnt++] = p;

        while (*p != ' ' && *p && *p != '\t')
          p++;
      }

      cmd_args[arg_cnt] = 0;

      if (fork() == 0) {
        exec(cmd_args[0], cmd_args);
        fprintf(2, "%s: exec failed", cmd_args[0]);
        exit(1);
      } else {
        wait(0);
      }

      idx = 0;
    }
  }

  exit(0);
}
