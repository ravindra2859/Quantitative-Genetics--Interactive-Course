library(shiny)
library(bslib)

ui <- page_sidebar(
  title = "Quantitative Genetics — Interactive Course",
  theme = bs_theme(version = 5),
  
  sidebar = sidebar(
    width = 320,
    tags$h4("Chapters"),
    tags$p("Select a chapter:"),
    
    radioButtons(
      inputId = "chapter",
      label = NULL,
      choices = c(
        "00. Welcome" = "ch00"
      ),
      selected = "ch00"
    )
  ),
  
  # RIGHT side (main area): chapter content goes here
  uiOutput("chapter_main")
)

