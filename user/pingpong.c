#include "kernel/types.h"

#include "user/user.h"

int main(int argc, char *argv[]) {
  int p[2];
  pipe(p);

  int d0 = dup(p[0]);

  char buf[64];
  int pid = fork();
  if (pid == 0) {
    // childp
    if (read(p[0], buf, sizeof(buf)) > 0) {
      close(p[0]);
      fprintf(1, "%d: received ping\n", pid);
      write(p[1], "pong", 5);
    }

    close(p[1]);
    exit(0);
  } else {
    close(p[0]);
    write(p[1], "ping", 5);
    if (read(d0, buf, sizeof(buf)) > 0) {
      close(d0);
      fprintf(1, "%d: received pong\n", pid);
    }
    wait(0);
    close(p[1]);
    exit(0);
  }
}
