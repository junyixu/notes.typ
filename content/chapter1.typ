#import "../template.typ": *

= Analogy and Introduction

Let's look at the theory of flat ground.
Humans cannot distinguish flatness: From a local perspective, the human eye cannot differentiate between a plane and a slightly curved surface. Such a curved surface is locally similar to a plane, and with this intuition, we now have a general understanding of what local similarity means.

Following this concept upwards, can the Earth be considered a manifold? Of course it can. Although the Earth's surface is curved, the local area around each point can be considered similar to a plane. Therefore, the Earth is locally similar to a Euclidean plane everywhere, and thus the Earth's surface can be viewed as a manifold. The local coordinate system that this person just established is called a local coordinate chart.

If we express this in strict mathematical language, manifolds and coordinate charts should be defined as follows:

#definition("Manifold")[
For a topological space $M$, if $forall p in M$, there always exists an open neighborhood $U$ of $p$, an open set $V$ in $RR^n$, and a homeomorphism $phi: U -> V subset.eq RR^n$, then $M$ is called locally Euclidean. If $M$ is also a second-countable Hausdorff space, then $M$ is called a (topological) manifold. The number $n$ is called the dimension of the manifold.
]


#definition("相容性与转移映射")[
  设 $M$ 和 $N$ 是两个拓扑空间，$M$ 上的一个坐标卡是一个同胚映射 $phi: U -> V$，
  其中 $U$ 是 $M$ 的开子集，$V$ 是欧几里得空间 $RR^n$ 的开子集。如果 $U$ 覆盖了 $M$，那么所有这样的坐标卡构成了 $M$ 上的一个*图册*。
  $
  phi _ ( alpha beta ) = phi _ ( beta ) compose phi _ ( alpha ) ^ ( - 1 ) : phi _ ( alpha ) ( U _ ( alpha ) sect U _ ( beta ) ) -> phi _ ( beta ) ( U _ ( alpha ) sect U _ ( beta ) )
  $
  是微分同胚，则称这两个坐标卡是相容的。
]

#proposition("光滑映射的复合")[
  如果 $f in C^(oo) (M, N)$ 且 $g in C^(oo) (N, P)$，那么 $g compose f in C^(oo) (M, P)$.
#lorem(40)
]
来阐明余切矢量作为*微分形式*的性质, 以及它们如何与*微分形式*相联系。

// #theorem("维数的同胚不变性", footer: "This is a footnote")[
// 如果 $U$ 是 $RR^n$ 中的开集, $V$ 是 $RR^m$ 中的开集，$f: U -> V$ 是一个微分同胚，那么 $n = m$.
// #lorem(40)
// ]

#figure(caption: [用来描述上述映射之间关系的交换图])[
#image("../figures/2024-10-19T223934+0800.png", width: 60%)
]<image-example>

#example("证明")[
  $
  [X, [Y, Z]] + [Y, [Z, X]] + [Z, [X, Y]] = 0
  $
  $
  &[X, [Y, Z]](f) \
  &= X([Y, Z])(f) - [Y, Z](X(f)) \
  &= X(Y(Z(f))) - Y(Z(X(f))) - Z(X(Y(f))) + Z(Y(X(f))) 
  $
]

Inspired by 

== 散度、旋度

#let cred(x) = text(fill: red, $#x$)
#let cblue(x) = text(fill: blue, $#x$)
#let cgreen(x) = text(fill: green, $#x$)
#import "@preview/physica:0.9.3": *
$
div vb(a) &= star d star (h_1 a_1 d u^1 + h_2 a_2 d u^2 + h_3 a_3 d u^3) \
&= star d ( a_1 h_2 h_3 d u^2 and d u^3 + a_2 h_3 h_1 d u^3 and d u^1 + a_3 h_1 h_2 d u^1 and d u^2 ) \
&= star ( pdv(a_1 h_2 h_3, u^1) d u^1 and d u^2 and d u^3 + pdv(a_2 h_3 h_1, u^2) d u^2 and d u^3 and d u^1 + pdv(a_3 h_1 h_2, u^3) d u^3 and d u^1 and d u^2 ) \
&= 1/(h_1 h_2 h_3) ( pdv(a_1 h_2 h_3, u^1) + pdv(a_2 h_3 h_1, u^2) + pdv(a_3 h_1 h_2, u^3) )
$

$
curl vb(a) &= star d ( h_1 a_1 d u^1 + h_2 a_2 d u^2 + h_3 a_3 d u^3 ) \
= star &( cred(pdv(h_1 a_1, u^2) d u^2 and d u^1 ) + cblue(pdv(h_1 a_1, u^3)  d u^3 and d u^1) \
    &+ cgreen(pdv(h_2 a_2, u^3) d u^3 and d u^2  )+ cred(pdv(h_2 a_2, u^1) d u^1 and d u^2) \
    &+ cblue(pdv(h_3 a_3, u^1) d u^1 and d u^3) + cgreen(pdv(h_3 a_3, u^2) d u^2 and d u^3) ) \
=& cgreen(h_1/(h_2 h_3) ( pdv(h_3 a_3, u^2) - pdv(h_2 a_2, u^3) ) d u^1)
+ cblue(h_2/(h_3 h_1) ( pdv(h_1 a_1, u^3) - pdv(h_3 a_3, u^1) ) d u^2)
+ cred(h_3/(h_1 h_2) ( pdv(h_2 a_2, u^1) - pdv(h_1 a_1, u^2) ) d u^3) \
=& cgreen(1/(h_2 h_3) ( pdv(h_3 a_3, u^2) - pdv(h_2 a_2, u^3) ) vu(e)_1 )
+ cblue(1/(h_3 h_1) ( pdv(h_1 a_1, u^3) - pdv(h_3 a_3, u^1) ) vu(e)_2 )
+ cred(1/(h_1 h_2) ( pdv(h_2 a_2, u^1) - pdv(h_1 a_1, u^2) ) vu(e)_3 )
$

#link("https://github.com/a-kkiri/SimpleNote")[SimpleNote] #cite(<SimpleNote>) 修改自 #link("https://github.com/jskherman/jsk-lecnotes")[jsk-lecnotes]，是一个简单的 Typst 模板。本模板主要适用于编写课程笔记，默认页边距为2.5cm，默认使用的中文字体为 Noto Sans CJK SC，英文字体为 Linux Libertine，字号为12pt（小四），你可以根据自己的需求进行更改，如需使用*伪粗体*或伪斜体，可以使用外部包 #link("https://typst.app/universe/package/cuti")[cuti]。封面图片由 #link("https://tabbied.com/")[Tabbied] 生成。

#text(font: "FZShuTi", fill: blue)[默认模板文件由主要以下六部分组成]：

#list(
  [main.typ 主文件],
  [template.typ 文档格式控制，包括一些基础的设置、函数],
  [refs.bib 参考文献],
  [content 正文文件夹，存放正文章节],
  [fonts 字体文件夹],
  [figures 图片文件夹]
)\ #v(-16pt)

使用模板首先需配置 main.typ，设置标题、描述、作者等信息。如需要进一步更改文档格式，请修改 template.typ。
