library(here)

dir = here()
dir = paste(dir, "/recasp/special_issues", sep = "")

# main file
setwd(dir)
main = readLines("special_issues.html")


# html header
setwd(dir)
setwd("../articles/templates")
header = readLines("page_header.html" )

# merge
output = c(header, main, "</body></html>")

# format
output = hmod::string_replace("<h1", '<h1 style="font-weight: bold;"', output)
output = hmod::string_replace("<h2", '<h2 style="font-weight: bold;"', output)
output = hmod::string_replace("<h3", '<h3 style="font-weight: bold;"', output)

output = hmod::string_replace("<p>", '<p style="font-size: 18px;line-height: 1.6;">', output)
output = hmod::string_replace("<li>", '<li style="font-size: 18px;">', output)



# export
setwd(dir)
write.table(output,
            "special_issues.html",
            col.names = F,
            row.names = F,
            quote = F)


