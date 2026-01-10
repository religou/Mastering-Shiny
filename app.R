library(shiny)

ui <- fluidPage(
    selectInput(inputId = "dataset", label = "Dataset", choices = ls("package:datasets"))
    , verbatimTextOutput(outputId = "summary")
    , tableOutput(outputId = "table")
)

server <- function(input, output, session) {
    output$summary <- renderPrint({
        dataset <- get(input$dataset, "package:datasets")
        summary(dataset)
    })
    
    output$table <- renderTable({
        dataset <- get(input$dataset, "package:datasets")
        dataset
    })
}

shinyApp(ui, server)
