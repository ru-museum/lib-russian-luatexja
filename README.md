# lib-russian-luatexja
Libraly for Typesetting Russian on **LuaTeX-ja**. 

# 概要
これは、日本語文書組版パッケージ LuaTeX-ja での環境 (ltj-) におけるロシア語プロポーショナル表記用ライブラリイです。  
従来 LATEX 環境 での多言語表示には Babel が使用されて来ましたが、LuaLATEX では廃され fontspec 或いは luatexja-preset(最
近には polyglossia) が使われています。

基本を和文フォントとする **LuaTeX-ja** 環境では、ロシア文字は和文フォントに割り振られている為に「等幅」表示されます。  
プロポーショナル表記をする為には設定が必要ですが、単語のハイフネーションや禁則処理に乱れを生じてしまいます。  

従来、多言語混在文には Babel 及び Polyglossia が使用されていますが、和文と露文との混在文をスムースに実現するものではありませんでした。  

ここでは和文と露文との混在文をコマンド指定を用いることなく実現しています（呱々のフォント指定は除く）。
ハイフネーション（実例参照）なども問題なく処理が行われます。

# 環境構築
- ここでは GNU/Linux Debian(sid) での使用例です。
- texlive-base v. ２０２２.２０２３０１２２-３(sid)
- texlive-luatex
- texlive-lang-cyrillic（必要がある場合）
- Babel 及び Polyglossia は使用しません。


# 使用方法

## 1. ライブラリイの読込
```
\usepackage{lib-russian-luatexja}
```
- 使用するパッケージ **luatexja-fontspec** は同時に読み込まれています。

## 2. lib-russian-luatexja




### ロシア語資料の作成の詳細は以下に詳しく解説しています。
[LuaLATEX におけるロシア語資料の作成](https://github.com/ru-museum/isbn-barcode-ja-latex/blob/main/latex-with-debian.pdf)lualatex-russian-typesetting.pdf
