
library(here)
library(magrittr)

dir = here()

title = "When Hollywood gets repetitive: casting"
url = "https://notesoncinema.com/2021/06/30/when-hollywood-gets-repetitive-casting/"
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