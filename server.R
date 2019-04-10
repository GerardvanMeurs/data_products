library(shiny) 
# weight in kg
# height in cm
bmi <- function(weight,height) {round(weight/((height/100)^2),1)}

bmiCat <- function(bmi){
  ifelse(bmi < 18.5,"underweight",ifelse(bmi < 25,"normal weight",ifelse(bmi < 30,"overweight","obese")))
}

shinyServer(
  function(input, output) {
    output$inputweightvalue <- renderPrint({input$weight})
    output$inputheightvalue <- renderPrint({input$height})
    output$output <- renderPrint({bmi(input$weight,input$height)})
    output$calculate <- renderPrint({bmiCat(bmi(input$weight,input$height))})
  } 
)