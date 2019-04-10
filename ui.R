library(shiny) 

shinyUI(
  
  pageWithSidebar(
    
    # Application title
    headerPanel("Your Body Mass Index (BMI) Calculator"),
    
    sidebarPanel(
      helpText("Just enter your weight and height:"),
      numericInput("weight", "your weight (in kg)", 70, min = 20, max = 250, step = 0.1),
      numericInput("height", "Your height (in cm)", 175, min = 20, max = 250, step = 1),
      submitButton("Compute BMI")
    ), 
    
    mainPanel(
      
      tabsetPanel(
        tabPanel("BMI Calculator",
                 h4('Your BMI is:'),
                 verbatimTextOutput("output"),
                 h4('WHO-Classification:'),
                 strong(verbatimTextOutput("calculate"))
        ),
        tabPanel("Documentation",
                 p(h4("Your BMI Calculator:")),
                 helpText("This app computes the Body Mass Index (BMI) of an adult person for given 
height (in cm) and a given weight (in kg). To compute a BMI, just enter your weight(in kg) 
and height(in cm) in the left part of the screen."),
                 p(h4("What is BMI?")),
                 helpText("BMI stands for Body Mass Index, the expression of the relation between a person's height and 
weight, and can be used to indicator for under- or overweighting."),
                 helpText("The World Health Organization (WHO) suggests the following classification for adults over 20 years old:"),
                 helpText("- BMI < 18.5: underweight"),
                 helpText("- BMI between 18.5 and 25.0: normal weight"),
                 helpText("- BMI between 25.0 and 30.0: overweight"),
                 helpText("- BMI > 30.0: obese")
        )
      )
    )
  )   
)