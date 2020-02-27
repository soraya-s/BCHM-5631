options(stringsAsFactors = FALSE)


peak_names <- c("peak_15", "peak_16", "peak_17")
peak_counts <- c(40, 140, 240)
in_gene_body <- c(T, F, F)

peak_df <- data.frame("name" = peak_names, 
                      "counts" = peak_counts,
                      "gene_body" = in_gene_body)


ip_category <- c("tf", "tf", "tf", "histone_mark", "input", "input")
ip_category <- factor(ip_category)
ip_category
as.numeric(ip_category)

?sum
sum <- 2 + 1
sum
sum <- c(1:6)
sum
sum(sum)


objects()
ls()
rm(sum)
rm(list=ls())

x <- 15; y <- matrix(2:5, 2, 2)
y
object.size(y)
object.size(x)

is.vector(x)
is.vector(y)
as.vector(y)
is.vector(y)

x <- seq(from = 0, to = 2*pi,
         len = 1000)
y <- cos(2*x)
plot(x,y)


par()
plot(x, y, main = "cos", type = "l", lty =2)

y2 <- sin(2*x)
lines(x, y2)

hist(y2)
hist(y)

dev.list()
dev.cur()

pdf(file = "hist.pdf", height =7, width = 7)
hist(rnorm(1000))
dev.off()

getwd()
base_path <- "/Shares/rinn_class/data/k562_chip/"
setwd(base_path)
#on the right: more -> Go to working directory

full_path <- paste0(base_path, "results/bwa/mergedLibrary/deepTools/plotProfile/")
#paste0 removes space that defaults with space
setwd(full_path)

# want to read in .tab files
# x <- scan(file = "AFF1_R1.plotProfile.tab",
#           skip = 2,
#           nlines = 1,
#           what = character())
plot(as.numeric(x[2:702]))

x <- read.table(file = "AFF1_R1.plotProfile.tab",
                header = T,
                skip = 1)
write.csv(x, file = "AFF_R1.csv", row.names = F)





install.packages("tidyverse")

setwd(full_path)
library(tidyverse)
x <- read.table(file = "AFF1_R1.plotProfile.tab",
                header = T,
                skip = 1)
x$bins <- NULL # removes bins column
x$sample_name <- "AFF_R1"
x_long <- gather(x, key = "position",
                 value = "value",
                 1:700)
x_long$position <- gsub("X","", x_long$position)
x_long$position <- as.numeric(x_long$position)

g <- ggplot(x_long, aes(x = position, y = value))
g + geom_point() +
  geom_line()
dev.off() #if stuff isn't working then try this!!



y <- 6
for(i in 1:y) {
  i <- i*6
  print(i)
}








