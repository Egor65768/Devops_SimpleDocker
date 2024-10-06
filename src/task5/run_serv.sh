#!/bin/bash

gcc -Wextra -Werror -Wall miniserver.c -o miniserver -lfcgi
spawn-fcgi -p 8080 ./miniserver
service nginx start
/bin/bash