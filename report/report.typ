#import "utils.typ":*
#set text(..default_text_parm)
  #set par(..default_par_parm)
  #set table(stroke:none)
  #set pagebreak(weak:true)
  
  #set image(height: 5cm, width: 6.67cm)
  #set grid(columns: 2, gutter: 10pt)

  #show figure.where(kind: image):set figure(..default_FOI_parm)
  #show figure.where(kind: table):set figure(..default_FOT_parm)
  #show figure.caption:set text(size:font_size_zh.WuHao)
  #show figure.where(kind: table): set figure.caption(position:top)
  
  #show heading.where(level: 1):set heading(numbering: "1")
  #show heading.where(level: 2):set heading(numbering: "1.1")


#set page(
   footer: [
     #set align(center)
     #context counter(page).display("1")
   ]
 )

 // bib upercase style; disable auto-generated footnote
 #set footnote(numbering: "[1]")
 #set footnote.entry(separator: none)
 #show footnote.entry: hide

#[
  #set page(footer: none)
  #set page(margin: 0pt)
  #image("preface.jpg",height: 29cm,width: 21cm)
  #pagebreak()
  #v(20cm)
  #pagebreak(weak: false)
  #counter(page).update(1)
]



#Paragraph[
  *摘要*:
  随着互联网技术的发展, 网络问卷调查成为了大学生完成各项实践作业的主要手段。网络问卷调查以其简便性而流行,
  同时面临问卷质量和调查方法质量上的质疑。本报告根据已有调查实践,
  重新设计问卷开展网络问卷调查, 并利用多种统计方法验证了结果的有效性, 
  同时发现问卷设计对调查有效性有一定影响。
]
#Paragraph[
  *关键词*:
  网络问卷调查; 有效性; 实践观
]

