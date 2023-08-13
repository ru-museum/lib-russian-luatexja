# lib-russian-luatexja
Library for Russian Typesetting on **LuaTeX-ja**. 

# 概要
これは、日本語文書組版パッケージ **LuaTeX-ja** での環境 ( **ltjsclasses** ) における**ロシア語プロポーショナル表記用ライブラリイ**です。  

従来 LaTeX 環境 での多言語表示には Babel が使用されて来ましたが、LuaLaTeX では廃され fontspec 或いは luatexja-preset(最近には polyglossia) が使われています。

しかし、基本を和文フォントとする LuaTeX-ja 環境では、ロシア文字は和文フォントに割り振られている為に和文字扱いとされプロポーショナル表記とはならず**等幅表示**となってしまいます。又、単語のハイフネーションや禁則処理にも乱れを生じ**和露混在文**を実現するには若干難があります。  

ここではそうしたプロポーショナル表記及びハイフネーション処理なども問題なく和露混在文の編集を自由に行うことが出来ます。

- Babel 及び Polyglossia は使用していません。  
但し別の実際例として、Babel( article ) 及び polyglossia( ltjsarticle ) を用いた template を予定しています。
- 同じ条件である**ギリシャ語**用のライブラリイ **lib-greek-luatexja** も同梱しています（参照：**greek-typesetting--luatexja** ）。
- DebianでのLuaLaTeXの使用方法はこちらで解説しています。[LuaLaTeX with Debian: 環境構築と作業手順](https://github.com/ru-museum/lib-russian-luatexja/blob/main/lualatex-with-debian.pdf)（lualatex-with-debian.pdf）

# 環境構築
ここでは GNU/Linux Debian(sid) での使用例です。
- texlive-base v. ２０２２.２０２３０１２２-３（2023）
- texlive-luatex
- texlive-lang-cyrillic（babel-russian やフォント類）
- texlive-lang-greek（babel-greek やフォント類） % ギリシア語の場合

# 使用方法

## 1. ライブラリイの読込
```
\documentclass[a4paper,10pt]{ltjsarticle}
\usepackage[deluxe]{luatexja-preset} % 必須
\usepackage{../lib/lib-russian-luatexja}
% \usepackage{../lib/lib-greek-luatexja} % ギリシア語の場合
```
- ギリシャ語用を共に読込めば、和文と露文そしてギリシャ語の混在文が可能です。
## 2. ロシア語資料の作成
#### 詳細は以下に詳しく解説しています。
[Template of Russian Typesetting on LuaTeX-ja: ロシア語資料の作成](https://github.com/ru-museum/lib-russian-luatexja/blob/main/russian-typesetting-luatexja.pdf)（russian-typesetting-luatexja.pdf）

## 3. ギリシア語資料の作成
#### 詳細は以下に詳しく解説しています。
[Template of Greek Typesetting on LuaTeX-ja: ギリシア語資料の作成](https://github.com/ru-museum/lib-russian-luatexja/blob/main/greek-typesetting-luatexja.pdf)（greek-typesetting-luatexja.pdf）

# TODO
- Babel 及び Polyglossia 版の追加。
 
