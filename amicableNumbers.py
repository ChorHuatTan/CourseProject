import sys
import numpy as np
import pandas as pd
import datetime as dt

def properDivisors(Num):
    l=[]

    for i in range(1,Num):
        if (Num % i)==0:
            l.append(i)
    return l

if len(sys.argv)>=2:
    maxNum=int(sys.argv[1])
else:
    maxNum=1000

startTime=dt.datetime.now()

myFactors=np.arange(0,maxNum)
myFactors=pd.DataFrame({'Number':myFactors})
myFactors['Sum']=myFactors.Number.apply(properDivisors).apply(sum)
myFactors['Perfect']=myFactors.Number==myFactors.Sum
myFactors['Amicable']=np.where(~myFactors.Perfect, myFactors.Number==myFactors.Sum.apply(properDivisors).apply(sum),False)

endTime=dt.datetime.now()

print(f'\nElaspe time : {endTime-startTime}')
print(f'\nThere are {myFactors[myFactors.Amicable].Amicable.count()/2:.0f} pair(s) amicable numbers from {1} to {maxNum}\n')
print(myFactors[myFactors.Amicable][['Number', 'Sum']])

myResults=myFactors[myFactors.Perfect | myFactors.Amicable]
myResults.drop(0).to_csv('PerfectAndAmicableNumbers.txt', index=False)





