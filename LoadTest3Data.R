set.seed(202211309)

meqData <- data.frame(participant = paste0("p_",(sample(LETTERS, 9*2, replace=F))), MEQ = factor(rep(c("morning","evening"), each=9)), openness = round(c(runif(9, 4, 12), runif(9, 8, 20))))


gameData <- data.frame(Participant=1:8, Before=c(8,2,6,3,7,8,7,4), After =c(6,4,7,5,10,9,9,7))
gameData.long <- data.frame(participant=c(1:8,1:8), time=factor(rep(c("before","after"),each=8)), memory=c(8,2,6,3,7,8,7,4, 6,4,7,5,10,9,9,7))


pedsData = data.frame(numChildren=rep(c("one","two","three"), each=8, times=1),
                      arrivalTime = c(sample(c(-5:-1,1:10), 8, replace=F), sample(c(-8:-1,1:4), 8, replace=F), sample(c(-12:-2, 1), 8, replace=F)))

forageData = data.frame(antID=rep(letters[1:10]),
                        chamber=factor(rep(1:3,each=10, times=1), label="cham"),
                        duration=round(c(rnorm(10,8,2),rnorm(10,10,2),rnorm(10,6,2)),1))

print("---------")
print("success! data loaded!")
print(paste("good luck,",Sys.info()[["user"]]))
print("---------")