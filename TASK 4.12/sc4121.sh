#!/bin/bash
HM="/home/"
SH="/bin/bash"

[ $# -eq 0 ] && { echo >&2 ERROR: You must provide a text file containing users, one per line. ; exit 1; }
[ -f "$1" ] || { echo >&2 ERROR: The input file does not exist. ; exit 1; }
TMPINPUT=$(mktemp)
sed '/^$/d' "$1"| sort -g | uniq > "$TMPINPUT"

NOW=$(date +"%Y-%m-%d-%X")
LOGFILE="LOG-$NOW.log"

for user in $(more "$TMPINPUT"); do
	cut -d: -f1 /etc/passwd | grep "$user" > /dev/null
	OUT=$?
	if [ $OUT -eq 0 ];then
		echo >&2 "ERROR: User account: \"$user\" already exists."
		echo >&2 "ERROR: User account: \"$user\" already exists." >> "$LOGFILE"
	else
		/usr/sbin/useradd -d "$HM""$user" -s "$SH" -m "$user"
		pass=$(openssl rand -base64 16)
		echo "$user:$pass" | chpasswd
		echo -e $user"\t"$pass > $user-login-password.txt
		echo "The user \"$user\" has been created and has the password: $pass"
	fi
done
rm -f "$TMPINPUT"
exit 0