% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/setKey.R
\name{ecos.setKey}
\alias{ecos.setKey}
\alias{ecos.printKey}
\title{Set ECOS API Key}
\usage{
ecos.setKey(api_key)

ecos.printKey()
}
\arguments{
\item{api_key}{A string specifying ECOS API key}
}
\value{
No return value, called to set api key
}
\description{
Save ECOS API key for the current session. To set it permanently, please add
the following line to your .Renvrion file:

ECOS_API_KEY = YOUR API KEY
}
\examples{

## Set API Key for the current session
\donttest{ecos.setKey("your_api_key")}

## Check API key
ecos.printKey()

}
