
set.seed(20220615)

needleData = data.frame(child=c(rep("g1",14), rep("g2",14)), cortisol=c(runif(14,20,40), runif(14,24,35)))

##

opennessData <- data.frame(participant = paste0("person",(sample(LETTERS, 9*2, replace=F))), MEQ = factor(rep(c("morning","evening"), each=9)), openness = round(c(runif(9, 4, 12), runif(9, 8, 20))))

##

gameData <- data.frame(Participant=1:8, Before=c(8,2,6,3,7,8,7,4), After =c(6,4,7,5,10,9,9,7))

##

pedsData = data.frame(numChildren=rep(c("one","two","three"), each=8, times=1), arrivalTime = sample(c(-10:-1, 1:14), 8*3, replace=F))

##

forageData = data.frame(antID=rep(letters[1:10]), chamber=factor(rep(1:3, each=10, times=1), label="c"), duration=round(c(rnorm(10,8,2), rnorm(10,10,2), rnorm(10,6,2)), 1))

##

pnbData <- data.frame(program=factor(rep(1:4,each=25),label="p"), score=c(rnorm(25,4.7,1.1), rnorm(25,5.8,1.05), rnorm(25,6.3,.98), rnorm(25,6.0,1.2)))

##

arousalData <- data.frame(congruence=rep(c("congruent","incongruent"),each=4,times=4), stress=rep(c("none","low","medium","high"), each=8,times=1), score=round(c(rnorm(8, 20, 2), rnorm(8, 23, 2.1), rnorm(8, 28, 2.7), rnorm(8, 32, 3.2)),1))

##

rtData <- data.frame(subj=factor(rep(1:17,times=3),label="s"),colour=factor(rep(c("green","red","blue"), each=17, times=1)), rt=c(sample(450:650,17), sample(450:750,17), sample(450:650,17)))

print("---------")
print("success! data loaded!")
print(paste("now let's kick some butt,",Sys.info()[["user"]]))
print("---------")