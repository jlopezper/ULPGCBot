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
#' @export


ulpgc_scrap <- function(url = "https://www.ulpgc.es/noticias") {

  tryCatch({
    stopifnot(url == "https://www.ulpgc.es/noticias")

    current <-  xml2::read_html(url) %>%
    rvest::html_nodes(".views-row-even .field-content") %>%
    rvest::html_text() %>%
    dplyr::nth(2)

    current
  },

  error = function(e) "Not a valid web"
  )
}

