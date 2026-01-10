library(shiny)

ui <- fluidPage(
    selectInput(inputId = "dataset", label = "Dataset", choices = ls("package:datasets"))
    , verbatimTextOutput(outputId = "summary")
    , tableOutput(outputId = "table")
)

server <- function(input, output, session) {
}

shinyApp(ui, server)
