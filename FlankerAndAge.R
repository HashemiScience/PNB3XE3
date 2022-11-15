set.seed(20221115)
flankerData <- data.frame(subjID = factor(rep(1:16, each=1, times=3),label="s"),
                         congruency=factor(rep(c("congruent","incongruent", "neutral"), each=16, times=1)),
                         rt=round(c(sample(rnorm(1000,530,75), 16), sample(rnorm(1000,620,75), 16), sample(rnorm(1000,575,75), 16)),1))

ageData <- data.frame(participant=factor(1:(10*4),label="p"),
                      age=factor(rep(c("younger","older"), each=20, times=1)),
                      modality=factor(rep(c("visual","auditory"), each=10, times=2)),
                      sensitivity=round(c(runif(10,0.8,2.4),runif(10,0.8,1.5),runif(10,0.8,2.4),runif(10,0.8,1.5)),2))