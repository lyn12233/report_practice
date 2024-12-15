#set image(height: 5cm, width: 6.67cm)
#set grid(columns: 2, gutter: 10pt)
#grid(
  [
    #figure(
      image("确定最佳聚类数目.jpg"),
      caption: "不同数量的聚类中心对应的轮廓系数"
    )<sil_score>
  ],[
    #figure(
      image("聚类结果.jpg"),
      caption: "聚类结果展示"
    )<cluster_res>
  ]
)