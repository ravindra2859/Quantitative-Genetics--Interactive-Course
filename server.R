library(shiny)

# source chapters
source("R/chapters/ch00_welcome.R", local = TRUE)
source("R/chapters/ch01_selection_response.R", local = TRUE)

server <- function(input, output, session) {
  
  # start modules
  ch00_server("ch00")
  ch01_server("ch01")
  
  # render selected chapter UI in the MAIN area
  output$chapter_main <- renderUI({
    switch(input$chapter,
           "ch00" = ch00_ui("ch00"),
           "ch01" = ch01_ui("ch01")
    )
  })
}