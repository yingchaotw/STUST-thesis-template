<span style="background-color: #DEFFFF"><font Size="5">   [**STUST-THESIS-TAMPLATE Wiki**](https://github.com/yingchao-chen/STUST-thesis-template/wiki)</font></span>

[![](Figures/Logos/stustlargelogo.png "研究生學位考試專區")](https://academic.stust.edu.tw/tc/node/DegreeExam)

# 南臺科技大學 LaTeX 論文版型

- 南臺科技大學 (南台科技大學)
- Southern Taiwan University of Science of Technology

## 前言
[Latex 筆記 - Hackmd](https://hackmd.io/@YingChao/LaTeX/)

<span style="background-color: #FFFF99">目前只有 `Windows`及`Linux` 系統經測試成功。</span>

如果您發現這個板型有問題，請提交 Issues。
也非常歡迎您提交 PR 協助修正問題。
若有期望加入其他功能改善論文撰寫環境，也歡迎提交 Issus 許願！ 

## 說明
依照[南臺科技大學學位論文格式規範](https://academic.stust.edu.tw/tc/node/DegreeExam)之內容，
論文裝訂之內容及順序應依下列順序辦理：
- [X] 1. 封面
- [ ] 2. 博碩士論文延後公開申請書（視需要）
- [X] 3. 空白頁（封面與書名頁間加一空白頁）
- [X] 4. 書名頁
- [ ] 5. 論文口試委員審定書
- [X] 6. 摘要（中文及英文)
- [X] 7. 誌謝（視需要）
- [X] 8. 目次
- [X] 9. 表目錄
- [X] 10. 圖目錄
- [X] 11. 論文主體
- [X] 12. 參考文獻
- [ ] 13. 附錄及符號(公式)彙編（視需要）
- [X] 14. 作者簡介（視需要）

未勾選部分的第二項及第五項為論文提交時，學校才會提供文檔，屆時再自行匯入論文中合併。
### 檔案結構
* ***build*** : 編譯結果 *.pdf*
* ***Chapters*** : 論文章節本體
* ***Configurations*** : 設定檔案含版型
* ***Exteranls*** : 外部匯入的PDF檔案
* ***Figures*** : 文中的所有圖片
* ***fonts*** : 本專案使用到的字體檔
* ***Instance*** : 封面/書名頁/封面/摘要/誌謝/目錄/書脊
* ***main*** : 主要文件 main.tex
* ***Packages*** : 套件
* ***Readme*** : 專案說明相關文件
* ***References*** : 參考文獻 bib 檔案

### 快捷鍵
|功能|按鍵|
|----|----|
|編譯 TEX|`Ctrl`+`Alt`+`B`|
|預覽 PDF|`Ctrl`+`Alt`+`V`|
|清除 OUTPUT 檔案|`Ctrl`+`Alt`+`C`|

### 命令
|命令|功能描述|
|----|----|
|`make all`|編譯 LaTeX 專案|
|`make clean`| 清除 build 目錄<br>清除內容包含 PDF 檔案|
|`make staypdf`| build 目錄下清除  PDF 以外檔案|

