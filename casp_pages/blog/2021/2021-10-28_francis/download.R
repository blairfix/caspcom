
library(here)
library(magrittr)
library(hmod)

dir = here()

title = "Was the Spanish Empire Not So Bad After All?"
url = "https://www.joefrancis.info/spanish-empire/"
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

# blockquote
# find = '<p style="padding-left: 30px;">'
# id = grep(find, article)
# 
# article[id] = string_replace(find, "<blockquote>", article[id])
# article[id] = string_replace("</p>", "</blockquote>", article[id])


# export html
writeLines(article, "article.html")