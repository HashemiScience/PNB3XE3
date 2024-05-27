set.seed(20240527)
samiDataW <- data.frame(group1.id = factor(1:28, label="p"),
                       group1.dv = rnorm(28, mean=25, sd=4),
                       group2.id = factor(29:56, label="p"),
                       group2.dv = rnorm(28, mean=29, sd=4))
samiDataL <- with(samiDataW, data.frame(id=c(group1.id, group2.id),
                        group=factor(rep(c(1,2), each=28), label="group"),
                        dv = c(group1.dv, group2.dv)))

remiData <- data.frame(music=rnorm(14,mean=7.3, sd=1))
remiData$noise <- remiData$music+rnorm(14,mean=0.4,sd=0.9)
