pollutantmean <- function(directory, pollutant, id = 1:332){
    files <- list.files(directory)
    mean_vector <- c()
    for (i in id) {
        table <- read.csv(paste0(directory,"/",files[i]))
        semNA <- table[!is.na(table[, pollutant]),pollutant]
        mean_vector = c(mean_vector,semNA)
    }
    mean(mean_vector)
}

complete <- function(directory, id = 1:332){
    files <- list.files(directory)
    complete_data <- rep(0, length(id))
    count <- 1
    for (i in id) {
        table <- read.csv(paste0(directory,"/",files[i]))
        complete_data[count] <- sum(complete.cases(table)) 
        count <- count + 1
    }
    data.frame(id = id, nobs = complete_data)
}

corr <- function(directory, threshold){
    files <- list.files(directory)
    complete_table <- complete(directory, 1:332)
    nobs <- complete_table$nobs
    ids <- complete_table$id[nobs > threshold]
    corr_vector <- rep(0, length(ids))
    files <- list.files(directory)
    j <- 1
    for(i in ids) {
        table <- read.csv(paste0(directory,"/",files[i]))
        corr_vector[j] <- cor(table$sulfate, table$nitrate, use="complete.obs")
        j <- j + 1
    }
    corr_vector    
}