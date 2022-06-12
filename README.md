<span style="background-color: #DEFFFF"><font Size="5">   [**STUST-THESIS-TAMPLATE Wiki**](https://github.com/yingchao-chen/STUST-thesis-template/wiki)</font></span>

[![](Figures/Logos/stustlargelogo.png "研究生學位考試專區")](https://academic.stust.edu.tw/tc/node/DegreeExam)

# 南臺科技大學 LaTeX 論文版型

- 南臺科技大學 (南台科技大學)
- Southern Taiwan University of Science of Technology

## 前言
<!-- [Latex 筆記 - Hackmd](https://hackmd.io/@YingChao/LaTeX/) -->

更多內容請見[編譯結果](./build/main.pdf)與內文。

如果您發現這個板型有問題，請提交 Issues，也非常歡迎您提交 PR 協助修正問題。
若有期望加入其他功能改善論文撰寫環境，也歡迎提交 Issus 許願！ 

歡迎各位先進、學長姊、學弟妹 Fork 本 Repo
### 說明
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

### 目錄結構
* ***build*** : 編譯器產生出來的檔案
* ***Chapters*** : 論文章節本體
* ***Configurations*** : 設定檔案含版型
* ***Customization*** : 論文相關自定義檔
* ***Docker*** : Docker Script
* ***Exteranls*** : 外部匯入的PDF檔案
* ***Figures*** : 文中的所有圖片
* ***fonts*** : 本專案使用到的字體檔
* ***Instance*** : 封面/書名頁/摘要/誌謝/目錄/書脊
* ***main*** : 主要文件 main.tex
* ***Packages*** : 套件
* ***References*** : 參考文獻 bib 檔案

### 專案相關資訊
- [備註:自行補檔](./Externals/note.md)

## 開始使用本模版
### [Visual Studio Code](https://code.visualstudio.com/)
>   極度推薦，非必要。
>   おすすめです

Visual Studio Code ，由 Microsoft 釋出的開源開發工具，可提供 SSH 遠端連線與 WSL 開發的功能，提供研究生可以連接上遠端進行論文撰寫的工作。
下面是我們撰寫論文時經常使用的模組。

- **LaTeX Workshop**，LaTeX 支援工具，提供編譯、預覽等功能的支援。
- **LaTeX language support**，LaTeX 語法支援工具，提供語法高亮。
- **vscode-pdf**，PDF 預覽工具。
- **Remote Development**，遠端開發工具包，安裝此套件將會自動安裝 SSH、WSL 等套件。
- **Live Share**，遠端協作工具，提供他人透過 VSCode 提供協助，內含同時編輯文件、操作終端機等功能。

```
### debian / ubuntu
$ sudo dpkg -i vscode.deb
```

#### 快捷鍵
|功能|按鍵|
|----|----|
|編譯 TEX|`Ctrl`+`Alt`+`B`|
|預覽 PDF|`Ctrl`+`Alt`+`V`|
|清除 OUTPUT 檔案|`Ctrl`+`Alt`+`C`|



### [Make](https://www.gnu.org/software/make/)
>   選擇 Docker 方案的使用者，不須安裝此工具。

GNU 提供的工具，下列為安裝指令。
```
### debian / ubuntu
$ sudo apt install make
```
#### 命令
|命令|功能描述|
|----|----|
|`make all`|編譯論文 PDF|
|`make clean`| 清除 build 目錄<br>包含編譯產生的 PDF 檔案|
|`make staypdf`| 不清除 PDF 檔案|
|`make compress`| 使用 gostscript 套件壓縮 PDF 檔案容量|


### [Texlive](https://tug.org/texlive/)
>   選擇 Docker 方案的使用者，不須安裝此工具。

LeTeX 文件編譯工具。
以下從台灣國立海洋科大鏡像站下載 texlive 最新檔案，及安裝方式
```
### debian / ubuntu
$ wget https://ftp.ntou.edu.tw/ctan/systems/texlive/Images/texlive.iso .
$ mkdir ~/texlive_ISO
$ cd ~/texlive_ISO
$ sudo sh ./install.sh
```

### [Docker](https://www.docker.com/)
>   如已有 xelatex 編譯環境的使用者，不須安裝此工具。

適用於不想建立環境的用戶，安裝文件請見[官方文件](https://docs.docker.com/engine/install/)。
使用的 image [texlive/texlive](https://hub.docker.com/r/texlive/texlive/)

```
### debian / ubuntu
$ docker pull texlive/texlive
$ git clone https://github.com/tw1chao/STUST-thesis-template.git
$ sh STUST-thesis-template/Docker/linux/build.sh
$ sh STUST-thesis-template/Docker/linux/start.sh
```

### [Git](http://git-scm.com/)
>   極度推薦，非必要。

有無安裝 Git 並不影響您使用此模板，但極度推薦安裝這個工具。Git 是當前最主流的版本控制軟體，可以提供版本控制的功能，讓您能紀錄您再哪個時候修改了什麼，也能利用免費的遠端儲存庫(GitHub、GitLab、bitbucket)製作多個異地備份，保障您論文的安全。

Linux 發行版可透過套件管理工具快速安裝。

```
### debian / ubuntu
$ sudo apt install git-core
```
### [gostscript](https://www.ghostscript.com/)
>   建議安裝，非必要。

為替 xelatex 編譯後所產生 PDF 檔案瘦身（降低檔案容量），能夠附於 Email 附件。

```
### debian / ubuntu
$ sudo apt install gostscript
```
