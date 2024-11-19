#!/bin/bash 
# SPDX-FileCopyrightText: 2024 Koki Iwai
# SPDX-License-Identifier: BSD-3-Clause

ng () {
	echo ${1}行目がおかしいよ
	res=1
}

res=0

### STRANGE INPUT ###
out=$(echo ア | ./plus)
[ "$?" = 1 ] || ng "$LINENO"
[ "${out}" = "" ] || ng "$LINENO"

### SPACE INPUT ###
out=$(echo | ./plus)
[ "$?" = 1 ] || ng "$LINENO"
[ "${out}" = "" ] || ng "$LINENO"

out=$(seq 5 | ./plus)
[ "${out}" = 15 ] || ng "$LINENO"

[ "${res}" = 0 ] && echo OK
exit "$res"
