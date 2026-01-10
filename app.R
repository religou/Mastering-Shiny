library(shiny)

ui <- fluidPage(
    textInput(inputId = "username", label = "What's your name?"),
    passwordInput(inputId = "password", label = "Please enter your password"),
    textAreaInput(inputId = "desc", label = "Self Description"),
    
    numericInput(inputId = "age", label = "Age", value = 18, min = 16, max = 100),
    sliderInput(inputId = "height", label = "Height", value = 165, min = 150, max = 200),
    sliderInput(inputId = "weight", label = "Weight", value = c(100, 120), min = 90, max = 200)
) 
    
server <- function(input, output, session) {
    
}

shinyApp(ui, server)