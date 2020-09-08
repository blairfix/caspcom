library(here)

dir = here()
dir = paste(dir, "/recasp/main", sep = "")

# main file
setwd(dir)
main = readLines("main.html")

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


# export
setwd(dir)
write.table(output,
            "main.html",
            col.names = F,
            row.names = F,
            quote = F)


