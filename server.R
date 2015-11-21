## Server code for BMI calculator Application
## Author: Siva Sethu

library(shiny)

calculateBMI <- function(height, weight)
{
  weight / height ^ 2 * 10000
}

calculateCategory <- function(height, weight)
{
  BMIvalue <- weight / height ^ 2 * 10000
  
  if (BMIvalue < 16)
  {
    return("Severe Thinness")
  }
  else if (BMIvalue >= 16 && BMIvalue < 17)
  {
    return("Moderate Thinness")
  }
  else if (BMIvalue >= 17 && BMIvalue < 18.5)
  {
    return("Mild Thinness")
  }
  else if (BMIvalue >= 18.5 && BMIvalue < 25)
  {
    return("Normal")
  }
  else if (BMIvalue >= 25 && BMIvalue < 30)
  {
    return("Overweight")
  }
  else if (BMIvalue >= 30 && BMIvalue < 35)
  {
    return("Obese Class I")
  }
  else if (BMIvalue >= 35 && BMIvalue < 40)
  {
    return("Obese Class II")
  }
  else
  {
    return("Obese Class III")
  }
}

shinyServer(
  function(input, output) {
    output$oid1 <- renderPrint({input$id1})
    output$oid2 <- renderPrint({input$id2})
    output$oid3 <- renderPrint({input$id3})
    output$oid4 <- renderPrint({input$id4})
    output$BMI <- renderPrint({calculateBMI(input$id3,input$id4)})
    output$category <- renderPrint({calculateCategory(input$id3,input$id4)})
  }
)