#Section("引言")
#Paragraph[
  马克思主义认识论指出, 实践是认识的来源。人们只有通过实践活动, 才能接触客观事物,
  获得感性认识, 并在此基础上进一步形成理性认识。作为实践的重要形式,
  调查为认识提供了丰富的素材和检验标准。
  马克思和恩格斯都提倡以社会考查为方法开展实证研究, 弥补哲学研究的不足之处, 
  推动社会主义从空想走向科学@bib_marxism_sur_dev;
  近代中国的马克思主义者广泛进行社会调查,
  通过在行动中将理论与实践相结合的 "实事求是" 
  工作路线来实现对教条主义、主观主义的批判和思想解放, 为中国革命伟大实践做出了重要贡献@bib_1930trace。可见, 
  调查实践在马克思主义中具有重要地位和作用, 是马克思主义者揭示客观规律, 为理论发展提供依据,
  推动社会变革的关键法宝。
]
#Paragraph[
  问卷调查在各个领域仍然是获取信息和研究数据的重要手段, 
  尤其在社会科学、市场营销、教育研究等方面应用广泛。随着互联网和智能手机的普及, 
  在线问卷调查的形式逐渐成为主流。如今, 
  借助各类在线问卷平台 (如问卷星) 开展网络问卷调查, 设计、分发和分析问卷变得更加简单快捷。显而易见的是,
  网络问卷调查已成为大学生为完成思政课程实践作业的主流手段。
]
#Paragraph[
  马克思主义认识论也指出, 从实践到认识受到了社会历史条件、主客体条件的限制。
  相应的, 问卷调查方法面临挑战。例如, 再复杂性社会科学中, 已有问卷调查设计难以满足研究需求, 
  加剧了研究信度与效度所受质疑@bib_sur_method。即使在思政课程实践的简单场景下, 
  问卷调查结果的有效性仍然存在质疑。以本小组成员为例, 
  填写同学发出的问卷时, 6人均存在因为时间紧迫、缺乏兴趣等原因而随机作答、有意按照问题引导回答的经历, 
  可能导致此类问卷的真实性不足; 同时, 此类问卷常常不会进行检验, 
  其结果不能形成有效参考。本小组针对上述问题开展对比研究, 
  围绕 "网络问卷行不行"、"如何设计网络问卷" 做出分析。
]
#Section("问卷设计和调查实施")
#SubSection("问卷设计和调查实施的主要原则")
#Paragraph[
  格罗夫斯等@bib_glfs 指出, 问卷调查涉及两个 "推论步骤": 一是基于被访者对访题的应答推论其特征, 
  二是基于样本特征推论总体特征。步骤一可能出现观察误差, 
  即被访者应答与期待测量的属性间的偏差; 步骤二可能出现非观察误差, 
  即样本统计值与总体间的偏差。据此, 给出了本报告问卷设计和调查实施的主要原则:
   (1) 在问卷设计上, 要考虑到清晰度、针对性和逻辑性, 避免歧义或引导性问题, 
  尽量限制问卷的长度、复杂度。 (2) 在调查实施上, 应广泛发放调查问卷, 
  利用多种统计手段检验数据有效性。
]
#SubSection("作为对照的原调查情况")
#Paragraph[
  本小组部分成员在今年4月参与了主题为 "大学生互联网消费观念" 的调查 (以下称原调查) , 
  其问卷设计与本报告提出的原则有较大出入, 可视为理想的对照。原调查问卷的主要问题有:
   (1) 问题的数量较多, 共有11个, 本小组估计认真完成问卷需要接近1分钟, 
  主观感受是冗长。 (2) 问题及选项的表述存在片面、诱导、关联性不强等缺点。具体分析如下:
]
#[
  #set text(top-edge: "cap-height",bottom-edge: "baseline")
  #set par(leading: 8pt)
  #figure(
  table(
    columns: (1fr,6fr,5fr),
    table.hline(y:0,stroke: 1.5pt),
    table.hline(y:1,stroke: 1pt),
    table.hline(y:2,stroke: 0.5pt),
    table.hline(y:4,stroke: 0.5pt),
    table.hline(y:7,stroke: 1.5pt),
    [序号],[问题表述],[存在的缺陷],
    [2],[您每周在互联网上大概花费多长时间],[该问题与网上购物不直接相关, 增大了问差的冗余性。],
    [3],[您更喜欢在互联网上购买哪类产品],
    table.cell(rowspan: 2)[其选项不能覆盖大部分购物情形, 较为片面。],
    [4],[您在网上购物时更注重那个因素],
    [6],[您是否经常关注和购买网红推荐的产品],
    table.cell(rowspan: 3)["是或否"的表述具有一定的诱导性, 且 "环保""网红推荐" 可能不是常见的网络购物情形。],
    [9],[您认为大学生网络消费中存在过度消费的问题吗],
    [10],[您是否会购买环保产品或支持环保品牌],
  ),caption: "原调查问卷设计缺陷分析"
  )
]
#SubSection("本报告调查问卷设计")
#Paragraph[
  在问题设计上, 针对问卷冗长的问题, 将有效问题数目缩减至3个; 
预留问题为 "你所处的年级", 用于限制调查对象范围。
3个问题覆盖多个尺度, 意在获取尽量丰富的信息。
]
#Paragraph[
  问题一为"在网上购物中, 你最经常购买的产品有:"。
此问题关照购物的内容尺度, 对照原调查的问 (3) , 
做出2处修改:首先, 将 "二次元, ACCG" 一项修正为 "文创产品/动画、漫画、游戏周边", 
用于表述一类文化性产品, 表述更为严谨。其次, 结合实际的增加了 "食品"、
"医疗用品" 选项, 作为可能被原调查忽视的购买要素。
]
#Paragraph[
  问题二为 "购买同类产品时, 那些因素最能驱动你购买？"。
此问题关注购物的主观意愿尺度。其中, "价格/性价比"、"优惠/包邮活动"
等选项是对原调查问 (4) 、问 (6) 、问 (8) 的提炼和概括; 
"产品及包装是否环保"是对原调查问 (10) 的质疑, 
放在此处可以与同类因素形成比较, 反映更有意义的结果; 
"打动你的新颖独特之处"选项考虑具体情境下的感性因素, 
可能对大学生购物倾向有一定影响。
]
#Paragraph[
  问题三为 "网上消费中, 你平均每月的花费大致为"。
