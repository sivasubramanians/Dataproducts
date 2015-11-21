## UI for BMI calculator Application
## Author: Siva Sethu

shinyUI(pageWithSidebar(
  headerPanel("Are you overweight ? - Find your BMI (Metric Units)"),
  sidebarPanel(
    h4('Please enter the details below'),
    numericInput('id1', 'Age', 18, min = 18, max = 100, step = 1),
    selectInput('id2', 'Sex:', c("Male","Female")),
    numericInput('id3', 'Enter your height(centimeters):',175, min = 1, max = 240, step = 1),
    numericInput('id4', 'Enter your weight(Kilograms):',60, min = 1, max = 280, step = 1),
    submitButton('Calculate BMI'),
    h5('Help:'),
    h6('The Body Mass Index (BMI) Calculator can be used to calculate your BMI value and weight status while taking your age into consideration.'),
    h6('This BMI Calculator is based on Metric units and the Weight category calculation is based on WHO recommended standards for both Male & Female adults of age 18 & above')
  ),
  mainPanel(
    h3('BMI Calculation'),
    h4('Your Age'),
    verbatimTextOutput("oid1"),
    h4('Your Sex'),
    verbatimTextOutput("oid2"),
    h4('Your Height'),
    verbatimTextOutput("oid3"),
    h4('Your Weight'),
    verbatimTextOutput("oid4"),
    h4('Your BMI Value in kg/m2'),
    verbatimTextOutput("BMI"),
    h4('Your Calculated Weight Category'),
    verbatimTextOutput("category")
  )
))