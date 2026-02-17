library(shiny)

# source chapters
source("R/chapters/ch00_welcome.R", local = TRUE)

server <- function(input, output, session) {
  
  # start modules
  ch00_server("ch00")
  
  # render selected chapter UI in the MAIN area
  output$chapter_main <- renderUI({
    switch(input$chapter,
           "ch00" = ch00_ui("ch00")
    )
  })
}

