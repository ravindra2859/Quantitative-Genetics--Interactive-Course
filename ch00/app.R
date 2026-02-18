library(shiny)
library(bslib)

ui <- page_fluid(
  
  theme = bs_theme(version = 5),
  
  tags$h2("Welcome to the Interactive Course"),
  
  tags$p(
    "The chapters/concepts in this course will be added one by one."
  ),
  
  tags$p(
    "This website is currently under development and work is in progress."
  ),
  
  tags$hr(),
  
  tags$a(
    href = "../ch01/index.html",
    class = "btn btn-primary",
    "Go to Chapter 1 →"
  )
)

server <- function(input, output, session) {}

shinyApp(ui, server)
