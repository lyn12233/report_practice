#view by pos
import pandas as pd
import numpy as np
import matplotlib.pyplot as plt
plt.rcParams['font.sans-serif']=['SimHei']

def addlabels(y,ax):
    for i in range(len(y)):
        ax.text(i+1, y[i], y[i],ha='center')

if __name__=='__main__':
    ans=pd.read_csv('./code/ans.csv',header=0,index_col=0)
    pos1=pd.read_csv('./code/pos_1.csv',header=0,index_col=0)
    pos2=pd.read_csv('./code/pos_2.csv',header=0,index_col=0)

    pos_factor=[]
    fig,ax=plt.subplots()
    for pos,name,delt in zip((pos1,pos2),('第一问','第二问'),(0.,0.3)):
        
        pos_info=[]
        for i in range(1,7):
            inf=pos.loc[ans['surkind']==i].sum().to_numpy()
            inf=inf/np.sum(ans['surkind']==i)/ 6
            pos_info.append(inf)

        rel_check =np.sum(pos_info,axis=0) 
        rel_check2=np.vectorize(lambda x:round(x,2))(rel_check)
        print(rel_check2,sum(rel_check))
        ax.bar(np.arange(1,7)+delt,rel_check,width=0.3,label=name,)
        
        for i in range(6):
            ax.text(i+1+delt,rel_check[i],rel_check2[i],ha='center',fontsize=8)

        pos_factor.append(rel_check)

    pos_factor=np.mean(pos_factor,axis=0)
    print(pos_factor)
    np.savetxt('./code/pos_factor.txt',pos_factor)

    ax.set_xlabel('选项位置')
    ax.set_ylabel('相对勾选率')
    # ax.set_ylim(ymin=0,ymax=1)
    ax.legend()
    fig.savefig(f'./img/pos_impact.png',dpi=800)