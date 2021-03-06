% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/add_presentation.R
\name{add_presentation}
\alias{add_presentation}
\alias{semnar}
\title{Create or add to a \code{\link{semnar}} object}
\usage{
add_presentation(object, presenter = NA, presenter_name = NA,
  presenter_midname = NA, presenter_surname = NA,
  presenter_affiliation = NA, presenter_email = NA,
  presenter_link = NA, presenter_address = NA, country = NA,
  city = NA, state = NA, lon = NA, lat = NA, event = NA,
  title = NA, abstract = NA, type = NA, link = NA,
  materials = NA, institution = NA, department = NA, school = NA,
  venue = NA, address = NA, postcode = NA, room = NA, year = NA,
  month = NA, day = NA, start_hour = NA, end_hour = start_hour,
  start_min = 0L, end_min = start_min, start_sec = 0L,
  end_sec = 0L, tag = NA, tz = "UTC")
}
\arguments{
\item{object}{either an object an object of class \code{\link{semnar}} or unspecified (default). See Details.}

\item{presenter}{either \code{NA} (default) or an object of class \code{\link{semnar_presenter}}. In the latter case, all input to the \code{presenter_*} arguments below is ignored and populated according to the supplied object.}

\item{presenter_name}{name of the presenter of the presentation; character string or \code{NA} (default).}

\item{presenter_midname}{middle name of the presenter of the presentation; character string or \code{NA} (default).}

\item{presenter_surname}{surname of the presenter of the presentation; character string or \code{NA} (default).}

\item{presenter_affiliation}{affiliation of the presenter of the presentation; character string or \code{NA} (default).}

\item{presenter_email}{email of the presenter of the presentation; character string or \code{NA} (default).}

\item{presenter_link}{link to the webpage of the presenter of the presentation; character string or \code{NA} (default).}

\item{presenter_address}{address of the presenter; character string or \code{NA} (default).}

\item{country}{country where the presentation took place; character string or \code{NA} (default).}

\item{city}{city where the presentation took place; character string or \code{NA} (default).}

\item{state}{state where the presentation took place; character string or \code{NA} (default).}

\item{lon}{longitude of the venue of the presentation; numeric or \code{NA} (default).}

\item{lat}{latitude of the venue of the presentation; numeric or \code{NA} (default).}

\item{event}{name of the event at which the presentation is/was given; character string or \code{NA} (default).}

\item{title}{title of the presentation; character string or \code{NA} (default).}

\item{abstract}{abstract of the presentation; character string or \code{NA} (default).}

\item{type}{the type of the talk. Available options are \code{NA} (default), \code{"seminar"}, \code{"lecture"}, \code{"presentation"}, \code{"talk"}, \code{"poster"}.}

\item{link}{link to the event or seminar/talk page; character string or \code{NA} (default).}

\item{materials}{link to the slides or materials from the seminar/talk; character string or \code{NA} (default).}

\item{institution}{institution at which the event or seminar/talk page took/will take space; character string or \code{NA} (default).}

\item{department}{department at which the event or seminar/talk page took/will take space; character string or \code{NA} (default).}

\item{school}{school at which the event or seminar/talk page took/will take space; character string or \code{NA} (default).}

\item{venue}{venue at which the event or seminar/talk page took/will take space; character string or \code{NA} (default).}

\item{address}{address where the seminar/talk took place; character string or \code{NA} (default).}

\item{postcode}{post code where the seminar/talk took place; character string or \code{NA} (default).}

\item{room}{room at which the event or seminar/talk page took/will take space; character string or \code{NA} (default).}

\item{year}{year of the presentation; numeric, e.g. \code{2019}, or \code{NA} (default).}

\item{month}{month of the presentation; numeric (1-12) or \code{NA} (default).}

\item{day}{day of the presentation; numeric (1-31) or \code{NA} (default).}

\item{start_hour}{start hour of the presentation; numeric (1-24) or \code{NA} (default).}

\item{end_hour}{end hour of the presentation; numeric (1-24) or \code{NA} (default).}

\item{start_min}{start minute of the presentation; numeric (0-60) or \code{NA} (default).}

\item{end_min}{end minute of the presentation; numeric (0-60) or \code{NA} (default).}

\item{start_sec}{start second of the presentation; numeric (0-60) or \code{NA} (default).}

\item{end_sec}{end second of the presentation; numeric (0-60) or \code{NA} (default).}

\item{tag}{a tag for the presentation; character string or \code{NA} (default).}

\item{tz}{timezone. Default is \code{"UTC"}. See \code{\link{DateTimeClasses}} for details.}
}
\value{
A structured \code{\link{data.frame}} that also inherits from class \code{\link{semnar}}, including the supplied presentation details.
}
\description{
Create or add to a \code{\link{semnar}} object
}
\details{
If \code{object} is not specified then \code{add_presentation} will create an \code{\link{semnar}} object based on the supplied inputs, otherwise it will add the details of the new presentation on \code{object}.
}
\examples{
# Two of my past talks


library("magrittr")
out <- add_presentation(country = "England", city = "Coventry",
                        lon = -1.560843, lat = 52.384019,
                        event = "Young Researchers' Meeting",
                        title = "A workflow that most probably isn't yours",
                        link = "https://warwick.ac.uk/fac/sci/statistics/news/yrm/",
                        materials = "http://ikosmidis.com/files/ikosmidis_YRM_2019.pdf",
                        type = "presentation", institution = "University of Warwick",
                        department = "Department of Statistics",
                        venue = "Mathematical Sciences Building", room = "M1.02",
                        year = 2019, month = 5, day = 28,
                        start_hour = 16, start_min = 00,
                        end_hour = 17, end_min = 00) \%>\%
        add_presentation(country = "United States", city = "Stanford",
                         lon = -122.165330, lat = 37.429464,
                         event = "useR! 2016",
                         title = "brglm: Reduced-bias inference in generalized linear models",
                         link = "http://user2016.r-project.org//files/abs-book.pdf",
                         materials = "https://bit.ly/2KCBbKg",
                         type = "presentation", institution = NA, department = NA,
                         venue = "Stanford Institute for Economic Policy Research",
                         room = "Siepr 120",
                         year = 2016, month = 06, day = 29,
                         start_hour = 14, start_min = 15,
                         end_hour = 14, end_min = 35)
out

}
\seealso{
\code{\link{presenter}} \code{\link{plot.semnar}} \code{\link{shorten_url}} \code{\link{guess_address}}
}
