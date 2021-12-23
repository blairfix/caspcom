
library(here)
library(magrittr)

dir = here()

title = "Israeli Data Demonstrates the Importance, and the Limits, of Vaccination"
url = "https://dtcochrane.com/2021/08/25/israeli-data-demonstrates-the-importance-and-the-limits-of-vaccination/"
site = "dtcochrane.com"
author = "DT Cochrane"


article = readLines(url)

# get text
id_start = grep("<p>", article) %>% head(., 1)
id_end = grep('<div id="jp-post-flair"', article) -1

article = article[id_start:id_end]

# add authorship and source
tag = paste("<h4>Originally published at",
            '<a href="',
            url,
            '">',
            site,
            "</a></h4>")

author_tag = paste("<p><b>", author, "</b></p>")

article = c(tag, author_tag, article)

# remove blank lines
article = article[article != ""]
article = paste(article, collapse = "\n\n")


# export html
writeLines(article, "article.html")