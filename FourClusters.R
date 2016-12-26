x1<-runif(100,0,1)
x2<-runif(100,3,4)
x3<-runif(100,0,1)
x4<-runif(100,3,4)
x_un1<-union(x1,x2)
x_un2<-union(x3,x4)
x_tot<-union(x_un1,x_un2)


y1<-runif(100,0,1)
y2<-runif(100,0,1)
y3<-runif(100,3,4)
y4<-runif(100,3,4)
y_un1<-union(y1,y2)
y_un2<-union(y3,y4)
y_tot<-union(y_un1,y_un2)


final<-data.frame(x_tot,y_tot)

plot(final)

library(foreign)
write.arff(final,file="points.arff")
