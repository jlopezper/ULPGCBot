#' Function for checking last tweet
#' This function allows you to check if last published tweet matchs with latest news.
#'
#' @examples
#' check_tweet()
#'
#' @export

check_tweet <- function() {

tryCatch({
  stopifnot(sub("https.*", "", last_news) == sub("https.*", "", last_tweet$text))

  tweet_posting()

},

error = function(e) "Lastest news has been already published")
}

