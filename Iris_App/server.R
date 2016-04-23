library(shiny)
library(caret)
library(randomForest)


#We load the Random Forest Model that we created
model <- load("data/rf_model.rda")

# Define server logic for predicting the Iris Species
shinyServer(function(input, output) {
        
        output$text1 <- renderText({
                
                # We create an empty data set
                prediction <- data.frame(Sepal.Length = input$sepal.length,
                Sepal.Width = input$sepal.width,
                Petal.Length = input$petal.length,
                Petal.Width = input$petal.width,
                Species = "")
                
                # We predict the species using the RF Model
                result <- predict(get(model), prediction)
                
                # We display the result
                paste("It's a ", result)
                
        })
        
        
        
        }
)
