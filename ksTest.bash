#!/bin/bash 
# SPDX-FileCopyrightText: 2024 Koki Iwai
# SPDX-License-Identifier: BSD-3-Clause

ng () {
	echo ${1}行目がちがうよ
	res=1
}

res=0

### 通常入力 ###
./ks nomal > /dev/null
out=$(cat mode)
[ 1 = "${out}" ] || ng "$LINEO"

./ks msgk > /dev/null
out=$(cat mode)
[ 2 = "${out}" ] || ng "$LINEO"

./ks predi > /dev/null
out=$(cat mode)
[ 3 = "${out}" ] || ng "$LINEO"

out=$(./ks)
[ "${out}" = '' ] && ng "$LINENO"

[ "${res}" = 0 ] && echo OK
exit $res
