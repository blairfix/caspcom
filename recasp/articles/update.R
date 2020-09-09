library(here)
library(magrittr)
library(stringr)
library(hmod)

dir = here()
dir = paste(dir, "/recasp/articles", sep = "")
setwd(dir)

# templates
setwd(dir)
setwd("./templates")
table_enviro = readLines("table_environment.html")
table_temp = readLines("table_template.html")
paper_temp = readLines("paper_template.html")
header = readLines("page_header.html")

# meta_data
setwd(dir)
setwd("./metadata")
f = list.files()
f = sort(f, decreasing = T)

index = 1
table_out = NULL
for(path in f){
  
  setwd(dir)
  setwd("./metadata")
  paper = readLines(path)

  # title
  id = grep("title:", paper, fixed = T) %>% head(., 1)
  title = paper[id]
  title = string_replace("title:", "",  title)
  title = str_trim(title)

  # subtitle
  id = grep("subtitle:", paper, fixed = T) %>% head(., 1)
  subtitle = paper[id]
  subtitle = string_replace("subtitle:", "",  subtitle)
  subtitle = str_trim(subtitle)
  
  # author
  id = grep("author:", paper, fixed = T) %>% head(., 1)
  author = paper[id]
  author = string_replace("author:", "",  author)
  author = str_trim(author)
  
  # abstract
  id = grep("abstract:", paper, fixed = T) %>% head(., 1)
  abstract = paper[id]
  abstract = string_replace("abstract:", "",  abstract)
  abstract = str_trim(abstract)
    
  # date
  id = grep("date:", paper, fixed = T) %>% head(., 1)
  date = paper[id]
  date = string_replace("date:", "",  date)
  date = str_trim(date)
  
  # cite
  id = grep("cite:", paper, fixed = T) %>% head(., 1)
  cite = paper[id]
  cite = string_replace("cite:", "",  cite)
  cite = str_trim(cite)
  
  # keywords
  id = grep("keywords:", paper, fixed = T) %>% head(., 1)
  keywords = paper[id]
  keywords = string_replace("keywords:", "",  keywords)
  keywords =  str_split(keywords, pattern = ",") %>% unlist()
  keywords = str_trim(keywords) 
  keywords = keywords[keywords != ""] %>% sort() %>% unique()
  keywords = paste(keywords, collapse = ", ")
  
  # paper_url
  id = grep("paper_url:", paper, fixed = T) %>% head(., 1)
  paper_url = paper[id]
  paper_url = string_replace("paper_url:", "",  paper_url)
  paper_url = str_trim(paper_url)
  
  # page_url
  id = grep("page_url:", paper, fixed = T) %>% head(., 1)
  page_url = paper[id]
  page_url = string_replace("page_url:", "",  page_url)
  page_url = str_trim(page_url)
    
  # img_url
  id = grep("img_url:", paper, fixed = T) %>% head(., 1)
  img_url = paper[id]
  img_url = string_replace("img_url:", "",  img_url)
  img_url = str_trim(img_url)

  # table entry
  table_entry = table_temp
  
    # title
    table_entry = string_replace("title", title, table_entry)
    table_entry = string_replace("sub", subtitle, table_entry)
    
    # authors
    table_entry = string_replace("authors", author, table_entry)
    
    # date 
    table_entry = string_replace("date", date, table_entry)  
  
    # page_url
    table_entry = string_replace("page_url", page_url, table_entry)  
    
    # img_url
    table_entry = string_replace("img_url", img_url, table_entry)  
    
    table_out = c(table_out, table_entry)
    
    # write out recent articles
    if(index == 4){
      
      recent = paste(table_out, collapse = "\n")
      
      # paste into table_environment
      page_out = string_replace("table_here", recent, table_enviro)
      
      setwd(dir)
      setwd("./html")
      write.table(page_out,
                  "articles_recent.html",
                  col.names = F,
                  row.names = F,
                  quote = F)
    }
    
    index = index + 1
    
    
    # paper page
    paper_out = paper_temp
    
    paper_out = string_replace("authors", author, paper_out)
    paper_out = string_replace("abstract_here", abstract, paper_out)
    paper_out = string_replace("cite_here", cite, paper_out)
    paper_out = string_replace("paper_url", paper_url, paper_out)
    paper_out = string_replace("keywords_here", keywords, paper_out)
    
    file_name = paste(path, ".html", sep = "")

    # export paper page
    setwd(dir)
    setwd("./html")
    write.table(paper_out,
                file_name,
                col.names = F,
                row.names = F,
                quote = F)
    
           
}

table_out = paste(table_out, collapse = "\n")

# paste into table_environment
page_out = string_replace("table_here", table_out, table_enviro)

heading = '<h1 style="font-weight: bold;">Review of Capital as Power</h1>'

page_out = c(header, heading, page_out, "</body></html>")

# export articles page
setwd(dir)
setwd("./html")
write.table(page_out,
            "articles_all.html",
            col.names = F,
            row.names = F,
            quote = F)



