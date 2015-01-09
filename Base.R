#goal: Build a shiny App that allows input of the following:
 #Weapon (from dropdown, ideally)
 #Conversions (")
 #Hero (")
 #Rank and type of active skill (")
 #and outputs the expected damage of  against a representative set of enemies (Warrior, Paladin, etc)


damagecalc<-function(weapon,hero,conversions,special){

dtypes<-getherotype(hero)
effectivedef<-(100/((getbaseenemystats(dtypes)-getarpen(conversions))*0.348))
effectivedef[effectivedef<0]<-0 #can never go below 0




}

getbaseenemystats<-function(dtypes){
    #baseline enemy is the first nonlegendary 6* (may include traininglevel later)
    #Warrior: Joan (235/50)
    #Paladin: Thor (63/309)
    #Archer: Gon (181/181)
    #Hunter: Maxi (174/49)
    #Wizard: Archon (58/236)
#for now i'm going to say that this boils down to 250, 175, and 75 armor and 300,200,50 mr
#also assuming that dtypes comes in as 0/1 where 0 = physical and 1 = magical
#dtypes should be vector length 2 (one for block, one for special)
#output should be matrix (2x3 - one row for block, one row for special)
    ar<-c(250,175,75)
    mr<-c(300,200,50)
output<-matrix(rep(c(250,175,75),2),nrow=2,ncol=3)
if(dtypes[1]==1){output[1,]<-c(300,200,50)}
if(dtypes[2]==1){output[2,]<-c(300,200,50)}
    return(output)
}
getherotype<-function(hero="Leon",special="Final Judgment"){
    ##looks up thehero name from a data file.  Finds his damage type
    #then looks up the active name. Finds its type
    #i dont have a data file now, so i'm using the default..
    #leon does physical damage for his 1,2,and 3 chains
    #he also does physical damage for his active.
    return(c(0,0))

}
getheromultipliers<-function(hero="Leon",special="Final Judgment",level=4){
    #again this is where the function should look up heroes from the data , specials from the data, and pop out damage values.
    #however for now it's just going to be what leon gives.
    #(Leon of light, technically)
    #base power, active multiplier (1,2,3), special multiplier (passive?), critchance
    damages<-(c(535,0.56,1.78,3.22,6.0,.115))
    return(damages)
}
#list of (maximum) conversions
getarpen<-function(conversions){
    #this is where setting defaults gets awkward.  I want 0 but i also want to be able to assume nonzero

}
#conversionmatrix<-data.frame(attack=c("CD30","AP100","RP100","P10","CD75","AP250","RP250","P25"),util=c("CC5","AS15","LS7","CC12","AS30","LS15","CC18","blank"))
#conversion stats: CritDamage, Armor Pen, Resist Pen, Percent damage ; util = CritChance, Attack Speed, Life Steal #Attack speed is ignored here.
#conversion basic = input CritChance, CritDamage, PercentDamage, ArmorPen, Resist Pen


#vivian
#damages<-c(479,0.56,1.78,3.22,3.8,.175) #+150 base while special active
#GS= 84 base + 11.5%, 2 AS (46% total)
#FT=52 base 10% CC 56% CD
#FT=52 base 49% CD 8%LS
#WS=37 base 115 RP 10% LS


#feeding strategy
4900#6 (???)
3200#5 (7900)
1900#4  (2900) (1934) (967 ea):
1300#3 (800) (534) :  (150*3+144*1) c 5200 (.95)


600 0
180 70
330 0
264 20
99  70
180 0
150 25
144 20
54  70
100 0



