#!/bin/bash 

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
