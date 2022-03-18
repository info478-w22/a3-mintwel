### UI ###

# widgets
# chart_widget <- selectInput(
#   inputId = "variable_name",
#   label = "label",
#   # choices = list of choices
# )
# 
# emission_type <- radioButtons(
#   inputId = "variable_name",
#   label = "label",
#   # choices = list of choices
# )

my_ui <-
  navbarPage(
    "COVID-19: Disease Modeling",
    Introduction,
    Deterministic_Model,
    Stochastic_Model,
    Interpretation
)

#home page
Introduction <- 
  #Create the intro page
  tabPanel(
    "Introduction", 
    titlePanel("Covid-19"),
    p( #Intro
      "The Covid-19 pandemic was declared in the winter of 2020, as the novel coronavirus spread
      throughout the globe, infecting millions of people. Covid-19 is a respitory disease
      that is caused by the SARS-CoV-2 virus. For most people, it leads to respitory illness.
      For most, it is a mild to moderate illness. For others, especially those with other 
      underlying illnesses, it can be very serious, requiring hospitalization or even
      lead to death. As a result, the much of the world has instituted mask mandates,
      social distancing, and vaccine requirements to stop the spread of the virus."),
     p( #Intro to app
      "This interactive application will help you explore the coronovirus pandemic through data represenatation and various
    visuals."),
    p("All data used was found from the following sources:"),
    h1("Data Description and Data Sets"),
    p("For the analysis, I used two data sets, both from the"),
      a("CDC", href = "https://covid.cdc.gov/covid-data-tracker/#datatracker-home"),
    
    h1("Author"),
    p("This interactive Shiny Application was created by Minttu Welander."),
      h1("GitHub"),
      a("Report Link", href = "https://github.com/info478-w22/a3-mintwel"),
    )

# Deterministic_Model
## Tab panel 
Deterministic_Model <- tabPanel(
  title = "The Deterministic Model",
  titlePanel(h1("Deterministic Model")),
  p("This page will showcase a deterministic model of COVID-19 while looking at
    the effectiveness of social distancing."),
    
    sidebarLayout(
      sidebarPanel(
        # widgets
      ),
      
      mainPanel(
        plotlyOutput(outputId = "graph_one"),
        p("From the plot, we can also see the transmission rate of Covid-19
          without social distancing, which is at a maximum of 63% transmission.
          These numbers show how the coronavirus can spread quickly
          through a population and infect many to most people."),
        plotlyOutput(outputId = "graph_two"),
        p("From the plot, we can also see the transmission rate of Covid-19
          changes with the implementation of social distancing, 
          which changes the transmission rate to less than 1%, but showcased here
          as 1% in the model in order to provide a different look
          at the transmission rates.
          These numbers show how the coronavirus spread can be slowed down
          with the use of social distancing.")
      )
    )
  )


# Stochastic_Model
Stochastic_Model <- tabPanel(
  "Stochastic Model",
  
  titlePanel("Stochastic Model"),
  p("This page will showcase a stochastic model of COVID-19 and look at the
    effectivness of mask usage."),
  
  sidebarLayout(
    sidebarPanel(
      # widgets
    ),
    
    mainPanel(
      plotlyOutput(outputId = "graph_three"),
      p("From the plot, we can see the transmission rate of Covid-19
          without mask usage, which is at a maximum of 63% transmission.
          These numbers show how the coronavirus can spread quickly
          through a population and how rapidly it can infect many to most people."),
      plotlyOutput(outputId = "graph_four"),
      p("From the plot, we can also see the transmission rate of Covid-19
          changes with the implementation of mask uasge. This policy implementation
          changes the transmission rate to a third of what it was previously, making
          it approximately 21%. This dramatic decrease is how regular surgical masks
          can help slow down the spread of Covid-19. Although not modeled here,
          the use of N-95 masks made the transmission rate of the coronavirus virtually
          nonexistant. Therefore, these studies, models, and numbers showcase
          how our mask usage is important and lowers the risk of transmission
          and infection.")
    )
  )
)

#Interpretation
## Tab panel
Interpretation <- tabPanel(
  "Interpretation",
  titlePanel("Interpretation"),
  mainPanel(
  p("Both the Stochastic and Deterministic models of COVID-19 allow us to gain
    many valuable insights as to how the virus spreads throughout a population
    with various guidelines. One of the most important takeaways, in my opinion,
    is looking at how the chanes of transmission change so drastically with
    the implementation of social distancing. According to [one 
    study] (https://www.ncbi.nlm.nih.gov/pmc/articles/PMC7976050/#:~:text=The%20maximum%20probability%20of%2063.2,in%20order%20to%20avoid%20infection.)
    the transmission rate decreased from 63% to less than 1% when social
    distancing guidelines of 1.5 meters of separation. These guidelines are 
    modeled and the data shows how important they can be to helping maintain 
    a healthy population."),
  p("Another important takeaway is that mask usage can, and does, help slow down
    the transmission rates of Covid-19. As shown in the models, the transmission
    rate dropped to a third of what it was before when implementing
    the use of surgical masks. Furthermore, the use of N-95 masks would have
    dropped the transmission rates to zero, proving to be even more effective.")
  )
)

