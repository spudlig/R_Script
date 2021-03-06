############ difference
dtw_shst_y100<-diss(shiftt,METHOD = "EUCL")

### DTW
#weibull 
shiftt<-matrix(NA,227,30)
for (i in seq(1,227,1)){
  shiftt[i,]<-shiftst_30_227[[i]][,1]
}
rownames(shiftt)<-names(shiftst_30_227)
dtw_shst_y100<-diss(shiftt,METHOD = "DTWARP")
dtw_shst_y100_clust<-hclust(dtw_shst_y100)
dtw_shst_y100_cut6<-cutree(dtw_shst_y100_clust,k=6)
plot(hclust(dtw_shst_y100))
hc_a<-dtw_shst_y100_cut6[order(dtw_shst_y100_cut6)]
newmap <- getMap(resolution = "high")
plot(newmap,xlim = c(-20,35),ylim = c(35,73),asp = 1)
### cluster group 1
hc_a_1<-hc_a[c(1:95)]
hc_1<-matrix(NA,95,3)
for (i in seq(1:95)){
  for (j in seq(1:227))
    if(names(hc_a_1)[i]==comp[j]){
      hc_1[i,]<-maa_y60[j,]
    }
}
points(hc_1[,3],hc_1[,2],col="green",pch=16)
colnames(resw_r1)
#compare correlation region1 with dtw region hc_a_1
sim_crdtw_1<-matrix(NA,95,1)
for(i in seq(1:95)){
  for(j in seq(1:92)){
    if(names(hc_a_1)[i]==colnames(resw_r1)[j]){
      sim_crdtw_1[i,1]<-names(hc_a_1)[i]
    }
  }
}

### cluster group 2
hc_a_2<-hc_a[c(96:130)]
hc_2<-matrix(NA,34,3)
for (i in seq(1:34)){
  for (j in seq(1:227))
    if(names(hc_a_2)[i]==comp[j]){
      hc_2[i,]<-maa_y60[j,]
    }
}
points(hc_2[,3],hc_2[,2],col="red",pch=16)
#compare correlation region2 with dtw region hc_a_2
sim_crdtw_2<-matrix(NA,34,1)
for(i in seq(1:34)){
  for(j in seq(1:92)){
    if(names(hc_a_2)[i]==colnames(resw_r2)[j]){
      sim_crdtw_2[i,1]<-names(hc_a_2)[i]
    }
  }
}


### cluster group 3
hc_a_3<-hc_a[c(131:165)]
hc_3<-matrix(NA,34,3)
for (i in seq(1:34)){
  for (j in seq(1:227))
    if(names(hc_a_3)[i]==comp[j]){
      hc_3[i,]<-maa_y60[j,]
    }
}
points(hc_3[,3],hc_3[,2],col="orange",pch=16)

### cluster group 4
hc_a_4<-hc_a[c(166:188)]
hc_4<-matrix(NA,22,3)
for (i in seq(1:22)){
  for (j in seq(1:227))
    if(names(hc_a_4)[i]==comp[j]){
      hc_4[i,]<-maa_y60[j,]
    }
}
points(hc_4[,3],hc_4[,2],col="blue",pch=16)

### cluster group 5
hc_a_5<-hc_a[c(198:220)]
hc_5<-matrix(NA,22,3)
for (i in seq(1:22)){
  for (j in seq(1:227))
    if(names(hc_a_5)[i]==comp[j]){
      hc_5[i,]<-maa_y60[j,]
    }
}
points(hc_5[,3],hc_5[,2],col="violet",pch=16)

### cluster group 6
hc_a_6<-hc_a[c(221:227)]
hc_6<-matrix(NA,6,3)
for (i in seq(1:6)){
  for (j in seq(1:227))
    if(names(hc_a_6)[i]==comp[j]){
      hc_6[i,]<-maa_y60[j,]
    }
}
points(hc_6[,3],hc_6[,2],col="yellow",pch=16)

