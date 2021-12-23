
library(here)
library(magrittr)
library(hmod)

dir = here()

title = "The ‘Textbook Story’ of Inequality: How does it measure up?"
url = "https://sbhager.com/the-textbook-story-of-inequality-how-does-it-measure-up/"
site = "sbhager.com"
author = "Sandy Brian Hager"


article = readLines(url)

# get text
id_start = grep("<p>", article) %>% head(., 1)
id_end = grep('</article>', article) -1
id_end = tail(id_end, 1)

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


# export html
writeLines(article, "article.html")