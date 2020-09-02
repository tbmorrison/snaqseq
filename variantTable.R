###create variant table from PASS calls
tempCalls=ntCalls[ntCalls$FILTER=="PASS",]
tempCalls$v1=log10(tempCalls$AD.x/tempCalls$DP.x)
tempCalls$sort<-paste(tempCalls$CHROM,tempCalls$POS,tempCalls$REF,tempCalls$ALT,sep="_")
varRow<-data.frame(variant=unique(tempCalls$sort))
Samples<-unique(tempCalls$fn)
varTable<-matrix(nrow=nrow(varRow),ncol=length(Samples))
for (i in 1:nrow(varRow)){
  for (j in 1: length(Samples)){
    temp<-tempCalls$v1[tempCalls$sort==varRow$variant[i] & vcf3$sample==Samples[j]]
    if (length(temp)){
      varTable[i,j]<-as.numeric(temp[1][1])
    }
  }
}
colnames(varTable)<-Samples
varTable<-data.frame(varTable,stringsAsFactors = FALSE)
varTable<-data.frame(varRow,varTable,stringsAsFactors = FALSE)
varTable<-varTable[,order(names(varTable))]
#temp=data.frame(variant=paste(tp2$CHROM,tp2$START,tp2$REF,tp2$ALT,sep="_"),filter=tp2$filter)
#varTable<-merge(varTable,temp,by="variant",all.x=TRUE)
write.table(varTable,file=paste0("Variants_", format(Sys.time(), "%Y%m%d_%H%M%S"),".csv"),sep=",", row.names=FALSE)

