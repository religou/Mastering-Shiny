library(shiny)

ui <- fluidPage(
    textInput(inputId = "username", label = "What's your name?"),
    passwordInput(inputId = "password", label = "Please enter your password"),
    textAreaInput(inputId = "desc", label = "Self Description"),
    
    numericInput(inputId = "age", label = "Age", value = 18, min = 16, max = 100),
    sliderInput(inputId = "height", label = "Height", value = 165, min = 150, max = 200),
    sliderInput(inputId = "weight", label = "Weight", value = c(100, 120), min = 90, max = 200),
    
    dateInput(inputId = "borndat", label = "Born Date"),
    dateRangeInput(inputId = "vocadat", label = "When do you want to go on vacation next?"),
    
    
    selectInput(inputId = "sex", label = "Sex", choices = c("Male", "Female"), multiple = TRUE),
    radioButtons(inputId = "pet", label = "Pets", choices = list("Dog", "Cat", "Mouse")),
    checkboxInput(inputId = "cleanup", label = "Yes", value = TRUE),
    checkboxInput(inputId = "shutdown", label = "No"),
    
    fileInput(inputId = "file", label = "Upload File"),
    
    fluidRow(
        actionButton("click", "Click me!", class = "btn-sm btn-danger"),
        actionButton("drink", "Drink me!", class = "btn-sm btn-success")
    ),
    fluidRow(
        actionButton("eat", "Eat me!", class = "btn-block")
    ),
    
    textOutput(outputId = "txt"),
    verbatimTextOutput(outputId = "summary"),
    
    tableOutput(outputId = "static"),
    dataTableOutput(outputId = "dynamic"),
    
    plotOutput(outputId = "plot")
) 
    
server <- function(input, output, session) {
    output$txt <- renderText({
        "Hello, Rshiny!"
    })
    
    output$summary <- renderPrint({
        summary(1:10)
    })
    
    output$static <- renderTable(head(mtcars))
    
    output$dynamic <- renderDataTable(mtcars, options = list(pageLength = 5, initComplete = I("function(settings, json) {alert('Done.');}")))
    
    output$plot <- renderPlot(plot(1:4))
}

shinyApp(ui, server)