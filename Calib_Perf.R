
setwd("/scratch/os22/dc0105/AWRA/Qcalib_perf")
storepath<-"/scratch/os22/dc0105/AWRA/"
perfpath<- "/scratch/os22/dc0105/AWRA/Qcalib_perf"

files_perf = list.files(path = perfpath,full.names = F ,pattern =  "*_resamp_performance.csv" ) 
# catname_all = substr(files_perf,1,6)

split_file = strsplit(files_perf, "_resamp")
catname_all =  sapply(split_file,"[[",1)

perf_9414 = NULL
for (i in 1:length(files_perf)) {
  
  fn = files_perf[i]
  perf_data = read.csv(fn)
  perf_9414 = rbind(perf_9414, perf_data)
}

perf_9414_df = data.frame(ID = catname_all, perf_9414)

write.table(perf_9414_df, paste0(storepath, "Q_perf_9414.csv"), row.names = F, quote = F)

