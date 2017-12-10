install.packages("bnlearn")
install.packages("caret")
library(bnlearn)
library(caret)

hill_climbing_cracinoma<-hc(carcinoma_data_3_non_numeric)
hill_climbing_cracinoma
plot(hill_climbing_cracinoma)
score(hill_climbing_cracinoma,carcinoma_data_3_non_numeric,"k2")

iamb_carcinoma<-iamb(carcinoma_data_3_non_numeric)
iamb_carcinoma
plot(iamb_carcinoma)
score(iamb_carcinoma,carcinoma_data_3_non_numeric,"k2")

mmhc_carcinoma<-mmhc(carcinoma_data_3_non_numeric)
mmhc_carcinoma
plot(mmhc_carcinoma)
score(mmhc_carcinoma,carcinoma_data_3_non_numeric,"k2")

nb_carcinoma<-naive.bayes(carcinoma_data_3_non_numeric,"STATUS")
nb_carcinoma
plot(nb_carcinoma)
score(nb_carcinoma,carcinoma_data_3_non_numeric,"k2")
predict_carcinoma_nb<-predict(nb_carcinoma, carcinoma_data_3_non_numeric)
table_carcinoma_nb<-confusionMatrix(predict_carcinoma_nb, carcinoma_data_3_non_numeric[, "STATUS"])
table_carcinoma_nb
value1<-bn.cv(carcinoma_data_3_non_numeric, nb_carcinoma, loss = "pred", method = "k-fold",loss.args = list(target = "STATUS"))
value1

tan_carcinoma<-tree.bayes(carcinoma_data_3_non_numeric,"STATUS")
tan_carcinoma
plot(tan_carcinoma)
score(tan_carcinoma,carcinoma_data_3_non_numeric,"k2")
predict_carcinoma_tan<-predict(tan_carcinoma, carcinoma_data_3_non_numeric)
table_carcinoma_tan<-confusionMatrix(predict_carcinoma_tan, carcinoma_data_3_non_numeric[, "STATUS"])
table_carcinoma_tan
value11<-bn.cv(carcinoma_data_3_non_numeric, tan_carcinoma, loss = "pred", method = "k-fold",loss.args = list(target = "STATUS"))
value11
