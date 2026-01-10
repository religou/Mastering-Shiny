library(shiny)

ui <- fluidPage(
    textInput(inputId = "username", label = "What's your name?"),
    passwordInput(inputId = "password", label = "Please enter your password"),
    textAreaInput(inputId = "desc", label = "Self Description")
) 
    
server <- function(input, output, session) {
    
}

shinyApp(ui, server)