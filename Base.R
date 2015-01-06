#goal: Build a shiny App that allows input of the following:
 #Weapon (from dropdown, ideally)
 #Conversions (")
 #Hero (")
 #Rank and type of active skill (")
 #and outputs the expected damage of  against a representative set of enemies (Warrior, Paladin, etc)


damagecalc<-function(basepower,weapon,hero,conversions,special){

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