此问题可以对大学生是否过度消费做出定性分析, 是对原调查问 (9) 的质疑。
考虑到消费水平可能是敏感话题, 以100、200元为界限划分成3给区间, 增强结果的可靠程度。
这一划分源于本小组的情况。在预期中, 三个区间的人数大致相当。
]
#Paragraph[
  在多选题处理上, 问题一、二为多选题, 鉴于我们以往对多选题随意填写的经历, 
首先放弃了量化表格的形式, 其次采取随机化方法。
发出6个不同问卷, 每个问卷中选项位置固定, 保证每一选项在6个位置处各出现1次。
此方法可以统计调查对象在多选题不同位置的选择倾向。
如果不存在这种位置倾向, 则说明结果相对有效; 
如果存在这种位置倾向, 则结果有效性若, 需要加以修正。
此外, 将可选数设置在1至5个, 可以降低无效作答的概率。
]
#Paragraph[
  问卷设计如下:
]
#[
  #set text(top-edge: "cap-height",bottom-edge: "baseline")
  #set par(leading: 8pt)
  #figure(
    table(
      columns: (4.5cm,2cm,7cm),
      table.hline(y:0,stroke: 1.5pt),
      table.hline(y:5,stroke: 1.5pt),
      table.hline(y:1,stroke: 1.0pt),
      table.hline(y:2,stroke: 0.5pt),
      table.hline(y:3,stroke: 0.5pt),
      table.hline(y:4,stroke: 0.5pt),
      [问题],[类型],[选项],
      [1. 你所处的年级是：],[单选题],[大一、大二、大三、大四、研究生],
      [2. 在网上购物中，你最经常购买的产品有：],[多选题],
      [#set align(left)
        (1) 教材/书籍/文具\
      (2) 服装首饰\
      (3) 电子产品\
      (4) 食品\
      (5) 医疗用品\
      (6) 文创产品/动画、漫画、游戏周边],
      [购买同类产品时，那些因素最能驱动你购买？],[多选题],
      [#set align(left)
      (1) 产品及包装是否环保\
      (2) 使用频率/占据的空间\
      (3) 价格/性价比\
      (4) 广告推荐\
      (5) 优惠/包邮活动\
      (6) 打动你的新颖独特之处
      ],
      [网上消费中，你平均每月的花费大致为],[单选题],
      [100元以内、100至200元、200元以上],
    ),caption: "本报告问卷设计"
  )
]
#SubSection("调查实施方案")
#Paragraph[
为了形成严谨对照, 本次问卷形式与原调查一致, 
采用线上问卷的形式, 利用问卷星平台制作并导出链接, 通过微信、QQ等渠道发送。
与之不同的是, 问卷星平台利用IP保证一个设备仅填写一次, 
本次发放的6个问并不能利用该功能。为此, 
在发放时将一个问卷主要面向本校同学, 其余问卷通过微信、QQ的屏蔽机制避免本校同学填写, 
主要面向中学同学等。6个问卷的多选选项位置安排和发放渠道如@dsn_pos 和@dsn_send 所示。
]
#[
  #set text(top-edge: "cap-height",bottom-edge: "baseline")
  #set par(leading: 8pt)
  #set align(center)
  #figure(
  table(
    columns: (1fr,1fr,1fr,1fr,1fr,1fr,1fr,1fr,1fr,1fr,1fr,1fr,1fr,),
    align:center,
    table.hline(y:0,stroke: 1.5pt),
    table.hline(y:1,stroke: 0.5pt),
    table.hline(y:2,stroke: 1.0pt),
    table.vline(x:1,stroke: 0.5pt),
    table.vline(x:7,stroke: 0.5pt),
    table.hline(y:8,stroke: 1.5pt),
    table.cell(rowspan: 2)[问卷序号],
    table.cell(colspan: 12)[相对位置(即表中位置,数字为选项序号)],
    table.cell(colspan: 6)[问题一],
    table.cell(colspan: 6)[问题二],
    [1],[1],[2],[3],[4],[5],[6],[1],[2],[3],[4],[5],[6],
    [2],[4],[3],[6],[1],[2],[5],[3],[1],[5],[6],[4],[3],
    [3],[6],[5],[4],[2],[3],[1],[2],[4],[1],[5],[6],[2],
    [4],[3],[4],[1],[5],[6],[2],[4],[3],[6],[1],[2],[5],
    [5],[5],[6],[2],[3],[1],[4],[5],[6],[2],[3],[1],[4],
    [6],[2],[1],[5],[6],[4],[3],[6],[5],[4],[2],[3],[1],
  ),caption: "选项位置安排"
  )<dsn_pos>
  #figure(
    table(
      columns: 2,
      table.hline(y:0,stroke: 1.5pt),
      table.hline(y:1,stroke: 1.0pt),
      table.hline(y:7,stroke: 1.5pt),
      [问卷序号],[发放渠道],
      [1],[“启翔湖畔”QQ频道],
      [2],[QQ空间和朋友圈, 面向山东的同学],
      [3],[QQ空间和朋友圈, 面向榆林的同学],
      [4],[朋友圈和老乡群，面向北京的同学],
      [5],[QQ空间和朋友圈, 面向榆林的同学],
      [6],[QQ空间和朋友圈, 面向河北的同学],
    ),caption: "问卷发放渠道"
  )<dsn_send>
]
#Section("调查结果分析和检验")
#SubSection("结果收集情况")
#Paragraph[
  本次调查从2024年12月4至8日共收集到97份问卷, 
  经IP检验得到有效作答问卷92份, 超过原调查 (53份)。
]
#SubSection("调查结果对比分析")
#Paragraph[
  在假设本次调查真实性、可靠性得到保障的前提下, 
  与原调查对比, 做出分析。三个问题的结果如下:
  #include "../img/result.typ"
]
#SubSub("问题一结果分析")
#Paragraph[
  根据@res1 和@res11 可知, 与原调查问 (3) 对比, 服装类、电子类、教育类产品购买频率呈现出一致性
 (1:0.80:0.91/1:0.91:0.74) , 三者购买频率相当, 服装类稍多, 
