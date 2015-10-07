library(rpart)
f <- read.table(file = "workspace/ml2_tree/data_sets1/training_set.csv",header = TRUE,sep = ",")
$XB
f$XO
f$Class
t <- factor(f$Class,levels = 0:1,labels = c("Yes","No"))
print t
t
t <- factor(f$Class,levels = 0,labels = "Yes")
t
w <- f$Class
w = f$Class
w
w == t
t <- factor(f$Class,levels = 0:1)
t
w = f$Class
w
w == t
data(w)
mm <- 0:10
mm
mm = 0:10
mm
data(mm)
data(list=character())
data(package=mm)
data(package="mm")
data(package="rpart")
data(package="rpart")
data(package="rpart")
str(car90)
car90
ff  <- car90
ff$Country
?rpart
str(stagec)
progstat <- factor(x=stagec$pgstat,levels = 0:1 , labels = c("progress","No"))
str(stagec)
cfit <- rpart(progstat ~ age+eet+g2+grade+gleason+ploidy,data = stagec , method='class')
cfit
?method
?method
plot(cfit)
text(cfit)
?par
par(mar = rep(0.1,4))

plot(cfit)
par(mar = rep(1,4))
decision <- factor(x= f$Class , levels = 0:1 , labels = c("Yes","No"))
f$'data.frame'

str(f)
ml2_assign <- rpart( decision ~ XB+XC+XD+XE+XF+XG+XH+XI+XJ+XK+XL+XM+XN+XO+XP+XQ+XR+XS+XT+XU  ,data = f , method = 'class' ,parms = list(split="information") , minsplit = 1,minbucket = 1 )
print(ml2_assign)
plot
str(ml2_assign)
short_ml2_assign <- prune(ml2_assign,cp = 0.01)
par(mar = rep(1,4))
plot(ml2_assign); text(ml2_assign,use.n = TRUE )

plot(short_ml2_assign); text(short_ml2_assign,use.n = TRUE )
printcp(short_ml2_assign)


data(car90)
str(car90)
fit1 <- rpart(Reliability ~ Country + Mileage + Type + Price , data = car90 )
plot(fit2,margin = 0.05); text(fit2,use.n = TRUE ,cex = 0.8)
plot(fit1,margin = 0.05); text(fit1,use.n = TRUE ,cex = 0.8)
short_fit1 <- prune(fit1,cp = 0.1)
plot(short_fit1,margin = 0.05); text(short_fit1,use.n = TRUE ,cex = 0.8)
printcp(fit1)
