set.seed(20240610)
inhibitionData <- data.frame(subjID = factor(rep(1:16, each=1, times=3),label="s"),
                             congruency=factor(rep(c("congruent","incongruent", "neutral"), each=16, times=1)),
                             rt=round(c(sample(rnorm(1000,530,75), 16), sample(rnorm(1000,620,75), 16), sample(rnorm(1000,575,75), 16)),1))

sensitivityData <- data.frame(participant=factor(1:(10*6),label="p"),
                              age=factor(rep(c("younger","older"), each=30, times=1)),
                              modality=factor(rep(c("visual","auditory", "tactile"), each=10, times=2)),
                              sensitivity=round(c(runif(10,1.1,2.6), runif(10,0.9,2.0), runif(10,0.7,1.7), runif(10,1.1,2.6), runif(10,0.9,2.0), runif(10,0.8,1.8)),2))


meditationData <- data.frame(id = factor(1:48, label="ps"),
                             type = factor(rep(c("none","beginner","intermediate","expert"),
                                               each=12, times=1)),
                             pss = round(c(sample(20:40,12,replace=T),
                                           sample(15:40,12,replace=T),
                                           sample(10:35,12,replace=T),
                                           sample(5:30,12,replace=T))))




