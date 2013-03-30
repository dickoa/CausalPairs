##' Read pairs data given the pathg
##'
##' @export
##' @param file
##' @author ahmadou
read_pairs_data <- function(file) {
    dat <- readLines(file)[-1]
    dat <- as.list(dat)
    idtype <- sapply(dat, function(x)
                     strsplit(x, ",")[[1]][1])
    dat <- lapply(dat, function(x)
                  strsplit(x, ", ")[[1]][-1])
    dat <- lapply(dat, strsplit, " ")
    dat <- lapply(dat, function(x)
                  sapply(x, as.numeric)
                  )

    nrep <- sapply(dat, nrow)
    sampleid <- rep(seq_len(length(dat)), nrep)

    dat <- do.call("rbind", dat)
    dat <- cbind(sampleid, dat)
    colnames(dat)[2:3] <- c("A", "B")
    dat <- as.data.frame(dat)
    dat$sampleid <- as.character(factor(dat$sampleid, labels = idtype))
    dat
}

