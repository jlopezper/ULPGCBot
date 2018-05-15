#' Function for scrapping data from the ULPGC webpage
#' This function scraps the last news from the ULPGC news section page
#'
#' @param url URL from the ULPGC news section
#'
#' @return String with last news
#'
#' @examples
#' ulpgc_scrap()
#'
#' @importFrom magrittr "%>%"
#'
#' @export

ulpgc_scrap <- function(url = "https://www.ulpgc.es/noticias") {

  tryCatch({
    stopifnot(url == "https://www.ulpgc.es/noticias")

    current <-  xml2::read_html(url) %>%
      rvest::html_nodes(".views-row-even .field-content") %>%
      rvest::html_text() %>%
      dplyr::nth(2)

    current <- ifelse(nchar(current) > 70, paste0(substr(current, 1, 70),"..."), current)

    paste0(current, " Check out the latest news at: ", url)

  },

  error = function(e) "Not a valid web. For now only ULPGC news are allowed: https://www.ulpgc.es/noticias")
}