说明此处原调查结果真实性较强。
]
#Paragraph[
"文创产品/动画、漫画、游戏周边" 选项表述更准确, 覆盖更广, 
但是其勾选占比与原调查一致 (0.12=0.12), 同样说明了此处结果的真实性。
]
#Paragraph[
  原调查忽略了食品这一大学网上最常购买的产品。
此次调查中 "食品" 选项占比为0.29, 占比最大, 远高于原调查中的 "其他" 一项 (0.06) 。
这也反映了问卷中经常出现的 "其他" 选项容易干扰判断, 
调查对象倾向于不选择此项, 这一选项设计应当避免。
]
#SubSub("问题二结果分析")
#Paragraph[
  根据@res2 和@res22 可知, 大学生网上购物时, 对环保因素的倾向极弱, 
"产品及包装是否环保" 勾选率只有0.1, 
与原调查问 (10) 差异较大 (对 "10.您是否会购买环保产品或支持环保品牌", 
选择 "是" 的人数占0.79) , 
表明环保不是大学生网上购物主要考虑的因素。
因此原调查得出 "大学生普遍具有环保意识" 的论断缺乏有效证据支撑, 
且在 "网上购物" 情形下不具有实际意义。
本调查将环保因素与同类考虑因素并列, 更为合理。
]
#Paragraph[
"价格/性价比"、"优惠/包邮活动" 选项结果与原调查
问 (4) 中的 "产品品质"、"产品价格"、"快递配送"、
问 (8) 中的 "价格优惠" 的结果较为一致, 商品价格、品质
是主要考虑因素, 促销措施如快递包邮等也具有一定影响。
]
#Paragraph[
结果还显示出 "使用频率/占据的空间" 等实际因素和 "打动你的新颖独特之处" 
等感性因素也具有较强的影响, 说明此问题设计相对于原调查更为全面。
]
#SubSub("问题三结果分析")
#Paragraph[
  根据@res3 可知, 超过一半的人在网上购物中月花费在200元以内, 
