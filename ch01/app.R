library(shiny)
library(bslib)

ui <- page_fluid(
  theme = bs_theme(version = 5),
  
  tags$h2("Chapter 1 — Selection Response"),
  
  tags$p(
    "Selection response describes the expected change in the population mean ",
    "after one cycle of selection."
  ),
  
  tags$div(
    style="
      border:2px solid #2c3e50;
      padding:20px;
      border-radius:8px;
      background:#f8f9fa;
      text-align:center;
      font-size:22px;
    ",
    HTML("R = h<sup>2</sup> × S")
  ),
  
  tags$br(),
  
  tags$a(
    href = "../index.html",
    class = "btn btn-secondary",
    "← Back to Home"
  )
)

server <- function(input, output, session) {}

shinyApp(ui, server)
