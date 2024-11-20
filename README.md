# robosys2024
授業用
授業内で使用したコードの保存をおこなう。

## plusコマンド
[![test](https://github.com/ookami-koki/robosys2024/actions/workflows/test.yml/badge.svg)](https://github.com/ookami-koki/robosys2024/actions/workflows/test.yml)

入力された数字を足し算して表示する。

### 使用方法

```
$ seq 5 ./plus
15
```

上記のようにseqコマンドで出力した数列を計算可能

```
$ ./plus numbers
15
```

上記のように数列の含まれるファイルの計算も可能
ただし、読み込ませるファイルの中身は数字ごとに改行する必要がある。(ex:numbersを参照)

```
$ cat yoko_numbers | tr ' ' '\n' | ./plus
15
```

上記のようにパイプでコマンド連携をすれば横並びの数列も計算可能
ただし、数字ごとに空白が必要(ex:1 2 3 4 5)


## ksコマンド
[![test](https://github.com/ookami-koki/robosys2024/actions/workflows/test.yml/badge.svg)](https://github.com/ookami-koki/robosys2024/actions/workflows/test.yml)

lsと間違えてksと打ったときにターミナルに怒ってもらう。
いろいろなバリエーションで怒ってくれる。

### 使用方法

```
$ PATH=$PATH:<今いるディレクトリ名>/ks
```

でpathを通す。これをしないとksを間違えて打っても怒ってくれない。
シェルを終了するとPATHに追加した文字列(今回は　$PATH:<今いるディレクトリ名>/ks)は消える。

#### モードチェンジ

以下のようにks <モード>を入力するとモードが変わる。
モードを変えてしまえば、以降はks(./ks)のみを入力すれば変更後のモードで実行される。
モードチェンジ先の指定をまちがえても(mgskとか)､ksとして実行される｡

##### ks nomal

デフォルトのモード、モードチェンジしないとこれが実行される。普通に怒られる。

##### ks msgk

煽りの定番、メスガキに煽られるモード｡　作者の趣味ではありません

##### ks predi

ksとうち間違えてもlsを実行してくれるモード。

## 必要なソフトウェア
-Python
 -テスト済みバージョン: 3.7~3.11

## テスト環境
- Ubuntu 24.04LTS

## ライセンス事項
- このソフトウェアパッケージは，3条項BSDライセンスの下，再頒布および使用が許可されます．
- このパッケージのコードは，下記のスライド（CC-BY-SA 4.0 by Ryuichi Ueda）のものを，本人の許可を得て自身の著作としたものです.
    - (https://ryuichiueda.github.io/slides_marp/robosys2024/lesson3.html)
    - (https://ryuichiueda.github.io/slides_marp/robosys2024/lesson2.html)

- © 2024 Koki Iwai
