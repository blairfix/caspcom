library(stringr)
library(data.table)
library(magrittr)

board = readLines("board")[-1]
board = board[board!= ""]

# split name place
board = str_split(board, ",", n = 2)
board = do.call(rbind.data.frame, board)
names(board) = c("name", "place")

# split first middle last name
name = str_split(board$name, " ", n = 3)
name = do.call(rbind.data.frame, name) 
names(name) = c("first", "middle", "last")

name[] <- lapply(name, as.character)
id = which(name$last == name$first)
name$last[id] = name$middle[id]
name$middle[id] = ""

# order by last name
board = data.table(name, place = board$place)
board = board[order(last)]

name = paste(board$first, board$middle, board$last, sep = " ")
place = board$place

# table
table_out = paste('<tr><td style="font-size: 18px;">', 
                  name, 
                  '</td><td style="color: #666;">', 
                  place, 
                  "</td></tr>")
                    
table_out = paste(table_out, collapse = "\n")

table_out = paste("<table>", table_out, "</table>")

write.table(table_out,
           "board.html",
           quote = F,
           col.names = F,
           row.names = F
           )


