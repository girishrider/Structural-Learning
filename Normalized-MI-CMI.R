install.packages("infotheo")
library(infotheo)

carcinoma.train

number_of_columns<-ncol(carcinoma.train)
variables<-carcinoma.train[1:number_of_columns-1]
class_label<-carcinoma.train[,number_of_columns]

variable_names<-array(0,dim=c(1,number_of_columns))
for(n in seq(1,number_of_columns)){
  variable_names[n]<-colnames(carcinoma.train[n])
}

mutual_info1<-array(0,dim=c(1,number_of_columns-1))
for(n in seq(1,number_of_columns-1)){
  mutual_info1[n]<-round(mutinformation(carcinoma.train[n],carcinoma.train[number_of_columns]),digits=3)
}

mutual_info2<-array(0,dim=c(number_of_columns-1,number_of_columns-1))
for(n in seq(1,number_of_columns-1)){
  for(x in seq(1,number_of_columns-1)){
    mutual_info2[n,x]<-round(mutinformation(carcinoma.train[n],carcinoma.train[x]),digits=3)
  }
}

conditional_mutual_info<-array(0,dim=c(number_of_columns-1,number_of_columns-1))
for(n in seq(1,number_of_columns-1)){
  for(x in seq(1,number_of_columns-1)){
    conditional_mutual_info[n,x]<-round(condinformation(carcinoma.train[n],carcinoma.train[x],carcinoma.train[number_of_columns]),digits=3)
  }
}

entropy_variables<-array(0,dim=c(1,number_of_columns))
for(n in seq(1,number_of_columns)){
  entropy_variables[n]<-round(entropy(carcinoma.train[,n]),digits=3)
}
entropy_variables

joint_entropy1<-array(0,dim=c(1,number_of_columns-1))
for(n in seq(1,number_of_columns-1)){
  joint_entropy1[n]<-entropy_variables[n]+entropy_variables[number_of_columns]-mutual_info1[n]
}
joint_entropy1#joint entropy of variable and class label

joint_entropy2<-array(0,dim=c(number_of_columns-1,number_of_columns-1))
for(n in seq(1,number_of_columns-1)){
  for(x in seq(1,number_of_columns-1)){
    joint_entropy2[n,x]<-(entropy_variables[n]+entropy_variables[x]-mutual_info2[n,x])
  }}
joint_entropy2#joint entropy between variables

normalized_mutual_info1<-array(0,dim=c(1,number_of_columns-1))
for(n in seq(1,number_of_columns-1)){
  normalized_mutual_info1[n]<-round((mutual_info1[n]/joint_entropy1[n]),digits=3)
}

normalized_mutual_info2<-array(0,dim=c(number_of_columns-1,number_of_columns-1))
for(n in seq(1,number_of_columns-1)){
  for(x in seq(1,number_of_columns-1)){
    normalized_mutual_info2[n,x]<-round((mutual_info2[n,x]/joint_entropy2[n,x]),digits=3)
  }
}