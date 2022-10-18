set.seed(20221019)
conscData <- data.frame(younger=abs(round(rnorm(33,1.75,1.5))), older=abs(round(rnorm(33,2.55,2))))

set.seed(20221019)
loudData <- data.frame(red=round(rnorm(14,mean=64,sd=3)), blue=round(rnorm(14,mean=60,sd=3)))
