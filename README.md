# lib-russian-luatexja
Library for Russian Typesetting on **LuaTeX-ja**. 

# 概要
これは、日本語文書組版パッケージ **LuaTeX-ja** での環境 ( **ltjsarticle** 等) における**ロシア語プロポーショナル表記用ライブラリイ**です。  

従来 LATEX 環境 での多言語表示には Babel が使用されて来ましたが、LuaLATEX では廃され fontspec 或いは luatexja-preset(最近には polyglossia) が使われています。しかし、**和露混在文**をスムースに実現するものではありませんでした。  

基本を和文フォントとする **LuaTeX-ja** 環境では、ロシア文字は和文フォントに割り振られている為に「等幅」表示されることから、  
プロポーショナル表記をする為には設定が必要であり、単語のハイフネーションや禁則処理に乱れを生じてしまいます。  

ここでは和文と露文との混在文をコマンド指定を用いることなく実現しています（個々のフォント指定は除く）。
ハイフネーション（実例参照）なども問題なく処理が行われます。

# 環境構築
ここでは GNU/Linux Debian(sid) での使用例です。
- texlive-base v. ２０２２.２０２３０１２２-３
- texlive-luatex
- texlive-lang-cyrillic（必要がある場合）babel-russian
- Babel 及び Polyglossia は使用していませんが、各々の  template を用意してあります。

# 使用方法

## 1. ライブラリイの読込
```
\documentclass[a5,10pt]{ltjsarticle}
\usepackage{lib-russian-luatexja}
```
- 使用するパッケージ **luatexja-fontspec** は同時に読み込まれています。

## 2. lib-russian-luatexja




### ロシア語資料の作成の詳細は以下に詳しく解説しています。
[LuaLATEX におけるロシア語資料の作成](https://github.com/ru-museum/isbn-barcode-ja-latex/blob/main/latex-with-debian.pdf)lualatex-russian-typesetting.pdf
