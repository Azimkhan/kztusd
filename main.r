jan <- c(150.81,155.4,184.45)
feb <- c(150.45,184.06,185.05)
mar <- c(150.84,182.04,185.65)
apr <- c(151.24,182.05,185.80)

m <- cbind(jan,feb,mar,apr)

rownames(m) <- c("2013","2014","2015")
m

glob_min = min(m)
glob_max = max(m)

colors <- c('red','green','blue')
matplot(t(m),type='l',ylim=c(glob_min-2,glob_max+2), col=colors)
legend('bottomright', inset=.05, legend=rownames(m), 
      pch=1, horiz=TRUE, col=colors)

mean_2014 <- mean(m[2,])
sd_2014 = sd(m[2,])

barplot(m[2,],legend.text ='2014', ylim=c(1,mean_2014 + sd_2014 + 4))
abline(h=mean_2014)
abline(h=mean_2014 + sd_2014,col=2)
abline(h=mean_2014 - sd_2014, col=3)


