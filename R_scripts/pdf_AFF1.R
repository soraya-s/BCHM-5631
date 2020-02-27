#pulling files from class, writing pdf to sosh9992
#only AFF1

getwd()

base_path <- "/Shares/rinn_class/data/k562_chip/"
full_path <- paste0(base_path, "results/bwa/mergedLibrary/deepTools/plotProfile/")

home_path <- "/Users/sosh9992/BCHM5631/"
setwd(home_path)

#work out of my fiji directory, but pull files from class
x <- read.table(file = paste0(full_path, "AFF1_R1.plotProfile.tab"),
                header = T,
                skip = 1)
library(tidyverse)

x$bins <- NULL
x$sample_name <- "AFF_R1"

# switch to long data
x_long <- gather(x,
                 key = "position",
                 value = "value",
                 1:700)

x_long$position <- gsub("X", "", x_long$position) #remove X from chr position
x_long$position <- as.numeric(x_long$position) #switch to numeric

dev.off()

pdf(file = "AFF_R1.pdf", height =7, width = 7)
g <- ggplot(x_long, aes(x = position, y = value))
g + geom_point() +
  geom_line()
dev.off()
