#' Function for tweeting
#' This function allows you to post tweets from R.
#'
#' @examples
#' tweet_posting()
#'
#' @export

source("02_twitter_connection.R")

tweet_posting <- function() {

  connection <- twitter_connection()
  tweet <- twitteR::tweet(ulpgc_scrap())

  tweet

}
