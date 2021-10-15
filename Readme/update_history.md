## 更新
Update history
#### 2021.10.16
Makefile 參數拆分 <br>
調整 referene 套件使用 <br>

#### 2021.10.14
修正 /usepackage 重複設定部分<br>
修正快捷鍵編譯 error 時，停不下來的 issues <br>
Reference 拆出 Book 文獻獨立 bib 檔

#### 2021.10.08
新增條列式範例 <br>
STUST-MS-Thesis.cls 與 Template.tex 減少重複設定

#### 2021.10.01
解 reference Underfull \hbox (badness 2205) 警告 <br>
解 Small Caps 警告

#### 2021.09.27
新增 MIT License <br>
變更/修正 Tex 檔內容，簡介此樣板專案。<br>
新增文字效果、註腳範例<br>
待更新使用指南

#### 2020.08.09
修正目錄連結跑到前一頁問題 <br>
新增頁面橫向表格範例。<br>
新增表格、公式、插圖範例

#### 2020.08.08
修正目錄頁碼顯示錯誤問題 <br>
如果目錄多過一頁，在目錄頁中會顯示第二頁目錄的頁碼

#### 2020.03.21
修正圖片標號 warning font shape 問題 <br>
新增插入 C code 範例

#### 2020.03.19 Beta
修正封面共同指導教授 Error <br>
參照學校範例浮水印位置調整 <br>
新增文字樣式及表格範例 <br>
新增圖片並排範例 <br>
加入 makefile 判斷 build 目錄中檔案是否清除完畢 <br>
論文架構 應為國字 **第一章** (未修正) <br>
**Issues** `Warning Font shape 'TU/ukai(0)/m/sc' undefined`

#### 2020.03.18 Beta
新增 makefile 命令清除 pdf 以外檔案<br>
修正 03.17 更新浮水印過大<br>
圖標 warning 屬字體問題，仍在解決中

#### 2020.03.17 Master
加入圖標號之後出現 warning 但不影響編譯<br>
更改目錄結構將 main.tex 放置 main 目錄底下 <br>
全專案相依路徑微調 <br>
修改 makefile 檔案可以在專案目錄直接 make main 目錄底下的 tex 檔 

#### 2020.03.16 Beta
將 makefile 加入 settings.json <br>
➥ windows 無內建 make 功能先把 default 更換回會 build 目錄的 command <br>
新增圖目錄範例之後有字體 warning <br>
更換浮水印套件 background <br>
摘要版型微調

#### 2020.03.15 Beta
更換浮水印套件為 tikz <br>
新增 Settings.json 刪除產出檔案 <br>
新增繪圖套件 pgfplots <br>
浮水印尺寸調整

#### 2020.03.14 Master
修改 Settings.json 變數名稱<br>
將 /draft(false) 完稿標示移至 main 檔<br>
清除重複 package (ifthen)
