# 小測驗 -- 把match上的數字印在5x5的方格中
match = read.table("C:/Users/BIG DATA/Desktop/iii-R201603/data/match.txt", sep="|",stringsAsFactors=FALSE)
k = matrix(NA, nrow = 5, ncol = 5)

#方法一
for(i in 1:5){
  for (e in 1:5){
    if (i == e){
    }else{
    k[e,i]=match[count,3]
    }
  }
}

# 方法二
m = matrix(NA, nrow = 5, ncol = 5)
colnames(m)=c('A','B','C','D','E')
rownames(m)=c('A','B','C','D','E')
for(n in 1:nrow(match)){
  m[match[n,1],match[n,2]]=match[n,3]
}

#cbind的應用
address = data.frame(city=c('Taipei',"Jiayi"),address = c("shilin","taibou"))
x=c('tony','amy','curry','jeff')
contacts = cbind(name=x,address)

#print ( x ,digits=s,quote=F,right=T) 
#印出 至少s位數，quote=是否加雙引號，是否靠右
q = seq(from=0,to=3,by=0.5)
t1 = data.frame(Quant=q, Lower=pnorm(-q), Upper=pnorm(q))
z = print(t1,digits = 2, quote = T, right = T)

#輸出檔案，會存在預設路徑
name = "Tony"
cat("My name is", name, "\n", file="filename.txt")

#or

sink("filename.txt")
q = seq(from=0,to=3,by=0.5)
t1 = data.frame(Quant=q, Lower=pnorm(-q), Upper=pnorm(q))
print(t1)
z = print(t1,digits = 2, quote = T, right = T)
cat("The End....")
sink()

#使用R時，路徑的斜線要注意
#要使用"/"，否則就要使用"//"