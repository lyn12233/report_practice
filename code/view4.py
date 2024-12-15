import pandas as pd
import numpy as np
import matplotlib.pyplot as plt
plt.rcParams['font.sans-serif']=['SimHei']

def cnt_ip(s):
    if "西安" in s:
        return 1
    return 0

if __name__=='__main__':
    ans = pd.read_csv('./code/ans.csv',index_col=0)
    x =  ans['elapse'].map(lambda s: int(s[:-1])).to_numpy()
    c = ans['ip'].map(cnt_ip).to_numpy()
    print(np.percentile(x,10),c.sum())
    plt.hist(x,bins=80)
    plt.xlabel('作答时间/s')
    plt.ylabel('人数')
    plt.savefig('./img/used_time.png',dpi=800)
    plt.show()