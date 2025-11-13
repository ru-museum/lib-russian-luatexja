#!/bin/sh

### 
# LUALATEX BUILD 処理スクリプト
#  lualatex-build.sh *.tex
## 

FILENAME="$1" # 引数から実行ファイル取得
LUA_CMD="lualatex -shell-escape"

# 生成されるファイル
FILE_PDF="`basename "$FILENAME" .tex`.pdf"
FILE_BCF="`basename "$FILENAME" .tex`.bcf"

# LUALATEX の実行　
if [ -e $1 ]; then

  echo "\n=====" $1 "の処理を開始します：" 
  $LUA_CMD $FILENAME
  echo "処理は正常に終了しました。PDFファイルが開かれます：\n" 

else

  echo "----------------------------------------" 
  echo " ファイル名エラー：[" $1 "]" 
  echo " 　処理に失敗しました。" 
  echo " 　⇒ ファイルが存在するかを確認して下さい。" 
  echo "----------------------------------------\n" 
  return
  
fi

# BIBER .BCF が存在する場合：
if [ -e $FILE_BCF ]; then

   echo "BCF File のコンパイルを開始します ------"
   biber $FILE_BCF
   echo "BCF File のコンパイルを終了しました ------"

   echo "処理を反映させる為、再度のコンパイルを行います ------"
   $LUA_CMD $FILENAME
   echo "処理は反映されました ------"

fi

# PDF の表示をアプリ側で行う場合は、コメントアウトして下さい
if [ -e $FILE_PDF ]; then
   echo "Open PDF $FILE_PDF ...."
   atril $FILE_PDF 
   echo "PDFを開きました。"
fi

exit 0


