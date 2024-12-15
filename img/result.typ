#set image(height: 5cm, width: 6.67cm)
#set grid(columns: 2, gutter: 10pt)
#set align(center)
#grid(
  columns: 2,
  [
    #figure(
      image("result_1.png"),
      caption: "第一问的结果（勾选率）"
    )<res1>
  ],
  [
    #figure(
      image("result_1_ratio.png"),
      caption: "第一问的结果（占比）"
    )<res11>
  ],
  [
    #figure(
      image("result_2.png"),
      caption: "第二问的结果（勾选率）"
    )<res2>
  ],
  [
    #figure(
      image("result_2_ratio.png"),
      caption: "第二问的结果（占比）"
    )<res22>
  ],
)
#figure(
  image("spending.png"),
  caption: "第三问的结果"
)<res3>