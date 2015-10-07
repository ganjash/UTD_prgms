import random
import sys

dice1 = random.randint(1, 6)
dice2 = random.randint(1, 6)
sum = 0

#consider = [method priority]
consider = [0,0,0]
ROUNDS = 5
GAMES = 10
totalev = totalma = totalre = 1000
betev = betma = betre = -100
methods = ['ev','ma','re']
M_names = ['Even Wager','Martingale','Reverse Martingale']

f = open('observation.txt','w')
sys.stdout = f

def win(methods):
    if 'ev' in methods:
       global totalev , betev
       totalev =  totalev -2*betev      #Even Wager  win
       betev = -100
    if 'ma' in methods:
       global totalma , betma
       totalma =  totalma -2*betma      #Martingale win
       betma = -100
    if 're' in methods:
       global totalre , betre
       totalre =  totalre -2*betre      #Reverse Martingale win
       betre = 2*betre
       betre = min(-betre, totalre)
       betre = -betre
    return totalev,totalma,totalre,betev,betma,betre

      
def loose(methods):    
    if 'ev' in methods:
       global totalev , betev           #Even Wager loose
       totalev = totalev + betev
       betev = -100
    if 'ma' in methods:
       global totalma , betma
       totalma = totalma + betma        #Martingale loose
       betma = 2* betma
       betma = min(-betma, totalma)
       betma = -betma
    if 're' in methods:
       global totalre , betre           #Reverse Martingale loose
       totalre = totalre + betre
       betre = -100
    return totalev,totalma,totalre,betev,betma,betre


for j in range(0,ROUNDS):
    print '\n','='*35,'ROUND',j+1,'='*35
    totalev = totalma = totalre = 1000
    betev = betma = betre = -100
    resultev = []
    resultma = []
    resultre = []
    methods = ['ev','ma','re']
    sum = 0
    for i in range(0,GAMES):
        if methods == []:
            print 'GAME OVER'
            exit
        if totalev <= 0 :
            if 'ev' in methods:
                methods.remove('ev')
        if totalma <=0 :
            if 'ma' in methods:
                methods.remove('ma')
        if totalre <=0 :
            if 're' in methods:
                methods.remove('re')
        print totalev,'\t',betev,'\t\t',totalma,'\t',betma,'\t\t',totalre,'\t',betre,'\t',
        dice1 = random.randint(1, 6)
        dice2 = random.randint(1, 6)
        sum = dice1+dice2
        if sum == 7 or sum == 11:
            print sum,'\t','WIN'
            totalev,totalma,totalre,betev,betma,betre = win(methods)
        elif sum == 2 or sum ==3 or sum == 12:
            print sum,'\t','LOOSE'
            totalev,totalma,totalre,betev,betma,betre = loose(methods)
        else:
            check = sum
            temp = random.randint(1, 6) + random.randint(1, 6)
            while temp not in [check,7]:
                temp = random.randint(1, 6) + random.randint(1, 6)
            if temp == check:
                print check,'\t','WIN'
                totalev,totalma,totalre,betev,betma,betre = win(methods)
            else:
                print temp,'\t','LOOSE'
                totalev,totalma,totalre,betev,betma,betre = loose(methods)
    var = [totalev,totalma,totalre]
    maxx = var.index(max(var))
    consider[maxx]=consider[maxx]+1
    print totalev,'\t\t\t',totalma,'\t\t\t',totalre
print 'After analyzing the data , method ,', list(enumerate(M_names))[consider.index(max(consider))][1] ,' is best suited for this game of CRAPS'
f.close
            
            
    
