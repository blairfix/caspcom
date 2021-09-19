library(here)

dir = here()
dir = paste(dir, "/recasp_page/main", sep = "")

# main file
setwd(dir)
main = readLines('main.html')

# recent articles
setwd(dir)
setwd("../articles/html")
recent = readLines("articles_recent.html" )
recent = paste(recent, collapse = "\n")

# html header
setwd(dir)
setwd("../articles/templates")
header = readLines("page_header.html" )

# merge
main = hmod::string_replace("recent_articles", recent, main)
output = c(header, main, "</body></html>")

# format
output = hmod::string_replace("<h1", '<h1 style="font-weight: bold;"', output)
output = hmod::string_replace("<h2", '<h2 style="font-weight: bold;"', output)
output = hmod::string_replace("<h3", '<h3 style="font-weight: bold;"', output)

output = hmod::string_replace("<p>", '<p style="font-size: 18px;line-height: 1.6;">', output)



# export
setwd(dir)
write.table(output,
            "main.html",
            col.names = F,
            row.names = F,
            quote = F)


