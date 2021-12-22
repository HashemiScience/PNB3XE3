# This script loads in a whole bunch of datasets. THis will load more data than what you will use on your test. Do not modify this code. In fact, you don't even need to be here!

set.seed(20211222)

examDataset53 <- data.frame(program=factor(rep(1:4,each=9),label="p"),
                            score=c(rnorm(9,4.7,1.1),
                                    rnorm(9,5.8,1.05),
                                    rnorm(9,6.3,.98),
                                    rnorm(9,6.0,1.2)))

examDataset78 <- data.frame(program=factor(rep(1:4,each=9),label="p"),
                            score=c(rnorm(9,4.6,1),
                                    rnorm(9,5.8,1),
                                    rnorm(9,6.4,1),
                                    rnorm(9,6.1,1)))

examDataset29 <- data.frame(program=factor(rep(1:4,each=9),label="p"),
                            score=c(rnorm(9,4.6,1),
                                    rnorm(9,5.8,1),
                                    rnorm(9,6.4,1),
                                    rnorm(9,6.1,1)))

set.seed(20211222)
examDataset88 <- data.frame(congruence=rep(c("congruent","incongruent"),each=4,times=4),
                            stress=rep(c("none","low","medium","high"), each=8,times=1),
                            score=round(c(rnorm(8, 20, 2),
                                          rnorm(8, 23, 2.1),
                                          rnorm(8, 28, 2.7),
                                          rnorm(8, 32, 3.2)),1))
examDataset44 <- data.frame(congruence=rep(c("congruent","incongruent"),each=4,times=4),
                            stress=rep(c("none","low","medium","high"), each=8,times=1),
                            score=round(c(rnorm(8, 21, 2),
                                          rnorm(8, 21.5, 2.1),
                                          rnorm(8, 26, 2.7),
                                          rnorm(8, 27, 3.2)),1))
examDataset66 <- data.frame(congruence=rep(c("congruent","incongruent"),each=4,times=4),
                            stress=rep(c("none","low","medium","high"), each=8,times=1),
                            score=round(c(rnorm(8, 20.5, 2),
                                          rnorm(8, 21, 2.1),
                                          rnorm(8, 25, 2.7),
                                          rnorm(8, 26, 3.2)),1))

set.seed(20211222)
examDataset13 <- data.frame(subj=factor(rep(1:19,times=3),label="s"),
                            colour=factor(rep(c("green","red","blue"), each=19, times=1)), 
                            rt=c(sample(450:650,19), sample(450:750,19), sample(450:650,19)))

examDataset96 <- data.frame(subj=factor(rep(1:21,times=3),label="s"),
                            colour=factor(rep(c("green","red","blue"), each=21, times=1)), 
                            rt=c(sample(450:675,21), sample(450:700,21), sample(450:675,21)))

print("---------")
print("success! data loaded!")
print(paste("now let's kick some butt,",Sys.info()[["user"]]))
print("---------")


