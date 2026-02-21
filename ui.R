library(shiny)
library(bslib)

ui <- page_sidebar(
  title = "Interactive Breeding Concepts",
  theme = bs_theme(version = 5),
  
  sidebar = sidebar(
    width = 320,
    tags$h4("Chapters/Concept"),
    tags$p("Select a chapter/concept:"),
    
    radioButtons(
      inputId = "chapter",
      label = NULL,
      choices = c(
        "00. Welcome" = "ch00",
        "01. Selection Response" = "ch01"
      ),
      selected = "ch00"
    )
  ),
  
  # RIGHT side (main area): chapter content goes here
  uiOutput("chapter_main")
)