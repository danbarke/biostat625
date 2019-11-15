results=vector(mode="list", 2L)
for (i in 1:2){
	load(paste0(i, ".Rdata"))
	results[[i]]=output
}
save(results, file="combinedresults.Rdata")
