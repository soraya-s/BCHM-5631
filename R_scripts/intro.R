x <- rnorm(100, mean = 4)
x
mean(x)
range(x)
hist(x)
?hist
hist(x, main = "bb's first plot")
?rpois
hist(rpois(10000000,10))
?rpois

x <- 3e3
x
half_x <- x/2
half_x
peak_sizes <- c(10, 80, 300)
peak_sizes[3]
length(peak_sizes)
length(x)
min(peak_sizes)
range(peak_sizes)
sqrt(peak_sizes)
log(peak_sizes)
log10(peak_sizes)
log(peak_sizes, base = 2)
peak_sizes[i]


seq(from = 10, to = 30, by = 3)
rep(c(2,3),3)
45:96
integer(34)
is.numeric(2L)
is.integer(2L)
peak_sizes[c(2,3)]
peak_sizes[1:3]
peak_sizes <- c(peak_sizes, 45, 81, 108)
peak_sizes[2:3]
peak_sizes[2:3] <- 4
peak_sizes
peak_sizes[1:3] <- c(6,7)


cat_weights <- c(7.9, 8.3, 12)
names(cat_weights)
names(cat_weights) <- c("lil", "goldi", "teensy")
names(cat_weights)

cat_weights







x <- 1:6
is.matrix(x)
dim(x) <- c(2,3)
is.matrix(x)
x
x[2,2]
x[1,]
x[1:2, 2:3]
x[,2]
m <- matrix(floor(runif(6, max = 50)),nrow = 3)
m

TRUE
as.integer(TRUE)
as.integer(FALSE)

x <- 20:30
x > 5
x[x>5]
which(x > 5)
x[which(x > 5)]

middle <- (x > 24) & (x < 27)
middle
x[middle]
x[-middle]


ifelse(x > 22, 1, 0)
x

!TRUE



gene_info <- list(id = "1239876",
                  name = "FIRRE",
                  biotype = "lncRNA")

length(gene_info)
names(gene_info)
gene_info$id
gene_info
unlist(gene_info)
gene_info[['expression']] <- c(16,19)
gene_info[2]
is.list(gene_info)
is.list(gene_info[[2]])
gene_info[['id']] <- NULL
gene_info[[2]]

# Strings
x <- "quite"

cat("are we working \n")
cat("we are computing ", x, "\n")
x <- 'HDAC'
file <- paste(x, ".bed", sep = "")

s = c("ACTG", "GTAC", "TACTA")
nchar(s)
substr(s, 2 ,3)
grep("AC", s)
gsub("T", "U",s)



