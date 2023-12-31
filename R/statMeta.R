##' Retrieve statistical meta DB
##'
##' @details
##' \preformatted{
##' ## Example
##' statMeta(lang = "en", meta = "Economic Sentiment Index")
##' }
##'
## @param api_key A string specifying ECOS API key. Need not be specified if
##   the key was stored as an environment variable via \code{\link{setKey}} or
##   .Renviron.
##' @param meta A string specifying the name of meta DB to query
##' @param format A string specifying the file format to process - xml, json
##' @param lang A string specifying the language of result value - kr (Korean),
##'   en (English)
##' @param count An integer specifying the number of requests
##' @return A data.frame object containing queried information
##'
##' @export
statMeta <- function(meta, format = c("xml", "json"), lang = c("kr", "en"), 
                     count = 1000) {
  api_key <- ecos.getKey()
  format <- match.arg(format)
  lang <- match.arg(lang)
  url <- URLencode(
    sprintf("http://ecos.bok.or.kr/api/StatisticMeta/%s/%s/%s/1/%s/%s/",
            api_key, format, lang, count, meta)
  )
  html <- GET(url)
  content <- rawToChar(html$content)
	if (format == "xml") {
    parseXML(content, type = "meta")
	} else {
    parseJSON(content, type = "meta")
	}
}
