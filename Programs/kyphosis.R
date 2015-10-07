library(rpart)
data("kyphosis")

#80% traning data , 20%test data
indx = sample(1:nrow(kyphosis) , 0.2*nrow(kyphosis))
length(indx)
train = kyphosis[-indx,]
test=kyphosis[indx,]
fit_kyp <- rpart(Kyphosis ~ Age + Number + Start, data = train, parms = list(split="information"))

#important values for tree construction
print("Import values of Tree for data - Kyphosis")
printcp(fit_kyp)
plot(fit_kyp,margin = 0.05); text(fit_kyp,use.n = TRUE )
print("value of cp for min xerror")
print(fit_kyp$cptable)
#par(mar = rep(1,4))

# cp chosen for which xerror is minimum
temp <- which.min(fit_kyp$cptable[,"xerror"])
cpp <- fit_kyp$cptable[temp,"CP"]


#pruning tree with obtained cp
ptree<- prune(fit_kyp, cp= cpp)
plot(ptree,margin = 0.05); text(ptree,use.n = TRUE )
predited <- predict(ptree , test , type = c("class"))

#getting accuracy of test data from pruned tree
accuracy = sum(predited == test$Kyphosis)/nrow(test)
print(" Accuracy of the pruned tree is:")
print(accuracy)

#90%training data 10%test data
indx = sample(1:nrow(kyphosis) , 0.1*nrow(kyphosis))
length(indx)
train = kyphosis[-indx,]
test=kyphosis[indx,]
fit_kyp <- rpart(Kyphosis ~ Age + Number + Start, data = train, parms = list(split="information"))

#important values for tree construction
print("Import values of Tree for data - Kyphosis")
printcp(fit_kyp)
plot(fit_kyp,margin = 0.05); text(fit_kyp,use.n = TRUE )
print("value of cp for min xerror")
print(fit_kyp$cptable)
#par(mar = rep(1,4))

# cp chosen for which xerror is minimum
temp <- which.min(fit_kyp$cptable[,"xerror"])
cpp <- fit_kyp$cptable[temp,"CP"]


#pruning tree with obtained cp
ptree<- prune(fit_kyp, cp= cpp)
plot(ptree,margin = 0.05); text(ptree,use.n = TRUE )
predited <- predict(ptree , test , type = c("class"))

#getting accuracy of test data from pruned tree
accuracy = sum(predited == test$Kyphosis)/nrow(test)
print(" Accuracy of the pruned tree is:")
print(accuracy)

