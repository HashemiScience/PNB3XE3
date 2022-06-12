# sample script to be sourced
# this script will generate one data set for chi-square analysis
# this script will also load in a custom Hashemi function
hashemiPlot <- function(obsData, style="base"){

  expFreq = sum(obsData)/length(obsData)
  
  if(style=="base"){
    barplot(as.matrix(obsData), beside=T, ylab="frequency", xlab="family of tests", ylim=c(0, max(obsData)*1.2), main="frequency of favourite stats test")
    box()
    abline(h=expFreq)
  }
  if(style=="ggplot"){
    packagesRequired = c("ggplot2", "reshape2")
    print("checking if ggplot2 and reshape2 are installed, and if not, will automatically try installing them")
    install.packages(setdiff(packagesRequired, rownames(installed.packages(repos="https://cloud.r-project.org"))))
    
    print("will attempt to load ggplot2 and reshape2")
    library(ggplot2)
    library(reshape2)
    
    print("attempting to convert wide data to long data")
    obsLong <- melt(obsData)
    names(obsLong) <- c("testFamily", "frequency")
    
    print("making ggplot")
    
    myplot <- ggplot(obsLong, aes(x=testFamily, y=frequency)) +
      geom_col() +
      geom_hline(yintercept=expFreq) +
      ggtitle("frequency of favourite stats test")
    
    print(myplot)
    print("if you see a plot now, then YAY things worked!!!")
    
    
  }
}

print("---------")
print("successfully loaded 'hashemiPlot()' function")
print("hashemiPlot(data, style) accepts two arguments.")
print("'data' needs to be observed frequency data across a single variable (multiple categories.")
print("'style' needs to be defined as 'base' (default) or 'ggplot'")
print("---------")

favData <- data.frame(ttest=83, ANOVA=51, RR=18, chisquare=15)

print("successfully loaded 'favData' dataset")
print("favData contains data on how many PNB 3XE3 students rated a family of tests as their favourite test")
print("---------")


