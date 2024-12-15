import pandas as pd
import numpy as np
from sklearn.preprocessing import StandardScaler
from sklearn.cluster import KMeans
from sklearn.metrics import silhouette_score
from sklearn.decomposition import PCA

question1={
    '教材/书籍/文具':1,
    '服装首饰':2,
    '电子产品':3,
    '食品':4,
    '医疗用品':5,
    '文创产品/动画、漫画、游戏周边':6,
}
question2={
    '产品及包装是否环保':1,
    '使用频率/占据的空间':2,
    '价格/性价比':3,
    '广告推荐':4,
    '优惠/包邮活动':5,
    '打动你的新颖独特之处':6,
}
survey_codes={
    '293553156':1,
    '293568143':2,
    '293566835':3,
    '293565687':4,
    '293566387':5,
    '293565062':6
}
survey_names=tuple(survey_codes.keys())
question_idx=(
    'time',
    'elapse',
    'source',
    'from',
    'ip',
    'grade',
    'category',
    'factor',
    'spending'
)
q1_order=np.array(
    (
        (1,2,3,4,5,6),
        (4,3,6,1,2,5),
        (6,5,4,2,3,1),
        (3,4,1,5,6,2),
        (5,6,2,3,1,4),
        (2,1,5,6,4,3),
    ),dtype=int
)
q2_order=np.array(
    (
        (1,2,3,4,5,6),
        (2,1,5,6,4,3),
        (3,4,1,5,6,2),
        (4,3,6,1,2,5),
        (5,6,2,3,1,4),
        (6,5,4,2,3,1),
    ),dtype=int
)

if __name__=='__main__':
    print(survey_names)
    all_ans=[]
    for i in range(1,7):
        ans=pd.read_excel(
            f'./code/{survey_names[i-1]}.xlsx',
            index_col=0,
            names=question_idx
        )
        ans['surkind']=i
        all_ans.append(ans)
        # print(ans)
    all_ans=pd.concat(all_ans)
    print(f'data size: {all_ans.size//10}')
    print(f'unique ip\'s:{all_ans["ip"].nunique()}')
    all_ans.drop_duplicates(subset=['ip'],keep="last",inplace=True)
    
    for i in range(1,7):
        print(f'kind {i} with validated {all_ans[all_ans["surkind"]==i].__len__()}')

    new_idx=range(1,len(all_ans)+1)
    all_ans.index=new_idx
    
    check_by_opt_1 = np.zeros((len(all_ans),6),dtype=int)
    check_by_opt_2 = np.zeros((len(all_ans),6),dtype=int)
    check_by_pos_1 = np.zeros((len(all_ans),6),dtype=int)
    check_by_pos_2 = np.zeros((len(all_ans),6),dtype=int)

    for idx in all_ans.index:
        q1=all_ans.loc[idx,'category'].split('┋')
        q2=all_ans.loc[idx,'factor'].split('┋')
        kind=all_ans.loc[idx,'surkind']#1..6
        for i in q1:
            check=question1[i]
            check_by_opt_1[idx-1,check-1]=1
            check_by_pos_1[idx-1,list(q1_order[kind-1,:]).index(check)]=1
        for i in q2:
            check=question2[i]
            check_by_opt_2[idx-1,check-1]=1
            check_by_pos_2[idx-1,list(q2_order[kind-1,:]).index(check)]=1
    print(check_by_opt_1.shape)
    
    assert (check_by_opt_1[:4,:]==check_by_pos_1[:4,:]).all()

    check_by_opt_1=pd.DataFrame(check_by_opt_1,index=new_idx,columns=tuple(range(1,7)))
    check_by_opt_2=pd.DataFrame(check_by_opt_2,index=new_idx,columns=tuple(range(1,7)))
    check_by_pos_1=pd.DataFrame(check_by_pos_1,index=new_idx,columns=tuple(range(1,7)))
    check_by_pos_2=pd.DataFrame(check_by_pos_2,index=new_idx,columns=tuple(range(1,7)))
    
    all_ans.to_csv('./code/ans.csv')
    check_by_opt_1.to_csv('./code/opt_1.csv')
    check_by_opt_2.to_csv('./code/opt_2.csv')
    check_by_pos_1.to_csv('./code/pos_1.csv')
    check_by_pos_2.to_csv('./code/pos_2.csv')