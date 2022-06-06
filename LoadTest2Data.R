set.seed(202206068)
stroopData <- data.frame(subjID = factor(rep(1:16, each=1, times=2),label="s"),
                         congruency=factor(rep(c("congruent","incongruent"), each=16, times=1)),
                         rt=round(c(sample(rnorm(1000,511,25), 16), sample(rnorm(1000,540,25), 16)),1))


set.seed(202206069)
ageData <- data.frame(participant=factor(1:(10*4),label="p"),
                      age=factor(rep(c("younger","older"), each=20, times=1)),
                      modality=factor(rep(c("visual","auditory"), each=10, times=2)),
                      sensitivity=round(c(runif(10,0.8,2.4),runif(10,0.8,1.5),runif(10,0.8,2.4),runif(10,0.8,1.5)),2))
