
library(here)
library(magrittr)
library(hmod)

dir = here()

title = "An evolving filmography about power"
url = "https://notesoncinema.com/2021/11/15/an-evolving-filmography-about-power/"
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

# fix tables
find = '<td>'
replace = '<td style="border:0px !important;">'
article = string_replace(find, replace, article)

find = '<th>'
replace = '<th style="border:0px !important;">'
article = string_replace(find, replace, article)


# export html
writeLines(article, "article.html")