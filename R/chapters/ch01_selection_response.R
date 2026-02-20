ch01_ui <- function(id) {
  ns <- NS(id)
  
  tagList(
    uiOutput(ns("content"))
  )
}


ch01_server <- function(id) {
  moduleServer(id, function(input, output, session) {
    
    output$content <- renderUI({
      
      tagList(
        
        # Chapter title
        tags$h2("Chapter 1 — Selection Response"),
        
        # Definition text
        tags$p(
          "Selection response describes the expected change in the population mean ",
          "for a trait after one cycle of selection. It quantifies how much genetic ",
          "improvement is achieved when superior individuals are selected and used ",
          "as parents for the next generation."
        ),
        
        tags$p(
          "The magnitude of response depends primarily on selection intensity, ",
          "heritability, and the phenotypic variation present in the population."
        ),
        
        # Formula box
        tags$div(
          style = "
            border: 2px solid #2c3e50;
            border-radius: 8px;
            padding: 20px;
            margin-top: 20px;
            background-color: #f8f9fa;
            text-align: center;
            font-size: 20px;
            font-weight: 500;
          ",
          
          HTML("R = h<sup>2</sup> × S")
        ),
        
        tags$br(),
        
        tags$div(
          style = "
            border-left: 4px solid #6c757d;
            padding-left: 12px;
            color: #555;
          ",
          tags$p(HTML("<b>Where:</b>")),
          tags$p(HTML("R = response to selection")),
          tags$p(HTML("h<sup>2</sup> = narrow-sense heritability")),
          tags$p(HTML("S = selection differential"))
        )
        
      )
    })
  })
}