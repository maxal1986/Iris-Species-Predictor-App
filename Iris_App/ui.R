library(shiny)

# Define UI
shinyUI(fluidPage(
        
        # Application title
        titlePanel("Predicting Iris Species"),
        
        # Sidebar with a slider input for the Speal & Petal values
        sidebarLayout(
                sidebarPanel(
                        helpText("Insert the Sepal & Petal values (up to 1 decimal)"),
                        
                        fluidRow(
                                h3("Sepal Info"),
                                column(5,
                                       numericInput("sepal.length", 
                                                    label = h5("Length"), 
                                                    value = 1, step = 0.1)),
                                column(5,
                                       numericInput("sepal.width", 
                                                    label = h5("Width"), 
                                                    value = 1, step = 0.1))
                        ),
                        
                        fluidRow(
                                h3("Petal Info"),
                                column(5,
                                       numericInput("petal.length", 
                                                    label = h5("Length"), 
                                                    value = 1, step = 0.1)),
                                column(5,
                                       numericInput("petal.width", 
                                                    label = h5("Width"), 
                                                    value = 1, step = 0.1))
                        ),
                        submitButton("Submit")
                        
                ),
                
                # Show a plot of the generated distribution
                mainPanel(
                        h2(textOutput("text1"))
                )
        )
))