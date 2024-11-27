#!/bin/bash 
# SPDX-FileCopyrightText: 2024 Koki Iwai
# SPDX-License-Identifier: BSD-3-Clause

ng () {
	echo ${1}行目がおかしいよ
	res=1
}

res=0

### 普通に入力 ###
#### 素数じゃない ####
out=$(echo 12 | ./prifact)
[ "${out}" = "[2, 2, 3]" ] || ng "$LINENO"

#### 素数 ####
out=$(echo 13 | ./prifact)
[ "${out}" = "[13]" ] || ng "$LINENO"


### 異常入力 ###
out=$(echo あ | ./prifact)
[ "$?" = 1 ] || ng "$LINENO"
[ "${out}" = "" ] || ng "$LINENO"

out=$(echo | ./prifact)
[ "$?" = 1 ] || ng "$LINENO"
[ "${out}" = "" ] || ng "$LINENO"

out=$(echo 1.2 | ./prifact)
[ "$?" = 1 ] || ng "$LINRNO"
[ "${out}" = "" ] || ng "$LINENO"

out=$(echo 0 | ./prifact)
[ "${out}"  = "[]" ] || ng "$LINENO"

[ "${res}" = 0 ] && echo OK
exit "$res"

