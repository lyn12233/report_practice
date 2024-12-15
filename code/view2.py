import pandas as pd
import numpy as np
import matplotlib.pyplot as plt
from parse_dat import *
plt.rcParams['font.sans-serif']=['SimHei']

spending=(
    '100元以内',
    '100至200元',
    '200元以上'
)

if __name__=='__main__':
    opt1 = pd.read_csv('./code/opt_1.csv',index_col=0)
    opt2 = pd.read_csv('./code/opt_2.csv',index_col=0)
    ans = pd.read_csv('./code/ans.csv',index_col=0)
    print(opt1)
    for opt,name,q in zip((opt1,opt2),('1','2'),(question1,question2)):
        fig1,ax1=plt.subplots()
        fig2,ax2=plt.subplots()
        dist = np.sum(opt.to_numpy(),axis=0)
        dist = dist/len(ans)
        def trim(s:str):
            if len(s)>6:
                return s[:5]+'..'
            else:return s
        dist2=dist/sum(dist)
        ax1.bar(tuple(map(trim,q.keys())),dist,width=0.5,alpha=0.7)
        ax2.bar(tuple(map(trim,q.keys())),dist2,width=0.5,alpha=0.7)
        for i in range(6):
            ax1.text(i,dist[i],round(dist[i],2),ha='center')
            ax2.text(i,dist2[i],round(dist2[i],2),ha='center')
        ax1.set_ylabel('相对勾选率')
        ax2.set_ylabel('占比')
        ax1.set_ylim(ymin=0,ymax=1)
        # ax2.set_ylim(ymin=0,ymax=1)
        fig1.savefig(f'./img/result_{name}')
        fig2.savefig(f'./img/result_{name}_ratio')
        # plt.xticks(rotation=10)
        # plt.show()
    w=tuple(map(lambda s:(ans['spending']==s).sum(),spending))
    fig1,ax1=plt.subplots(figsize=(4,3))
    ax1.pie(w,labels=spending,autopct='%.1f%%')
    fig1.savefig('./img/spending',dpi=800)
        