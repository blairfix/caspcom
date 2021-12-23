
library(here)
library(magrittr)

dir = here()

title = "Why Scorcese is right about corporate power, Part 2"
url = "https://notesoncinema.com/2021/07/12/why-scorcese-is-right-about-corporate-power-part-2/"
site = "notes on cinema"
author = "James McMahon"


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


# export html
writeLines(article, "article.html")