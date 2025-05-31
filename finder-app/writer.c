#include <stdio.h>
#include <string.h>
#include <errno.h>
#include <syslog.h>

int main(int argc, char* argv[]) {
    openlog(NULL, 0, LOG_USER);

    if (argc < 3) {
        syslog(LOG_ERR, "Invalid number of arguments: %d", argc);
        return 1;
    }

    FILE *fp = fopen(argv[1], "w+");
    if (fp == NULL) {
        syslog(LOG_ERR, "Error when openning a file: %s", strerror(errno));
        return 1;
    }

    syslog(LOG_DEBUG, "Writing %s to %s\n", argv[2], argv[1]);
    int numCharWrite = fprintf(fp, "%s", argv[2]);
    if (numCharWrite < 0 || numCharWrite < strlen(argv[2])) {
        syslog(LOG_ERR, "Error when writing to a file");
        return 1;
    }
    fclose(fp);
    return 0;
}