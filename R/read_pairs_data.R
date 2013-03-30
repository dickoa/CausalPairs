##' Clean the data
##'
##' @param x
##' @author ahmadou
clean_data <- function(x)
    as.numeric(unlist(strsplit(gsub("^\\s+", "", x), " ")))



##' Read pairs data given the path
##'
##' @export
##' @param file
read_pairs_data <- function(file) { 
    raw <- fread(file)
    setkey(raw, "SampleID")
    raw[, lapply(.SD, clean_data), by = "SampleID", .SDcols = c("A", "B")]
}
