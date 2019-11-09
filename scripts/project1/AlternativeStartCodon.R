library(seqinr)

loc <- "/project/hackathon/hackers05/shared/project1/data/prot.fa/"
file <- ".prot.fa"
sp <- c("human","chicken","horse","mouse","pig","platypus","rat","rhesus_macaque","zebrafish")

filter.aa.length <- 25
filter.M.count <- 0

for (i in sp[1]){
  assign(paste0(i,".fa"),read.fasta(paste0(loc,i,file),seqtype="AA",as.string=TRUE,seqonly=FALSE))
  temp.length <- list()
  temp.M <- list()
  temp.M.count <- list()
  for (j in names(get(paste0(i,".fa")))){
    if (nchar(as.character(get(paste0(i,".fa"))[j]))>=filter.aa.length){
      temp.length[j] <- nchar(as.character(get(paste0(i,".fa"))[j]))
      temp.M[[j]] <- as.vector(gregexpr("M",as.character(get(paste0(i,".fa"))[j]))[[1]])
      if (temp.M[[j]][1]==-1){temp.M[j]=NULL}
      temp.M.count[j] <- length(temp.M[[j]])
      assign(paste0(i,".length"),temp.length)
      assign(paste0(i,".M"),temp.M)
      assign(paste0(i,".M.count"),temp.M.count)
    }
  }
  rm(temp.length)
  rm(temp.M)
  rm(temp.M.count)
}
rm(i)
rm(j)

hist(unlist(human.M.count),breaks=50,xlab="Number of Methionine",main="Human Putative Alternative Start Sites")
summary(unlist(human.M.count))
for (i in sp[1]){
  assign(paste0(i,".prot.filter.",filter.M.count),names(get(paste0(i,".M.count"))[get(paste0(i,".M.count"))>0]))
  assign(paste0(i,".fa.filter"),get(paste0(i,".fa"))[names(get(paste0(i,".fa"))) %in% get(paste0(i,".prot.filter.",filter.M.count))])
  write.fasta(get(paste0(i,".fa.filter")),names=names(get(paste0(i,".fa.filter"))),file.out=paste0("/project/hackathon/hackers05/shared/project1/output/",i,".filter.",filter.M.count,".fa"))
}
rm(i)

for (i in sp[-1]){
  assign(paste0(i,".fa"),read.fasta(paste0(loc,i,file),seqtype="AA",as.string=TRUE,seqonly=FALSE))
  temp.length <- list()
  temp.M <- list()
  temp.M.count <- list()
  for (j in names(get(paste0(i,".fa")))){
    if (nchar(as.character(get(paste0(i,".fa"))[j]))>=filter.aa.length){
      temp.length[j] <- nchar(as.character(get(paste0(i,".fa"))[j]))
      temp.M[[j]] <- as.vector(gregexpr("M",as.character(get(paste0(i,".fa"))[j]))[[1]])
      if (temp.M[[j]][1]==-1){temp.M[j]=NULL}
      temp.M.count[j] <- length(temp.M[[j]])
      assign(paste0(i,".length"),temp.length)
      assign(paste0(i,".M"),temp.M)
      assign(paste0(i,".M.count"),temp.M.count)
    }
  }
  rm(temp.length)
  rm(temp.M)
  rm(temp.M.count)
}
rm(i)
rm(j)

for (i in sp[-1]){
  assign(paste0(i,".prot.filter.",filter.M.count),names(get(paste0(i,".M.count"))[get(paste0(i,".M.count"))>0]))
  assign(paste0(i,".fa.filter"),get(paste0(i,".fa"))[names(get(paste0(i,".fa"))) %in% get(paste0(i,".prot.filter.",filter.M.count))])
  write.fasta(get(paste0(i,".fa.filter")),names=names(get(paste0(i,".fa.filter"))),file.out=paste0("/project/hackathon/hackers05/shared/project1/output/",i,".filter.",filter.M.count,".fa"))
}
rm(i)
