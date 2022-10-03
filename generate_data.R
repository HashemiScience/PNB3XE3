set.seed(20220907)
conscData <- data.frame(younger=abs(round(rnorm(25,2,1))), older=abs(round(rnorm(25,2.2,2))))

set.seed(20220518)
loudData <- data.frame(red=round(rnorm(12,mean=64,sd=3)), blue=round(rnorm(12,mean=60,sd=3)))