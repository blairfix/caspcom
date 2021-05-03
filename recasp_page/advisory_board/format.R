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

  # editor
  table_editor = paste('<tr><td style="width:225px">', 
                 "Blair Fix", 
                 '</td><td style="color: #666;">', 
                 "Toronto, Canada", 
                 "</td></tr>")
  
  table_editor = paste(table_editor, collapse = "\n")
  table_editor = paste('<table>', 
                       '<td></td><td></td>',
                       table_editor, 
                       "</table>")

  # founding editor
  founding_editor = paste('<tr><td style="width:225px">', 
                          "Tim Di Muzio", 
                          '</td><td style="color: #666;">', 
                          "University of Wollongong, Australia", 
                          "</td></tr>")
  
  founding_editor = paste(founding_editor, collapse = "\n")
  founding_editor = paste('<table>', 
                       '<td></td><td></td>',
                       founding_editor, 
                       "</table>")
  
  
  # board  
  table_board = paste('<tr><td style="width:225px">', 
                    name, 
                    '</td><td style="color: #666;">', 
                    place, 
                    "</td></tr>")
  
  
  table_board = paste(table_board, collapse = "\n")
  table_board = paste('<table',
                      '<td></td><td></td>',
                      table_board, 
                      "</table>")
  
  
  page = paste('<h1 style="font-weight: bold;">Advisory Board</h1>',
  			       '<h3 style="font-weight: bold;">Editor</h3>', 
               table_editor,
  			       '<h3 style="font-weight: bold;">Founding Editor</h3>',
               founding_editor,
  			       '<h3 style="font-weight: bold;">Board</h3>',
               table_board)


write.table(page,
           "board.html",
           quote = F,
           col.names = F,
           row.names = F
           )


