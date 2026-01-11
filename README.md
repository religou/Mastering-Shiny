## Mastering RShiny Learning Record

### 01_introduction
#### 01.01 第一个RShiny APP
学习了基本元素：selectInput、verbatimTextOutput、tableOutput
学习了数据互联：reactive
并且通过将 dataset 提取成公共变量，优化了代码

#### 01.02 基本控件元素
文本控件：textInput、passwordInput、textAreaInput
数字控件：numericInput、sliderInput
日期控件：dateInput、dateRangeInput
选项控件：selectInput、radioButtons、checkboxInput
文件控件：fileInput
按钮：actionButton
文本输出：textOutput、verbatimTextOutput
表格：tableOutput、dataTableOutput
图形：plotOutput

#### 01.03 响应式控件
文本渲染：renderText
执行按钮：actionButton
旁观者：observeEvent -- 对对象的检测，可以生成日志内容文件
编程中的“三重法则”：每当你复制粘贴三次某样东西时，就应该想办法减少重复（通常通过编写一个函数）。这很重要，因为它减少了代码中的重复内容，使其更易于理解，并且随着需求的变化更容易更新