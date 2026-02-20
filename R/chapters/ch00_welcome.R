ch00_ui <- function(id) {
  ns <- NS(id)
  tagList(
    uiOutput(ns("welcome_text"))
  )
}

ch00_server <- function(id) {
  moduleServer(id, function(input, output, session) {
    
    output$welcome_text <- renderUI({
      tagList(
        tags$h2("Welcome to the Interactive Course"),
        tags$p("The chapters in this course will be added one by one."),
        tags$p("This website is currently under development and the work is in progress.")
      )
    })
    
  })
}