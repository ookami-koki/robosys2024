#!/bin/bash

ng () {
	echo ${1}行目がおかしいよ
	res=1
}

res=0
a=岩井
[ "$a" = 石井 ] || ng "$LINENO" //Line No.行番号
[ "$a" = 岩井 ] || ng "$LINENO"

exit "$res"
