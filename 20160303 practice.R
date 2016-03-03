match = read.table("C:/Users/BIG DATA/Desktop/iii-R201603/data/match.txt", sep="|",stringsAsFactors=FALSE)
k = matrix(NA, nrow = 5, ncol = 5)

count = 1
for(i in 1:5){
  for (e in 1:5){
    if (i == e){
      
    }else{
    k[e,i]=match[count,3]
    count = count + 1
    }
  }
}

m = matrix(NA, nrow = 5, ncol = 5)
colnames(m)=c('A','B','C','D','E')
rownames(m)=c('A','B','C','D','E')
for(n in 1:nrow(match)){
  m[match[n,1],match[n,2]]=match[n,3]
}

address = data.frame(city=c('Taipei',"Jiayi"),address = c("shilin","taibou"))
