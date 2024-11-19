#!/usr/bin/python3
# SPDX-FileCopyrightText: 2024 Koki Iwai
# SPDX-License-Identifier: BSD-3-Clause

import random
import sys
import subprocess
import os

chMode = 0
rand = random.randint(0, 4)

if(len(sys.argv) > 1):
    getMode = sys.argv[1]
    if(getMode == 'nomal'):
        chMode = 1
    if(getMode == 'msgk'):
        chMode = 2
    if(getMode == 'predi'):
        chMode = 3

if(chMode >= 1):
    with open('mode','w') as f:
        f.write(str(chMode))

if(os.path.isfile('mode')):
    with open('mode', 'r') as f:
        mode =int ( ( f.read() ))


if(mode == 1):
    if(rand == 0):
        print("誰がカスじゃ コラ！")
    if(rand == 1):
        print("カスっていったほうがカスだも〜ん")
    if(rand == 2):
        print("お前円周率1億桁計算できんのかよ")
    if(rand == 3):
        print("KA m9(^Д^) SU")
    if(rand == 4):
        print("多分ksじゃなくてlsじゃない？")

if(mode == 2):
    if(rand == 0):
        print("lsもまともに打てないの〜？♡")
    if(rand == 1):
        print("ざぁこざぁこ♡")
    if(rand == 2):
        print("よ〜わっ♡")
    if(rand == 3):
        print("知識ぺらぺら〜､おにいさんって本当に大学生？")
    if(rand == 4):
        print("まちがえてるよ")

if(mode ==3):
    subprocess.run("ls")
