install.packages("bnlearn")
library(bnlearn)

#plot1
result1<-empty.graph(names(carcinoma.train))
modelstring(result1) = paste("[AGE][SEX|GRADE:TX][TX|SITE:N_STAGE][GRADE][COND][SITE][T_STAGE][N_STAGE][STATUS|AGE:SEX:TX:GRADE:COND:SITE:T_STAGE:N_STAGE] ")
plot(result1)
score(result1,carcinoma.train,type="bde") 
#calculting arc strength of network
strength<-arc.strength(result1,carcinoma.train)


#plo2==plot1

result3<-empty.graph(names(carcinoma.train))
modelstring(result3) = paste("[AGE][SEX|GRADE:TX][TX|SITE:N_STAGE][GRADE][COND|SITE:N_STAGE][SITE][T_STAGE][N_STAGE][STATUS|AGE:SEX:TX:GRADE:COND:SITE:T_STAGE:N_STAGE] ")
plot(result3)
score(result3,carcinoma.train,type="k2") 
#calculting arc strength of network
strength<-arc.strength(result3,carcinoma.train)


result4<-empty.graph(names(carcinoma.train))
modelstring(result4) = paste("[AGE][SEX|GRADE:TX][TX|SITE:N_STAGE][GRADE][COND|SITE:N_STAGE][SITE][T_STAGE|SITE][N_STAGE][STATUS|AGE:SEX:TX:GRADE:COND:SITE:T_STAGE:N_STAGE] ")
plot(result4)
score(result4,carcinoma.train,type="bde") 
#calculting arc strength of network
strength<-arc.strength(result4,carcinoma.train)