library(shiny)
shinyUI(fluidPage(
  titlePanel("Deployment Cost of Video System"),
  
  sidebarLayout(position = "right",
                
                sidebarPanel(
                  
                  h3("Deployment Config"),
                  numericInput("numUsers", "Number of users", 0, 0, 2000,50),
                  checkboxInput("mcu", "MCU required?", FALSE),
                  
                  h3("Component Cost"),
                  numericInput("controlCost", "Controller", 1000),
                  numericInput("routerCost", "Router", 1000),
                  numericInput("mcuCost", "MCU", 1000)
                ),
                
                mainPanel(
                  
                  h3("Documentation"),
                  h4("Purpose"),
                  p("This application calculates the estimated cost of deploying a video conferencing setup in a company,
                    given the number of users"),
                  p("Enter the number of users and whether an MCU is required for bridging in the sidebar
                    and the required components and cost will be displayed."),
                                    
                  h3("Components Required"),
                  h4("Controllers"),
                  textOutput("numControl"),
                  h4("Routers"),
                  textOutput("numRouter"),
                  h4("MCUs"),
                  textOutput("numMCU"),
                  
                  h3("Total Cost"),
                  textOutput("totalCost")
                  
                )
  )
  
  
))
