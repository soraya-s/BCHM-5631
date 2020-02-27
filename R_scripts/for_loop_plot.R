base_path <- "/Shares/rinn_class/data/k562_chip/"
full_path <- paste0(base_path, "results/bwa/mergedLibrary/deepTools/plotProfile/")

home_path <- "/Users/sosh9992/BCHM-5631/"
setwd(home_path)

library(tidyverse)

design <- read.csv(file = paste0(base_path, "design.csv")) #so important to read as .csv NOT .table
design_df <- data.frame("sample_name" = design$group,
                        "replicate" = design$replicate)

complete_name <- paste0(design_df$sample_name, "_R", design_df$replicate)
complete_name <- as.vector(complete_name)

#full_path
#makes list of all the files in the directory full_path with a .tab suffix
tab_files <- list.files(path = full_path, pattern = "*.tab", full.names = T)

#tab_files

for(x in tab_files){
  y <- read.table(file = x,
                  header = T,
                  skip = 1)
  y$bins <- NULL
  y$sample_name <- gsub(paste0(full_path, "/"),"", x) # fixes names of files so it's just TF
  y$sample_name <- gsub(".plotProfile.tab","", y$sample_name)
  
  y_long <- gather(y,
                   key = "position",
                   value = "value",
                   1:700)
  y_long$position <- gsub("X", "", y_long$position) #remove X from chr position
  y_long$position <- as.numeric(y_long$position) #switch to numeric
  
  pdf_name <- as.character(paste0(y$sample_name, ".pdf"))
  #print(pdf_name)
  
  pdf(file = pdf_name, height =7, width = 7)
  g <- ggplot(y_long, aes(x = position, y = value))
  #ggplot doesn't work inside a loop? so it has to be explicitly printed.
  print(g + geom_point() + geom_line())
  dev.off()
 
}

