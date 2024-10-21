#import "template.typ": *
// #import "@preview/cuti:0.2.1": show-cn-fakebold
// #show: show-cn-fakebold

#show: template.with(
  // 笔记标题
  title: [Differential Manifolds],
  // 在页眉展示的短标题（选填）
  short-title: "Introduction to Differential manifolds",
  // 笔记描述（选填）
  description: [
    此模板修改自 #link("https://github.com/jskherman/jsk-lecnotes")[jsk-lecnotes]  \ Winter 2023
  ],
  // 笔记创建日期（选填）
  date: datetime(year: 2023, month: 12, day: 19),
  // 作者信息（除 name 外，其他参数选填）
  authors: (
    (
      name: "Junyi Xu",
      github: "https://github.com/junyixu",
      homepage: "https://github.com/junyixu",
      affiliations: "1,2",
    ),
  ),

  // 所属组织列表，每一项包括一个 id 和 name。这些将显示在作者下方。
  affiliations: (
    (id: "1", name: "Example University"),
    (id: "2", name: "Example Inc."),
  ),

  // 参考书目文件路径及引用样式
  bibliography-file: "refs.bib",
  bibstyle: "gb-7714-2015-numeric",

  // 页面尺寸，同时会影响页边距。
  paper-size: "a4",

  // 中英文文本和代码的字体
  fonts: (
    (
      en-font: "Linux Libertine",
      // zh-font: "Source Han Serif",
      // zh-font: "FZYanSongS-R-GB",
      // zh-font: "FZBoYaKanSongK",
      zh-font: "FZNewShuSong-Z10S", // 方正新书宋简体
      code-font: "DejaVu Sans Mono",
    )
  ),
  
  // 主题色
  accent: "#3c71b7", // 蓝黑
  // accent: orange,

  // 封面背景图片（选填图片路径或 none）
  // cover-image: "./figures/cover-image.png",
  cover-image: none,
  // 正文背景颜色（选填 HEX 颜色或 none）
  background-color: none
)

#include "content/chapter1.typ"
#include "content/chapter2.typ"
