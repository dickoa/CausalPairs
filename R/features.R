##' .. content for \description{} (no empty lines) ..
##'
##' .. content for \details{} ..
##' @export
##' @title
##' @param x
##' @author ahmadou
normalized_entropy <- function(x) {
    x <- sort(scale(x))
    delta <- diff(x)
    hx <- sum(log(abs(delta[which(delta != 0)])))
    hx / (length(x) - 1) + psigamma(length(x)) - psigamma(1)
}

##' .. content for \description{} (no empty lines) ..
##'
##' .. content for \details{} ..
##' @title
##' @export
##' @param x
##' @param y
##' @author ahmadou
entropy_difference <- function(x, y)
    normalized_entropy(x) - normalized_entropy(y)


