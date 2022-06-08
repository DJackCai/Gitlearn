
setwd("/scratch/os22/dc0105/AWRA/Qcalib_perf")
storepath<-"/scratch/os22/dc0105/AWRA/"
perfpath<- "/scratch/os22/dc0105/AWRA/Qcalib_perf"


perf_9414 = NULL


files_perf = list.files(path = perfpath,full.names = F ,pattern =  "*_resamp_performance.csv" ) 
