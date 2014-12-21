library(shiny)
shinyUI(pageWithSidebar(
  headerPanel('Body Mass Index (BMI) Calculator'),
  sidebarPanel(
    textInput(inputId='height',label='Please enter height in inches'),
    textInput(inputId='weight',label='Weight in pounds'),
    
    
    h3('BMI Categories:'),
    h4('Underweight = <18.5'),
    h4('Normal weight = 18.5-24.9'), 
    h4('Overweight = 25-29.9'), 
    h4('Obesity = BMI of 30 or greater')
  ),
  mainPanel(
    h3('Body Mass Index Results'),
    p('Height output in inches'),
    textOutput('heightOutputInches'),
    p('Height output in Meters'),
    textOutput('heightOutputMeters'),
    p('-----------------------'),
    p('Weight output in pounds'),
    textOutput('weightOutputPounds'),
    p('Weight output in kilograms'),
    textOutput('weightOutputkg'),
    p('-----------------------'),
    h4('BMI'),
    textOutput('bmi'),
    p('-----------------------'),
    h4('Help Documentation to show application usage'),
    p('This application is used to calculate Body Mass Index(BMI)'),
    p('Please enter height in inches and weight in pounds to see BMI value'),
    p('After height is entered, application shows height in inches and meters in a reactive way'),
    p('After weight is entered, application shows weight in pounds and kilograms in a reactive way'),
    p('If height or weight does not have valid numeric value, computed output fields show NA'),
    p('Application also shows BMI interpretation as underweight, normal, overweight and obese')
  )
))