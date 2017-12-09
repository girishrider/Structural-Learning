#plot1--b1=20% and b2=20%
result11<-empty.graph(names(carcinoma.train))
modelstring(result11) = paste("[AGE][SEX|GRADE:TX][TX|SITE:N_STAGE][GRADE][COND][SITE][T_STAGE][N_STAGE][STATUS|AGE:SEX:TX:GRADE:COND:T_STAGE:N_STAGE] ")
plot(result11)
score(result11,carcinoma.train,type="k2") 
#calculting arc strength of network
strength<-arc.strength(result11,carcinoma.train)

#plot1--b1=20% and b2=40%--same as result11
result12<-empty.graph(names(carcinoma.train))
modelstring(result12) = paste("[AGE][SEX|GRADE:TX][TX|SITE:N_STAGE][GRADE][COND][SITE][T_STAGE][N_STAGE][STATUS|AGE:SEX:TX:GRADE:COND:T_STAGE:N_STAGE] ")
plot(result12)
score(result12,carcinoma.train,type="k2") 
#calculting arc strength of network
strength<-arc.strength(result12,carcinoma.train)

#plot3--b1=20% and b2=60%
result13<-empty.graph(names(carcinoma.train))
modelstring(result13) = paste("[AGE][SEX|GRADE:TX][TX|SITE:N_STAGE][GRADE][COND|SITE:N_STAGE][SITE][T_STAGE][N_STAGE][STATUS|AGE:SEX:TX:GRADE:COND:T_STAGE:N_STAGE] ")
plot(result13)
score(result13,carcinoma.train,type="bde") 
#calculting arc strength of network
strength<-arc.strength(result13,carcinoma.train)

#plot4-b1=20% and b2=80%
result14<-empty.graph(names(carcinoma.train))
modelstring(result14) = paste("[AGE][SEX|GRADE:TX][TX|SITE:N_STAGE][GRADE][COND|SITE:N_STAGE][SITE][T_STAGE|GRADE:SITE][N_STAGE][STATUS|AGE:SEX:TX:GRADE:COND:T_STAGE:N_STAGE]")
plot(result14)
score(result14,carcinoma.train,type="k2") 
#calculting arc strength of network
strength<-arc.strength(result14,carcinoma.train)

#plot5-b1=40% and b2=20%
result21<-empty.graph(names(carcinoma.train))
modelstring(result21) = paste("[AGE][SEX|GRADE:TX][TX|SITE:N_STAGE][GRADE][COND][SITE][T_STAGE][N_STAGE][STATUS|AGE:GRADE:COND:T_STAGE:N_STAGE]")
plot(result21)
score(result21,carcinoma.train,type="bde") 
#calculting arc strength of network
strength<-arc.strength(result21,carcinoma.train)

#plot6-b1=40% and b2=40%-same as result21
result22<-empty.graph(names(carcinoma.train))
modelstring(result22) = paste("[AGE][SEX|GRADE:TX][TX|SITE:N_STAGE][GRADE][COND][SITE][T_STAGE][N_STAGE][STATUS|AGE:GRADE:COND:T_STAGE:N_STAGE]")
plot(result22)
score(result21,carcinoma.train,type="k2") 
#calculting arc strength of network
strength<-arc.strength(result21,carcinoma.train)

#plot7-b1=40% and b2=60%
result23<-empty.graph(names(carcinoma.train))
modelstring(result23) = paste("[AGE][SEX|GRADE:TX][TX|SITE:N_STAGE][GRADE][COND|SITE:N_STAGE][SITE][T_STAGE][N_STAGE][STATUS|AGE:GRADE:COND:T_STAGE:N_STAGE]")
plot(result23)
score(result23,carcinoma.train,type="bde") 
#calculting arc strength of network
strength<-arc.strength(result23,carcinoma.train)

#plot8--b1=40% and b2=80%
result24<-empty.graph(names(carcinoma.train))
modelstring(result24) = paste("[AGE][SEX|GRADE:TX][TX|SITE:N_STAGE][GRADE][COND|SITE:N_STAGE][SITE][T_STAGE|GRADE:SITE][N_STAGE][STATUS|AGE:GRADE:COND:T_STAGE:N_STAGE]")
plot(result24)
score(result24,carcinoma.train,type="k2") 
#calculting arc strength of network
strength<-arc.strength(result24,carcinoma.train)
