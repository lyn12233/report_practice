#clustering
import pandas as pd
import numpy as np
import matplotlib.pyplot as plt
from parse_dat import *
plt.rcParams['font.sans-serif']=['SimHei']
plt.rc("axes", unicode_minus=False)

if __name__=='__main__':
    opt1 = pd.read_csv('./code/opt_1.csv',index_col=0)
    opt2 = pd.read_csv('./code/opt_2.csv',index_col=0)
    ans = pd.read_csv('./code/ans.csv',index_col=0)
    traits=ans[['grade','spending']]
    
    traits['spending'] = traits['spending'].map({
    '100元以内':0.5,
    '100至200元':1.5,
    '200元以上':3.
    })
    # traits['elapse']=traits['elapse'].map(lambda s: float(s[:-1]))
    traits['grade']=traits['grade'].map({
        '大一':1.,
        '大二':2.,
        '大三':3.,
        '大四':4.,
        '研究生':6.,

    })
    traits[[f'q1_{i}' for i in range(1,7)]] =  opt1
    traits[[f'q2_{i}' for i in range(1,7)]] =  opt2
    idx = traits.columns
    print(traits,idx)
    
    scaler = StandardScaler()
    scaled_traits = scaler.fit_transform(traits.to_numpy())

    silhouette_scores = []
    for k in range(2, 11):
        kmeans = KMeans(n_clusters=k, random_state=42)
        kmeans.fit(scaled_traits)
        score = silhouette_score(scaled_traits, kmeans.labels_)
        silhouette_scores.append(score)

    plt.plot(range(2, 11), silhouette_scores, 'bx-')
    plt.xlabel('聚类数目')
    plt.ylabel('轮廓系数')
    # plt.title('确定最佳聚类数目')
    plt.savefig('./img/确定最佳聚类数目.jpg')
    plt.show()

    clusters = 2
    kmeans = KMeans(n_clusters=clusters, random_state=42)
    kmeans.fit(scaled_traits)
    labels = kmeans.labels_

    # 聚类结果分析
    for cluster in range(clusters):
        cluster_data = traits[labels == cluster]
        print(f'Cluster {cluster}特征统计:\
              \n nbdata:{cluster_data.shape[0]},cluster_center:\n{np.mean(cluster_data,axis=0)}')
    
    #draw result
    pca = PCA(n_components=2)
    pca_result = pca.fit_transform(scaled_traits)

    plt.scatter(pca_result[:, 0],pca_result[:, 1],label='sample points')

    # scatter the centers
    cluster_centers = kmeans.cluster_centers_
    pca_centers = pca.transform(cluster_centers)
    plt.scatter(pca_centers[:, 0], pca_centers[:, 1], c='red', marker='X', s=100, label='Cluster centers')

    # plt.title('PCA降维后的聚类结果')
    plt.xlabel('主成分1')
    plt.ylabel('主成分2')
    plt.savefig('./img/聚类结果.jpg')
    plt.show()

