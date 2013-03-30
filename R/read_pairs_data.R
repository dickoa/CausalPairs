##' Read pairs data given the path
##'
##' @export
##' @param file
##' @author ahmadou
read_pairs_data <- function(file) {
    raw <- fread(file)
    setkey(raw, SampleID)
    raw[, list(A = clean_data(A), B = clean_data(B)), by = "SampleID"]
}


clean_data <- function(x)
    as.numeric(unlist(strsplit(gsub("^\\s+", "", x), " ")))
