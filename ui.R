library(shiny)
library(shinythemes)
shinyUI(navbarPage("Shiny App",theme=shinytheme("yeti"),
                   tabPanel("Application",
                   img(src='headers.png'),
                   br(),
                   br(),
                   HTML("<strong>Created by: Gilberto Saenz</strong>"),
                   br(),
                   HTML("<strong>Date: 02 March 2017</strong>"),
                   br(),
                   HTML("<strong>email:<a> gilbertosaenz1977@gmail.com </a></strong>"),
                   br(),
                   titlePanel(HTML("<font color=#b3cce6><center>App for Next Word Prediction</center></font>")),
                   h6(HTML("<font color=#ff9933><center>Please wait a few seconds for the data to be updated</center></font>")),
                   hr(),
                   textInput('inputText','Introduce your text: ',"Please type your text... "),
                   hr(),
                   h5(HTML("<b>Next Expected Word : </b> (Top 4 Predictions)")),
                   verbatimTextOutput("text"),
                   hr()
                   ),
                   tabPanel("About The Application",
                            titlePanel(HTML("<center>Coursera Data Science Capstone Project</center>")),
                            hr(),
                            h5("This application is the capstone project for the Coursera Data Science specialization held by professors of the Johns Hopkins University and in cooperation with SwiftKey."),
                            img(src='headers.png'),
                            hr(),
                            br(),
                            h4("The Goal"),
                            h5("The goal of this data science specialization  is to mimic the experience of being a data scientist. As a practicing data scientist it is entirely common to get a messy data set, a vague question, and very little instruction on exactly how to analyze the data. The goal here is to have the same experience but with added support in the form of forums, discussion with instructors, feedback from SwiftKey and Coursera engineers, and a structured problem to solve."),
                            hr(),
                            h4("Methodology"),
                            h5("The summary of the methodology aplied is:"),
                            h5("1. Understanding the problem"),
                            h5("2. Data acquisition and cleaning"),
                            h5("3. Exploratory analysis"),
                            h5("4. Statistical modeling"),
                            h5("5. Predictive modeling"),
                            h5("6. Creative exploration"),
                            h5("7. Creating a data product"),
                            h5("8. Creating a short slide deck pitching your product"),
                            hr(),
                            h5("After creating a data sample from the SwiftKey data set, this sample was cleaned by:"),
                            h5("1. Removing Unnecesary Punctuation"),
                            h5("2. Removing Unnecesary White Spaces"),
                            h5("3. Moving all Words to Lower Case"),
                            h5("4. Removing Special Characters"),
                            h5("5. Removing Numbers"),
                            br(),
                            h5("After data the sample data is grouped into n-grams, which is a contiguous sequence of n items from a given sequence of text or speech"),
                            h5("For this application I'm creating:"),
                            h5("uni-gram(1)"), 
                            h5("bi-gram(2)"),
                            h5("tri-gram(3)"),
                            h5("quad-gram(4)"), 
                            h5("term frequency data sets. With that data sets, the application uses them to predict the next word to be inputed in the input text box by the user."),
                            h5("One important this is that application gives the user 4 potential words to use, similar to SwiftKet application used by smart phones"),
                            hr(),
                            h4("How to Use the Application"),
                            h5("The user interface is really simple, once the application is launched, it will take aprox. 10 secs to access the n-grams, then in the input box, the user will be able to type any sentence or word and the application will suggest/predict 4 different words to be typed in"),
                            img(src='Screen.png'),
                            br(),
                            br()
                   )))




                              
                                  
 
                   
                   
                   
