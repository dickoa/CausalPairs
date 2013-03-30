#### cleaning


##' Read pairs data given the pathg
##'
##' @title
##' @export
##' @param file
##' @author ahmadou
read_pairs_data <- function(file) {
    dat <- readLines(file)[-1]
    dat <- as.list(dat)
    dat <- lapply(dat, function(x)
                  strsplit(x, ",")[[1]][-1])
    dat <- lapply(dat, function(x)
                  gsub("^\\s+", "", x))
    dat <- lapply(dat, strsplit, " ")
    dat <- lapply(dat, function(x)
                  sapply(x, as.numeric)
                  )

    nrep <- sapply(dat, nrow)
    sampleid <- rep(seq_len(length(dat)), nrep)

    dat <- do.call("rbind", dat)
    dat <- cbind(sampleid, dat)
    colnames(dat)[2:3] <- c("A", "B")
    as.data.frame(dat)
}
