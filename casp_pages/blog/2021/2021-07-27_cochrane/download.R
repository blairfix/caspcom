
library(here)
library(magrittr)

dir = here()

title = "Remaking Our Economies with Wartime Analogies, Part&nbsp;3"
url = "https://dtcochrane.com/2021/07/21/remaking-our-economies-with-wartime-analogies-part-3/"
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