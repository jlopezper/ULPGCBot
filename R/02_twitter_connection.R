#' Function for connecting to Twitter account
#' This function allows you to connect the twitter account to R.
#'
#' @examples
#' twitter_connection()
#'
#' @export

twitter_connection <- function() {

  # setup authentication
  api_key <- Sys.getenv("api_key")
  api_secret <- Sys.getenv("api_secret")
  access_token <- Sys.getenv("access_token")
  access_token_secret <- Sys.getenv("access_token_secret")
  options(httr_oauth_cache = TRUE)
  twitteR::setup_twitter_oauth(api_key, api_secret, access_token, access_token_secret)

}

