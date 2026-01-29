%
%
%                   川路研共通マクロファイル
%
%       Ver.1.00     Dec. 6, 1993
%
%

%------------------------------------------------------------------------------
% \displaystyle, \textstyle, \scriptstyle の定義
%------------------------------------------------------------------------------
\def\ds{\displaystyle}
\def\ts{\textstyle}
\def\scs{\scriptstyle}
\def\sss{\scriptscriptstyle}
\def\ce{\centerline}

%------------------------------------------------------------------------------
% \forall   … 数学記号 “すべての”
% \exists   … 数学記号 “存在する”
% 
% \wh#1     ; wide hat              …  ^
% \wt#1     ; wide tilder           … ~ 
% \ol#1     ; overline              … ￣
% \ul#1     ; underline             … ＿
% \range    ; Range                 … Range
% \ker      ; Kernel                … Ker
% \rank     ; rank                  … rank
% \atan     ; arc tangent           … atan
% \diag     ; diagonal              … diag
% \dB       ; dB                    … dB
% \eqbox#1  ; equation box          … 数式モード中で roman 体で出力
% \R#1      ; real vector space     … Rn
% \define   ;                       … 定義
% \tdef     ;                       … 定義
% \arc#1    ;                       … 
% \partialderiv#1#2#3               … 偏微分
% \deriv#1#2#3                      … 常微分
% \maxsv#1  ; maxium singular value … 最大特異値
% \minsv#1  ; mimium singular value … 最小特異値
% \abs#1    ; absolute value        … 絶対値
% \limit#1  ; limit                 … limit
% \norm#1#2 ; norm                  … ノルム
% \doyle#1#2#3#4                    … Doyle 記号
% \initderiv#1#2#3#4                … 初期条件付きの微分
% \dblint                           … ２重積分
% \triint                           … ３重積分
% \proof                            … イタリック体で Proof と表示
% \therefore                        … ∴
% \because                          … ∵
%------------------------------------------------------------------------------
\def\forall{\raise 0.5ex \hbox{$\mathchar"0238$}\,}
\def\exists{\raise 0.5ex \hbox{$\mathchar"0239$}\,}
\def\bbuildrel#1\over#2{\mathrel{\mathop{\kern 0pt #2}\limits_{#1}}}

\def\wh#1{\widehat #1}
\def\wt#1{\widetilde {#1}}
\def\ol#1{\overline{#1}}
\def\ul#1{\underline{#1}}

\def\dfrac#1#2{{\displaystyle\frac{#1}{#2}}}
\def\tfrac#1#2{{\textstyle\frac{#1}{#2}}}

\def\range{\mathop{\rm Range}\nolimits}
\def\ker{\mathop{\rm Ker}\nolimits}
\def\rank{\mathop{\rm rank}\nolimits}
\def\atan{\mathop{\rm atan}\nolimits}
\def\diag{\mathop{\rm diag}\nolimits}
\def\dB{\mathop{\rm dB}\nolimits}
\def\eqbox#1{\hbox{\rm #1}}
\def\R#1{\mathop{\rm R}^{#1}\nolimits}
\def\define{ \buildrel \rm def \over = }
\def\tdef{\buildrel \triangle \over =}
\def\arc#1{\buildrel \frown \over {#1}}

\def\pderiv#1#2#3{\frac{\partial^{#3} {#1}}{\partial {#2}^{#3}}}
\def\deriv#1#2#3{\frac{d^{#3}{#1}}{d#2^{#3}}}

\def\maxsv#1{\overline\sigma(#1)}
\def\minsv#1{\underline{\sigma}(#1)}
\def\abs#1{\mid #1 \mid}
\def\limit#1{\bbuildrel #1 \over \lim}
\def\norm#1#2{\parallel #1 \parallel_{#2}}

\def\doyle#1#2#3#4{\left[%
                     \begin{array}{c|c}
                       #1 & #2 \\ \hline
                       #3 & #4
                     \end{array}
                   \right]}

\def\initderiv#1#2#3#4{\left. {{d^{#3}{#1}}\over {d{#2^{#3}}}} \right|_{#4}}
\def\dblint{\int\!\!\!\int}
\def\triint{\int\!\!\!\int\!\!\!\int}
\def\proof{\mathop{\it Proof}\nolimits}
\def\therefore{\setbox0 \hbox{$\cdot$}
        \raise-0.2em \copy0 \raise0.2em \copy0 \raise-0.2em \box0 ~}
\def\because{\setbox0 \hbox{$\cdot$}
        \raise0.2em \copy0 \raise-0.2em \copy0 \raise0.2em \box0 ~}

%------------------------------------------------------------------------------
% \MARU{1}              … ① を出力
% \ruby{金澤}{かなざわ} … 振り仮名を振る
% \qedw                 … 証明の終わりに用いる□
% \qedb                 … 証明の終わりに用いる■
% \signature{#1}        … E-mail address
% \yen                  … ￥
% \DegC                 … ℃
%------------------------------------------------------------------------------
\def\MARU#1{{\rm\ooalign{\hfill\lower.168ex\hbox{#1}\hfill
  \cr\cr\mathhexbox20D}}}
\def\ruby#1#2{%
  \leavevmode
  \setbox0=\hbox{#1}\setbox1=\hbox{\tiny#2}%
  \ifdim\wd0>\wd1 \dimen0=\wd0 \else \dimen0=\wd1 \fi
  \hbox{\kanjiskip=\fill
    \vbox{\hbox to \dimen0{\tiny \hfil#2\hfil}%
      \nointerlineskip
      \hbox to \dimen0{\hfil#1\hfil}}}
}
\def\qedw{\hfill\llap{\vbox{\hrule
          \hbox{\vrule\kern3pt \vbox{\kern3pt \kern3pt}\kern3pt\vrule}\hrule}}}
\def\qedb{\rightline{\vbox{\hbox{\vrule height 4pt width 6pt depth 2pt}}}}
\def\signature#1{E--mail $<${#1}@eecs.kumamoto--u.ac.jp$>$}
\newlength{\Ywidth}
\def\yen{\mbox{\tt\settowidth{\Ywidth}{Y}Y\hspace{-\Ywidth}=}}

\newcommand{\DegC}{\char'27\kern-.3em\hbox{C}}

