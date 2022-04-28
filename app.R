#
# This is a Shiny web application. You can run the application by clicking
# the 'Run App' button above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)
library(dplyr)
library(ggplot2)

# Define UI for application 
ui <- fluidPage(
    tabsetPanel(
        tabPanel("Questions",
                 titlePanel("Confidence Calibration"),
                 
                 h3("Round 1: Are these animal facts true or false?"),
                 
                 fluidRow(
                     column(4,
                            radioButtons("Q1", label = "The elephant is the world's largest animal",
                                         choices = list("True" = FALSE, "False" = TRUE), 
                                         selected = FALSE)),
                     column(4,
                            sliderInput("Q1.c", label = "Select confidence level", min = 55, 
                                        max = 95, value = 55, step = 10))
                     
                 ),
                 
                 br(),
                 
                 fluidRow(
                     column(4,
                            radioButtons("Q2", label = "Sea otters sometimes hold hands while they sleep",
                                         choices = list("True" = TRUE, "False" = FALSE), 
                                         selected = TRUE)),
                     column(4,
                            sliderInput("Q2.c", label = "Select confidence level", min = 55, 
                                        max = 95, value = 55, step = 10))
                     
                 ),
                 
                 br(),
                 
                 fluidRow(
                     column(4,
                            radioButtons("Q3", label = "Centipedes have more legs than any other animal",
                                         choices = list("True" = FALSE, "False" = TRUE), 
                                         selected = FALSE)),
                     column(4,
                            sliderInput("Q3.c", label = "Select confidence level", min = 55, 
                                        max = 95, value = 55, step = 10))
                     
                 ),
                 
                 br(),
                 
                 fluidRow(
                     column(4,
                            radioButtons("Q4", label = "Mammals and dinosaurs coexisted",
                                         choices = list("True" = TRUE, "False" = FALSE), 
                                         selected = TRUE)),
                     column(4,
                            sliderInput("Q4.c", label = "Select confidence level", min = 55, 
                                        max = 95, value = 55, step = 10))
                     
                 ),
                 
                 br(),
                 
                 fluidRow(
                     column(4,
                            radioButtons("Q5", label = "Bears can't climb trees",
                                         choices = list("True" = FALSE, "False" = TRUE), 
                                         selected = FALSE)),
                     column(4,
                            sliderInput("Q5.c", label = "Select confidence level", min = 55, 
                                        max = 95, value = 55, step = 10))
                     
                 ),
                 
                 br(),
                 
                 fluidRow(
                     column(4,
                            radioButtons("Q6", label = "Camels store water in their humps",
                                         choices = list("True" = FALSE, "False" = TRUE), 
                                         selected = FALSE)),
                     column(4,
                            sliderInput("Q6.c", label = "Select confidence level", min = 55, 
                                        max = 95, value = 55, step = 10))
                     
                 ),
                 
                 br(),
                 
                 fluidRow(
                     column(4,
                            radioButtons("Q7", label = "Flamingos are pink because they eat shrimp",
                                         choices = list("True" = TRUE, "False" = FALSE), 
                                         selected = TRUE)),
                     column(4,
                            sliderInput("Q7.c", label = "Select confidence level", min = 55, 
                                        max = 95, value = 55, step = 10))
                     
                 ),
                 
                 br(),
                 
                 fluidRow(
                     column(4,
                            radioButtons("Q8", label = "The giant panda eats mostly bamboo",
                                         choices = list("True" = TRUE, "False" = FALSE), 
                                         selected = TRUE)),
                     column(4,
                            sliderInput("Q8.c", label = "Select confidence level", min = 55, 
                                        max = 95, value = 55, step = 10))
                     
                 ),
                 
                 br(),
                 
                 fluidRow(
                     column(4,
                            radioButtons("Q9", label = "The platypus is the only mammal that lays eggs",
                                         choices = list("True" = FALSE, "False" = TRUE), 
                                         selected = FALSE)),
                     column(4,
                            sliderInput("Q9.c", label = "Select confidence level", min = 55, 
                                        max = 95, value = 55, step = 10))
                     
                 ),
                 
                 br(),
                 
                 fluidRow(
                     column(4,
                            radioButtons("Q10", label = "A mule is a cross between a male donkey and a female horse",
                                         choices = list("True" = TRUE, "False" = FALSE), 
                                         selected = TRUE)),
                     column(4,
                            sliderInput("Q10.c", label = "Select confidence level", min = 55, 
                                        max = 95, value = 55, step = 10))
                     
                 ),

                 h3("Round 2: Which historical figure was born first?"),


                 fluidRow(
                     column(4,
                            radioButtons("Q11", label = "Julius Caesar or Confucius",
                                         choices = list("Caesar" = FALSE, "Confucius" = TRUE),
                                         selected = FALSE)),
                     column(4,
                            sliderInput("Q11.c", label = "Select confidence level", min = 55,
                                        max = 95, value = 55, step = 10))

                 ),

                 br(),

                 fluidRow(
                     column(4,
                            radioButtons("Q12", label = "Fidel Castro or Mahatma Gandhi",
                                         choices = list("Castro" = FALSE, "Gandhi" = TRUE),
                                         selected = FALSE)),
                     column(4,
                            sliderInput("Q12.c", label = "Select confidence level", min = 55,
                                        max = 95, value = 55, step = 10))

                 ),
                 
                 br(),
                 
                 fluidRow(
                     column(4,
                            radioButtons("Q13", label = "Nelson Mandela or Anne Frank",
                                         choices = list("Mandela" = TRUE, "Frank" = FALSE),
                                         selected = TRUE)),
                     column(4,
                            sliderInput("Q13.c", label = "Select confidence level", min = 55,
                                        max = 95, value = 55, step = 10))
                     
                 ),
                 
                 br(),
                 
                 fluidRow(
                     column(4,
                            radioButtons("Q14", label = "Cleopatra or Muhammad",
                                         choices = list("Cleopatra" = TRUE, "Muhammad" = FALSE),
                                         selected = TRUE)),
                     column(4,
                            sliderInput("Q14.c", label = "Select confidence level", min = 55,
                                        max = 95, value = 55, step = 10))
                     
                 ),
                 
                 br(),
                 
                 fluidRow(
                     column(4,
                            radioButtons("Q15", label = "William Shakespeare or Joan of Arc",
                                         choices = list("Shakespeare" = FALSE, "Joan of Arc" = TRUE),
                                         selected = FALSE)),
                     column(4,
                            sliderInput("Q15.c", label = "Select confidence level", min = 55,
                                        max = 95, value = 55, step = 10))
                     
                 ),
                 
                 br(),
                 
                 fluidRow(
                     column(4,
                            radioButtons("Q16", label = "George Washington or Sun Tzu",
                                         choices = list("Washington" = FALSE, "Sun Tzu" = TRUE),
                                         selected = FALSE)),
                     column(4,
                            sliderInput("Q16.c", label = "Select confidence level", min = 55,
                                        max = 95, value = 55, step = 10))
                     
                 ),
                 
                 br(),
                 
                 fluidRow(
                     column(4,
                            radioButtons("Q17", label = "Genghis Khan or Leonardo Da Vinci",
                                         choices = list("Khan" = TRUE, "Da Vinci" = FALSE),
                                         selected = TRUE)),
                     column(4,
                            sliderInput("Q17.c", label = "Select confidence level", min = 55,
                                        max = 95, value = 55, step = 10))
                     
                 ),
                 
                 br(),
                 
                 fluidRow(
                     column(4,
                            radioButtons("Q18", label = "Queen Victoria or Karl Marx",
                                         choices = list("Victoria" = FALSE, "Marx" = TRUE),
                                         selected = FALSE)),
                     column(4,
                            sliderInput("Q18.c", label = "Select confidence level", min = 55,
                                        max = 95, value = 55, step = 10))
                     
                 ),
                 
                 br(),
                 
                 fluidRow(
                     column(4,
                            radioButtons("Q19", label = "Saddam Hussein or Marilyn Monroe",
                                         choices = list("Hussein" = FALSE, "Monroe" = TRUE),
                                         selected = FALSE)),
                     column(4,
                            sliderInput("Q19.c", label = "Select confidence level", min = 55,
                                        max = 95, value = 55, step = 10))
                     
                 ),
                 
                 br(),
                 
                 fluidRow(
                     column(4,
                            radioButtons("Q20", label = "Albert Einstein or Mao Zedong",
                                         choices = list("Einstein" = TRUE, "Zedong" = FALSE),
                                         selected = TRUE)),
                     column(4,
                            sliderInput("Q20.c", label = "Select confidence level", min = 55,
                                        max = 95, value = 55, step = 10))
                     
                 ),
                 
                 h3("Round 3: Which country had more people in 2019?"),
                 
                 br(),
                 
                 fluidRow(
                     column(4,
                            radioButtons("Q21", label = "Germany or France",
                                         choices = list("Germany" = TRUE, "France" = FALSE),
                                         selected = TRUE)),
                     column(4,
                            sliderInput("Q21.c", label = "Select confidence level", min = 55,
                                        max = 95, value = 55, step = 10))
                     
                 ),
                 
                 br(),
                 
                 fluidRow(
                     column(4,
                            radioButtons("Q22", label = "Japan or South Korea",
                                         choices = list("Japan" = TRUE, "South Korea" = FALSE),
                                         selected = TRUE)),
                     column(4,
                            sliderInput("Q22.c", label = "Select confidence level", min = 55,
                                        max = 95, value = 55, step = 10))
                     
                 ),
                 
                 br(),
                 
                 fluidRow(
                     column(4,
                            radioButtons("Q23", label = "Brazil or Argentina",
                                         choices = list("Brazil" = FALSE, "Argentina" = TRUE),
                                         selected = FALSE)),
                     column(4,
                            sliderInput("Q23.c", label = "Select confidence level", min = 55,
                                        max = 95, value = 55, step = 10))
                     
                 ),
                 
                 br(),
                 
                 fluidRow(
                     column(4,
                            radioButtons("Q24", label = "Egypt or Botswana",
                                         choices = list("Egypt" = TRUE, "Botswana" = FALSE),
                                         selected = TRUE)),
                     column(4,
                            sliderInput("Q24.c", label = "Select confidence level", min = 55,
                                        max = 95, value = 55, step = 10))
                     
                 ),
                 
                 br(),
                 
                 fluidRow(
                     column(4,
                            radioButtons("Q25", label = "Mexico or Guatemala",
                                         choices = list("Mexico" = TRUE, "Guatemala" = FALSE),
                                         selected = TRUE)),
                     column(4,
                            sliderInput("Q25.c", label = "Select confidence level", min = 55,
                                        max = 95, value = 55, step = 10))
                     
                 ),
                 
                 br(),
                 
                 fluidRow(
                     column(4,
                            radioButtons("Q26", label = "Panama or Belize",
                                         choices = list("Panama" = TRUE, "Belize" = FALSE),
                                         selected = TRUE)),
                     column(4,
                            sliderInput("Q26.c", label = "Select confidence level", min = 55,
                                        max = 95, value = 55, step = 10))
                     
                 ),
                 
                 br(),
                 
                 fluidRow(
                     column(4,
                            radioButtons("Q27", label = "Jamaica or Haiti",
                                         choices = list("Jamaica" = FALSE, "Haiti" = TRUE),
                                         selected = FALSE)),
                     column(4,
                            sliderInput("Q27.c", label = "Select confidence level", min = 55,
                                        max = 95, value = 55, step = 10))
                     
                 ),
                 
                 br(),
                 
                 fluidRow(
                     column(4,
                            radioButtons("Q28", label = "Greece or Norway",
                                         choices = list("Greece" = TRUE, "Norway" = FALSE),
                                         selected = TRUE)),
                     column(4,
                            sliderInput("Q28.c", label = "Select confidence level", min = 55,
                                        max = 95, value = 55, step = 10))
                     
                 ),
                 
                 br(),
                 
                 fluidRow(
                     column(4,
                            radioButtons("Q29", label = "China or India",
                                         choices = list("China" = TRUE, "India" = FALSE),
                                         selected = TRUE)),
                     column(4,
                            sliderInput("Q29.c", label = "Select confidence level", min = 55,
                                        max = 95, value = 55, step = 10))
                     
                 ),
                 
                 br(),
                 
                 fluidRow(
                     column(4,
                            radioButtons("Q30", label = "Iraq or Iran",
                                         choices = list("Iraq" = FALSE, "Iran" = TRUE),
                                         selected = FALSE)),
                     column(4,
                            sliderInput("Q30.c", label = "Select confidence level", min = 55,
                                        max = 95, value = 55, step = 10))
                     
                 ),
                 
                 h3("Round 4: Are these science facts true or false?"),
                 
                 br(),
                 
                 fluidRow(
                     column(4,
                            radioButtons("Q31", label = "Mars has one moon just like Earth",
                                         choices = list("True" = FALSE, "False" = TRUE),
                                         selected = FALSE)),
                     column(4,
                            sliderInput("Q31.c", label = "Select confidence level", min = 55,
                                        max = 95, value = 55, step = 10))
                     
                 ),
                 
                 br(),
                 
                 fluidRow(
                     column(4,
                            radioButtons("Q32", label = "Scurvy is casued by a deficit of vitamin C",
                                         choices = list("True" = TRUE, "False" = FALSE),
                                         selected = TRUE)),
                     column(4,
                            sliderInput("Q32.c", label = "Select confidence level", min = 55,
                                        max = 95, value = 55, step = 10))
                     
                 ),
                 
                 br(),
                 
                 fluidRow(
                     column(4,
                            radioButtons("Q33", label = "Brass is made from iron and copper",
                                         choices = list("True" = FALSE, "False" = TRUE),
                                         selected = FALSE)),
                     column(4,
                            sliderInput("Q33.c", label = "Select confidence level", min = 55,
                                        max = 95, value = 55, step = 10))
                     
                 ),
                 
                 br(),
                 
                 fluidRow(
                     column(4,
                            radioButtons("Q34", label = "One tablespoon of oil has more calories than one tablespoon of butter",
                                         choices = list("True" = TRUE, "False" = FALSE),
                                         selected = TRUE)),
                     column(4,
                            sliderInput("Q34.c", label = "Select confidence level", min = 55,
                                        max = 95, value = 55, step = 10))
                     
                 ),
                 
                 br(),
                 
                 fluidRow(
                     column(4,
                            radioButtons("Q35", label = "Helium is the lightest element",
                                         choices = list("True" = FALSE, "False" = TRUE),
                                         selected = FALSE)),
                     column(4,
                            sliderInput("Q35.c", label = "Select confidence level", min = 55,
                                        max = 95, value = 55, step = 10))
                     
                 ),
                 
                 br(),
                 
                 fluidRow(
                     column(4,
                            radioButtons("Q36", label = "The common cold is caused by bacteria",
                                         choices = list("True" = FALSE, "False" = TRUE),
                                         selected = FALSE)),
                     column(4,
                            sliderInput("Q36.c", label = "Select confidence level", min = 55,
                                        max = 95, value = 55, step = 10))
                     
                 ),
                 
                 br(),
                 
                 fluidRow(
                     column(4,
                            radioButtons("Q37", label = "The deepest place on earth is in the Pacific Ocean",
                                         choices = list("True" = TRUE, "False" = FALSE),
                                         selected = TRUE)),
                     column(4,
                            sliderInput("Q37.c", label = "Select confidence level", min = 55,
                                        max = 95, value = 55, step = 10))
                     
                 ),
                 
                 br(),
                 
                 fluidRow(
                     column(4,
                            radioButtons("Q38", label = "Seasons are caused by the Earth orbiting the sun in an elliptical path",
                                         choices = list("True" = FALSE, "False" = TRUE),
                                         selected = FALSE)),
                     column(4,
                            sliderInput("Q38.c", label = "Select confidence level", min = 55,
                                        max = 95, value = 55, step = 10))
                     
                 ),
                 
                 br(),
                 
                 fluidRow(
                     column(4,
                            radioButtons("Q39", label = "Jupiter is the largest planet in our solar system",
                                         choices = list("True" = TRUE, "False" = FALSE),
                                         selected = TRUE)),
                     column(4,
                            sliderInput("Q39.c", label = "Select confidence level", min = 55,
                                        max = 95, value = 55, step = 10))
                     
                 ),
                 
                 br(),
                 
                 fluidRow(
                     column(4,
                            radioButtons("Q40", label = "The atoms in a solid are more densely packed than in a gas",
                                         choices = list("True" = TRUE, "False" = FALSE),
                                         selected = TRUE)),
                     column(4,
                            sliderInput("Q40.c", label = "Select confidence level", min = 55,
                                        max = 95, value = 55, step = 10))
                     
                 ),
                 
                 
                 
                 
                 
                 ),
        tabPanel("Results",
                 plotOutput("results")),
        tabPanel("Data",
                 verbatimTextOutput("dataframe"))
    )
    
)

# Define server logic 
server <- function(input, output) {

    
    data = reactive({
        
        #key = c(FALSE, TRUE, FALSE, TRUE, FALSE, FALSE, TRUE, TRUE, FALSE, TRUE)
        
        qs = 40
        
        ans = paste(rep("Q", qs), 1:qs, sep = "")
        answers = sapply(ans, function(i) input[[i]])
        
        con = paste(rep("Q", qs), 1:qs, ".c", sep = "")
        confidence = sapply(con, function(i) input[[i]])
        
        data = data.frame(answers = as.logical(answers),
                          confidence = confidence)
        
        data = data %>%
            group_by(confidence) %>%
            summarise(true_confidence = mean(answers))
        
    })
    
    
    

    output$results <- renderPlot({

        plot.df = data()

        plot.df %>%
            ggplot(aes(x=confidence, y=true_confidence)) +
            geom_line() +
            geom_point() +
            ylab("True Confidence") +
            xlab("Selected Confidence Level")
    })

    output$dataframe <- renderPrint({
        
        df = data()
        
        print(df)
        
    })
    
    
    
    
    
    
    
}

# Run the application 
shinyApp(ui = ui, server = server)
