
library(here)
library(magrittr)
library(hmod)

dir = here()

title = "Deconstructing Econospeak"
url = "https://economicsfromthetopdown.com/2020/10/30/deconstructing-econospeak/"
site = "Economics from the Top Down"
author = "Blair Fix"


article = readLines(url)

# get text
id_start = grep("<p>", article) %>% head(., 1)
id_end = grep('<div class="sharedaddy sd-sharing-enabled">', article) -1
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

# remove patreon
id_start = grep('<h4>Support this blog</h4>', article)
id_end = grep('This work is licensed under a', article)
article = article[-id_start:-id_end]

# fix katex
find = '<p><span class="math display" target="_blank"><span class="katex-eq" data-katex-display="false">'
replace = '[latex]'
article = string_replace(find, replace, article)

find = '</span></span></p>'
replace = '[/latex]'
article = string_replace(find, replace, article)

# fix image
find = 'srcset="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7"'
replace = ""
article = string_replace(find, replace, article)

# export html
writeLines(article, "article.html")
