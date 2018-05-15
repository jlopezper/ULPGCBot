#' Function for tweeting
#' This function allows you to post tweets from R.
#'
#' @examples
#' tweet_posting()
#'
#' @export


tweet_posting <- function(url = "https://www.ulpgc.es/noticias") {

  connection <- twitter_connection()
  tweet <- twitteR::tweet(ulpgc_scrap(url))

  tweet

}
