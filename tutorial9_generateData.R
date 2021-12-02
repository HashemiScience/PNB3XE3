# Data generation script for PNB 3XE3 Tutorial 9

# so we're all working with the same data, let's set the seed so the same random numbers are generated for everyone. It's important that everything in this script runs in the same order with no intervening lines of code, otherwise it may through off the random number generater sequence!
set.seed(20211201)
print("seed successfully set to 20211201")

# create two ind. samples
data1 <- data.frame(iv = factor(rep(c("first","second"), each=10)),
                    dv = c(rnorm(10, mean=150, sd=15),
                           rnorm(10, mean=170, sd=15)))
print("data1 loaded successfully")

# create paired samples
data2 <- data.frame(subj = factor(rep(1:10,times=2),label="s"),
                    iv = factor(rep(c("first","second"), each=10)),
                    dv = c(rnorm(10, mean=150, sd=15),
                           rnorm(10, mean=170, sd=15)))
print("data2 loaded successfully")

# create paired samples (wide)
data3 <- data.frame(subj = factor(rep(1:10),label="s"),
                    firstCond = rnorm(10, mean=150, sd=15),
                    secondCond = rnorm(10, mean=170, sd=15))
print("data3 loaded successfully")

# create multi group dataset
data4 <- data.frame(iv = factor(rep(c("first","second","third","fourth"), each=10)),
                    dv = c(rnorm(10, mean=sample(140:170,1), sd=15),
                           rnorm(10, mean=sample(140:170,1), sd=15),
                           rnorm(10, mean=sample(140:170,1), sd=15),
                           rnorm(10, mean=sample(140:170,1), sd=15)))
print("data4 loaded successfully")

# create factorial design
data5 <- data.frame(factorA = factor(rep(c("A1","A2"), each=10, times=2)),
                    factorB = factor(rep(c("B1","B2"), each=20, times=1)),
                    dv = c(rnorm(10, mean=130, sd=15),
                           rnorm(10, mean=150, sd=15),
                           rnorm(10, mean=160, sd=15),
                           rnorm(10, mean=135, sd=15)))
print("data5 loaded successfully")

# create repeated measures design
data6 <- data.frame(subj = factor(rep(1:10,times=4),label="s"),
                    iv = factor(rep(LETTERS[1:4], each=10), label="block"),
                    dv = c(rnorm(10, mean=130, sd=15),
                           rnorm(10, mean=150, sd=15),
                           rnorm(10, mean=160, sd=15),
                           rnorm(10, mean=135, sd=15)))

print("data6 loaded successfully")

