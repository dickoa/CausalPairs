##' AUC
##'
##' @export
##' @param labels
##' @param predictions
auc <- function (labels, predictions) {
    r <- rank(predictions)
    n_pos <- sum(labels == 1)
    n_neg <- length(labels) - n_pos
    (sum(r[labels == 1]) - n_pos * (n_pos + 1)/2)/(n_pos *
           n_neg)

}


##' Forward AUC
##'
##' @export
##' @param labels
##' @param predictions
forward_auc <- function(labels, predictions) {
    target_one <- (labels == 1) * 1.0
    auc(target_one, predictions)
}


##' Reverse AUC
##'
##' @export
##' @param labels
##' @param predictions
reverse_auc <- function(labels, predictions) {
    target_neg_one <- (labels == -1) * 1.0
    auc(target_neg_one, -predictions)
}


##' Bidirectional AUC
##'
##' @export
##' @param labels
##' @param predictions
bidirectional_auc <- function(labels, predictions) {
    score_forward <- forward_auc(labels, predictions)
    score_reverse <- reverse_auc(labels, predictions)
    0.5 * (score_forward +  score_reverse)
}
