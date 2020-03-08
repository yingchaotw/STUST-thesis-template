[![](Figures/Logos/stustlargelogo.png "研究生學位考試專區")](https://academic.stust.edu.tw/tc/node/DegreeExam)

# 南臺科技大學 Latex 論文版型

- 南臺科技大學 (南台科技大學)
- Southern Taiwan University of Science of Technology

[本樣版範例](build/main.pdf)

[Latex 環境建置](https://hackmd.io/@YingChao/LaTeX_Setup)

## 前言
如果您發現這個板型有問題，請提交 Issus，也非常歡迎您提交 PR 協助修正問題。
若有期望加入其他功能改善論文撰寫環境，也歡迎提交 Issus 許願！ 

編譯環境為 `Linux 4.19.0-8-amd64 #1 SMP Debian 4.19.98-1 (2020-01-26) x86_64 GNU/Linux` 

Latex版本為 
```
XeTeX 3.14159265-2.6-0.999991 (TeX Live 2019)
kpathsea version 6.3.1
Copyright 2019 SIL International, Jonathan Kew and Khaled Hosny.
There is NO warranty.  Redistribution of this software is
covered by the terms of both the XeTeX copyright and
the Lesser GNU General Public License.
For more information about these matters, see the file
named COPYING and the XeTeX source.
Primary author of XeTeX: Jonathan Kew.
Compiled with ICU version 63.1; using 63.1
Compiled with zlib version 1.2.11; using 1.2.11
Compiled with FreeType2 version 2.9.1; using 2.9.1
Compiled with Graphite2 version 1.3.13; using 1.3.13
Compiled with HarfBuzz version 2.3.1; using 2.3.1
Compiled with libpng version 1.6.36; using 1.6.36
Compiled with poppler version 0.68.0
Compiled with fontconfig version 2.11.0; using 2.13.1
```

## 說明
依照[南臺科技大學學位論文格式規範](https://academic.stust.edu.tw/tc/node/DegreeExam)之內容，
論文裝訂之內容及順序應依下列順序辦理：
1. 封面
2. 博碩士論文延後公開申請書（視需要）
3. 空白頁（封面與書名頁間加一空白頁）
4. 書名頁
5. 論文口試委員審定書
6. 摘要（中文及英文)
7. 誌謝（視需要）
8. 目次
9. 表目錄
10. 圖目錄
11. 論文主體
12. 參考文獻
13. 附錄及符號(公式)彙編（視需要）
14. 作者簡介（視需要）

[教務處論文範例][1]

上述內容中除加註有「視需要」者或本規範其他另有規定者外，研究論文均必須一一含入。除非有絕對必要如軟體研發等，否則論文應儘量不附電腦磁碟或 CD 等無法裝訂之附件。

本規範之空行表示法為「 x (1.5 × 12pt)行」，其中 1.5 代表「行距」之設定，12pt 為字體高度設定。

### 服用方式
如電腦有支援 make 功能可直接 `make all` 編譯 latex 產出論文
也可直接 `xelatex main.tex` 編譯此樣本
如有問題請提出 **Issus** 將會盡快改善並修正問題

### 變數宣告
[config.tex](Configurations/config.tex)
如有共同指導教授請將變數 `CoAdvisor` 變數設為 true
其語法為
```latex=.
\CoAdvisortrue  % 有共同指導教授，此行能夠印出共同指導教授資訊
\CoAdvisorfalse % 沒有共同指導教授，將隱藏共同指導教授資訊
```

### 頁碼
論文除「書名頁」與「論文考試委員審定書」外，均應於每頁的下方中央編排頁碼。頁碼應置於下側距離紙張邊緣至少1.5公分處(本規範之設定為1.75cm)。論文之篇前部份應以小寫羅馬數字，即 iv、v、vi、vii、…. 等；本文及篇後部份應以阿拉伯數字編排。頁碼前後不應使用任何符號（例如：不可用“page” 或 -1-，僅以1表之即可）。頁碼無論是篇前或本文，一律使用半形之Times New Roman字型。


### latex 字體大小

| 字體命令 | 正常 10pt | 正常 11pt | 正常 12pt |
|---------|-----------|----------|-----------|
| \tiny  |          5pt |	 6pt |		 6pt |
| \scriptsize |     7pt |	 8pt |		 8pt |
| \footnotesize |   8pt |	 9pt |		10pt |
| \small |          9pt |	10pt |		11pt |
| \normalsize |     10pt|	11pt |		12pt |
| \large |          12pt|	12pt |		14pt |
| \Large |          14pt|	14pt |		17pt |
| \LARGE |          17pt|	17pt |		20pt |
| \huge  |          20pt|	20pt |		25pt |
| \Huge  |          25pt|	25pt |		25pt |

## 工具

- Visual Studio Code
    - [Latex Support](https://marketplace.visualstudio.com/items?itemName=torn4dom4n.latex-support)
- 文獻管理 [Zotero](https://www.zotero.org/)


[1]: https://academic.stust.edu.tw/Sysid/academic/files/DegreeExamination/THESIS_example.pdf
