#!/bin/bash 
# SPDX-FileCopyrightText: 2024 Koki Iwai
# SPDX-License-Identifier: BSD-3-Clause

ng () {
	echo ${1}行目がちがうよ
	res=1
}

res=0

### 出力なし ###
out=$(./ks)
[ "${out}" = '' ] && ng "$LINENO"

[ "${res}" = 0 ] && echo OK
exit $res