虽然略超出预期, 但足以显示出大学生 "过度消费" 问题较小, 
与原调查问 (9) 的结果 (0.79的人认为大学生网络消费中存在过度消费的问题) 形成鲜明对比, 
证明的原调查问 (9) 具有诱导性, 结果不具真实性。
]
#SubSection("调查结果有效性检验")
#Paragraph[
  对于调查对象作答的认真程度, 分析了92个有效样本的作答时间, 分布如下:
#include "../img/used_time.typ"
我们得出90%的问卷作答时间超过14秒, 在这一时间内足够有意识的完成各问, 
此次调查的有效性得到保证。
]
#Paragraph[
  对于可能存在的选项位置偏好, 
统计问题一、二各位置上的勾选率, 结果如下:
#include "../img/pos_impact.typ"
由@pos_imp 可知, 各位置上勾选率接近, 问题一分布在 (0.36, 0.53) 内, 
问题二分布在 (0.35, 0.47) 内, 问题一、二对应的分布没有显著相关性, 
说明这一误差可能是由随机因素造成的, 
从而选项位置偏好在本调查中可以忽略。
]
#Paragraph[
  对于调查对象 (即样本) 的代表性, 可能存在样本覆盖不够广、
样本存在明显差异等问题, 需要检验。
]
#Paragraph[
  首先, 在92个有效样本中, IP为西安的只占51项, 
其余问卷来源遍布全国, 说明其覆盖范围相对较广, 
能够保证调查的代表性。
]
#Paragraph[
  其次, 通过聚类分析探究样本的差异性质。
第一, 设置聚类分析的参数, 包括:大学年级, 大一至研究生分别对应1, 2, 3, 4, 6; 
问题一、二的选择, 每一选项对应0-1变量; 问题三, 三个区间对应期望0.5, 1.5, 3。
第二, 对数据做方差标准化处理, 对不同数量的聚类中心做KMEANS聚类分析, 
计算对应的轮廓系数。轮廓系数用于表示聚类的优劣, 其值在 (0, 1) 间分布, 
越低代表聚类特征越不明显。第三, 通过主成分分析降维, 直观展现数据分布。
结果如下:
#include "../img/cluster.typ"
由@sil_score 可知, 最高的轮廓系数仅为0.105, 结合@cluster_res 的直观表示, 可以验证本次调查
样本没有显著差异性, 进行统计平均的结果具有实际意义, 进一步保证了调查结果的有效性。
]
#Paragraph[
  总的来说, 经过多种方法检验, 本次问卷调查结果基本有效, 证明了基于合理的问卷设计和调查实施,
  通过互联网问卷的形式展开调查可以得出有效结论; 问卷设计的不合理因素会影响结果的真实性和结论的有效性。
]
#Section("结论")
#Paragraph[
  调查方法的科学性是社会科学研究中的核心要素, 
  它直接决定了调查结果的可靠性和有效性。面对网络问卷的质疑, 
  本报告得出以下结论:
   (1) 网络问卷设计时可能出现问题表述片面、问题与调查主体无关、具有诱导性、问卷冗长等问题, 会造成结果失真, 
  应当结合实际情况加以避免。 (2) 在合理的问卷设计和调查实施方案下, 
  网络问卷能够提供有效、可靠的结论。 (3) 多种统计方法和问卷设计方法, 
  如聚类分析、随机化选项位置、用时分析等, 依托网络问卷设计平台的强大功能, 
  可以用于网络问卷结果有效性检验, 大大增强调查的说服力。同时, 
  通过合理的设计和有效的分析方法, 本次问卷调查为大学生消费行为研究提供了更具实证意义的数据支持。
]
#pagebreak()
#Section("参考文献")
#[
#bibliography(
  "bib.bib",
  title: none,
  style: "gb-7714-2015-note"
)
]
#Section("附录")
#Paragraph[
  原问卷调查结果、本报告的详细结果、数据处理实现等，已经上传至
  #text(fill: blue)[https://github.com/lyn12233/report_practice],
  可供参考。
]