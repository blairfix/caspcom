
library(here)
library(magrittr)
library(hmod)

dir = here()

title = 'The ideology of economics'
url = "https://pluralistic.net/2020/03/26/badger-masks/#piketty"
site = "pluralistic.net"
author = "Cory Doctorow"


article = readLines(url)

# get text
begin = paste("<h1>", title, sep = "")
id_start = grep(begin, article) %>% head(., 1)
article = article[-1:(-id_start)]

id_end = grep('<hr>|<hr/>|<h1>', article)
id_end = id_end[id_end > 1] %>% head(., 1) - 1
article = article[1:id_end]


# add authorship and source
tag = paste("<h4>Originally published at",
            '<a href="',
            url,
            '">',
            site,
            "</a></h4>")

author_tag = paste("<p><b>", author, "</b></p>")

article = c(tag, author_tag, article)

# clean
find = '<ul class="wp-block-gallery aligncenter columns-1"><li class="blocks-gallery-item">'
replace = ""
article = string_replace(find, replace, article)

find = '</li></ul>'
replace = ""
article = string_replace(find, replace, article)

find = '</div><!-- .entry-content -->'
replace = ""
article = string_replace(find, replace, article)

find = c("<h2>", "</h2>")
replace = c("<h3>", "</h3>")
article = string_replace(find, replace, article)



# export html
writeLines(article, "article.html")