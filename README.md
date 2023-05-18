# 二つのディレクトリの差分がある部分だけ抽出する方法

## overview

二つのディレクトリ間で差分があるファイルだけツリーを維持したまま抽出したかった。  
これをWindowsで実現する場合に、簡単で正確で速い方法を探した。

## robocopyを使う

robocopyはWindowsのファイルコピーや同期を行うのに適したコマンドだが、これを使って抽出する。

発想としては以下の通り。

* フォルダAのコピーフォルダA'を作る
* フォルダBのコピーフォルダB'を作る
* フォルダA'とフォルダB'で差分がないものをフォルダB'に移動させる。
* 結果、フォルダA'には差分があるもののみとなる。

### 使い方

`diff-copy.bat` を実行する。

newフォルダ内に残ったファイル（およびフォルダ）が差分が発生したもののみとなる。
