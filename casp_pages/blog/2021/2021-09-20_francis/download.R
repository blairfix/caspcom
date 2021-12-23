
library(here)
library(magrittr)

dir = here()

title = "The Mickey Mouse Number Problem"
url = "https://www.joefrancis.info/mickey_mouse/"
site = "joefrancis.info"
author = "Joe Francis"


article = readLines(url)

# get text
id_start = grep("<p>", article) %>% head(., 1)
id_end = grep('<div class="synved-social', article) -1

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