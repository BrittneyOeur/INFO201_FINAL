library(dplyr)
library(ggplot2)
library(stringr)
library(shiny)
library(plotly)
library(shinythemes)

source("data_wrangling.r")
df <- read.csv("unifiedData.csv")

intro_pg <- tabPanel("Background",
                     fluidPage(img(src = "https://www.dhs.wisconsin.gov/sites/default/files/styles/supersize/public/dam/image/8/10712-tobaccoischanging-webimage-products-header.png?itok=4cpOyoO3"),
                               h1(tags$b("Tobacco Use in Washington state (Seattle, Bellevue, and Everett)")),
                               p(tags$b("Group 11: Brittney Oeur, Elizabeth Williams, and Soha Sultana")),
                               br(),
                               
                               p("The story our group intends to tell is about the relationship between tobacco use, 
                                  employment status and/or education level, and mental health. Such as how the use of tobacco/smoking, 
                                  the status of someone’s employment and/or education level may have an impact on their mental health."),
                               
                               p("We believe this an interesting and compelling story because it touches on a topic that affects a large portion of the 
                                 population. In recent years, the awareness of mental health has risen tremendously, and advocating for people to seek 
                                 professional help has been more accepted by mainstream culture. In addition, smoking is a widespread habit that affects
                                 the lives of millions of people, and its impact on mental health is often overlooked. By exploring this topic, we can 
                                 shed light on the issues. Moreover, the impact of employment status and/or education level on smoking and mental health 
                                 can highlight the larger issue of socioeconomic inequality. Within the context of the ongoing pandemic, the relationship
                                 between smoking and mental health has become even more pertinent. Stress and anxiety levels have been on the rise, which
                                 has led people to turn to smoking as a coping mechanism. This can then lead to an increased need for mental health 
                                 support, especially for those in lower socioeconomic brackets who may have more limited resources."),
                                         
                               p("Some of the data we plan to look at includes causes of smoking in young adults, and the rates of this 
                                 over time and what treatment options have been presented across the country. These pieces of data are important
                                 to look at because it can show what issues are causing young adults to engage in these harmful behaviors, 
                                 and is it because of the lack of mental health care that is causing this. Analyzing this data can help us understand 
                                 the correlation between mental health issues and tobacco use. Another question that can be asked is how the rates of
                                 young adults using these products changed over time. This is another important question to think about because it can 
                                 show what significant cultural and historical changes have affected the rate of mental health in young adults to turn
                                 to tobacco use. (Ex. COVID). Another question that is worth asking is how the different states responded to this crisis.
                                 This is important to look at, as it can give insight on what solutions are working to combat this issue and what areas 
                                 are experiencing this problem at unprecedented levels. With this information, it can give lawmakers a general overview 
                                 of this issue and make them aware of what solutions are working, by comparing the data from other states and seeing 
                                 what solutions have worked and what have not."),
                               
                               p("Overall, this story is relevant and timely, given the pandemic and the extensive impact it has had on mental health.
                                 It is also a topic that affects a large portion of the population and is therefore of interest to many communities.
                                 By exploring the relationship between smoking, employment status, education level, and mental health, we can better 
                                 understand the complex interplay between these factors."),
                               
                               h2(tags$b("Prerequiste information:")),
                               h3(tags$b("Cost of Living:")),
                               tags$ol(
                                 tags$li(p(tags$b("Seattle:"), "Has a high cost of living compared to the national average, it has consistently ranked among the top cities 
                                            in terms of cost of living in the United States during this period (Kplnger). Some factors that contributed to that are 
                                            the rising housing prices, transportation costs, and the overall strong economy of the region contributed to the increase.")),
                                 tags$li(p(tags$b("Bellevue:"), "Has a high cost of living, during 2011-2019, it had a similar trend as Seattle, with a significant increase 
                                            in housing prices and overall expenses.")),
                                 tags$li(p(tags$b("Everett:"), "Generally has a lower living cost than Seattle and Bellevue. However, it’s important to note that the cost of
                                            living in Everett also experienced an upward trend during this period, albeit at a slightly slower pace."))
                               ),
                               
                               h3(tags$b("Tobacco Use")),
                               tags$ul(
                                 tags$li(p("Washington State has been implementing many measures to reduce tobacco use and promote public health. Some of the initiatives
                                            include increased taxes on tobacco products, restrictions on smoking in public places, and anti-smoking campaigns."))
                               ),
                               
                               h3(tags$b("Employment and Umemployment Rates:")),
                               tags$ol(
                                 tags$li(p(tags$b("Seattle:"), "Had a robust job market during the years 2011-2019, the city experienced significant job growth, primarily driven
                                            by industries such as technology, aerospace, and healthcare. Major companies like Amazon, Microsoft, and Boeing have a strong presence
                                            in the Seattle area. The unemployment rate in Seattle remained relatively low compared to the national average during this period.")),
                                 tags$li(p(tags$b("Bellevue:"), "Also benefited from a strong job market, closely tied to the overall economic conditions of the Seattle metropolitan area.
                                            The city experienced job growth and had a relatively low unemployment rate during the years 2011-2019.")),
                                 tags$li(p(tags$b("Everett:"), "Experienced positive employment conditions. The presence of the aerospace industry, including Boeing’s manufacturing facilities,
                                            contributed to job creation in the region. The unemployment rate in Everett remained relatively low during this period."))
                               ),
                               
                               h3(tags$b("Educational Attainment:")),
                               tags$ol(
                                 tags$li(p(tags$b("Seattle:"), "The city is home to several renowned universities and colleges, including the University of Washington (UW) and Seattle University. 
                                            The city has a highly educated population, with many of the residents holding bachelor’s, master’s, and doctoral degrees. Seattle also has a strong emphasis 
                                            on technology and innovation, attracting highly skilled professionals.")),
                                 tags$li(p(tags$b("Bellevue:"), "The city is known for its thriving technology industry (such as Microsoft) and strong educational institutions. Bellevue has a high 
                                            percentage of residents with bachelor’s and advanced degrees, reflecting a well-educated workforce.")),
                                 tags$li(p(tags$b("Everett:"), "The city has educational opportunities available within the city and nearby regions. The city is home to Everett Community College, which 
                                            offers associate degree programs and technical education. Everett is also within proximity to universities and colleges in the Seattle metropolitan,
                                            allowing residents to pursue higher education."))
                               ),
                               
                               h2(tags$b("Datasets that was used:")),
                               tags$ul(
                                 tags$li(tags$b("Behavioral Risk Factor Data: Tobacco Use (2011 to present)")),
                                 tags$a(href = "https://catalog.data.gov/dataset/behavioral-risk-factor-data-tobacco-use-2011-to-present", "View dataset for Behavioral Risk Factor Data"),
                                 tags$li(tags$b("Seasonally Adjusted LAUS Estimates")),
                                 tags$a(href = "https://catalog.data.gov/dataset/seasonally-adjusted-laus-estimates", "View dataset for Seasonally Adjusted LAUS Estimates")
                               ),
                               
                               h2(tags$b("Background Research/Inspiration:")),
                               tags$ul(
                                 tags$li(tags$a(href = "https://mhanational.org/issues/2022/mental-health-america-access-care-data", "Access to Care Data 2022")),
                                 tags$li(tags$a(href = "https://www.kiplinger.com/real-estate/605051/most-expensive-cities-in-the-us", "Most Expensive Cities in the U.S.")),
                                 tags$li(tags$a(href = "https://mhanational.org/issues/state-mental-health-america", "The State of Mental Health in America")),
                                 tags$li(tags$a(href = "https://statisticalatlas.com/place/Washington/Seattle/Educational-Attainment", "Educational Attainment in Seattle, WA")),
                                 tags$li(tags$a(href = "https://statisticalatlas.com/place/Washington/Everett/Educational-Attainment", "Educational Attainment in Everett, WA")),
                                 tags$li(tags$a(href = "https://statisticalatlas.com/place/Washington/Bellevue/Educational-Attainment", "Educational Attainment in Bellevue, WA")),
                                 tags$li(tags$a(href = "https://www.bls.gov/eag/eag.wa.htm", "U.S. Bureau of Labor Statistics (Washington)")),
                                 tags$li(tags$a(href= "https://doh.wa.gov/you-and-your-family/tobacco/laws-and-regulations#:~:text=Engrossed%20House%20Bill%201074%20was,Tobacco%20and%20Vapor%2021%20law.", "Washington State Department of Health: Sale of Tobacco and Vapor Products")),
                                 tags$li(tags$a(href = "https://nida.nih.gov/publications/research-reports/tobacco-nicotine-e-cigarettes/do-people-mental-illness-substance-use-disorders-use-tobacco-more-often#:~:text=Rates%20of%20smoking%20among%20people%20with%20mental%20illness,for%20non-Hispanic%20American%20Indian%20or%20Alaska%20Native%20adults.", "Do people with mental illness and substance use disorders use tobacco more often?")),
                                 tags$li(tags$a(href = "https://doh.wa.gov/you-and-your-family/tobacco/prevention", "Washington State Department of Health: Preventing Tobacco Use Among Youth and Young Adults"))
                               ),
                               br(),
                               p(tags$b("Done by Brittney Oeur"))
                     )
)

data_story_pg <- tabPanel("Data Stories",
                          fluidPage(
                            titlePanel("Influential Factors"),
                            
                            tabsetPanel(
                              tabPanel("Employment",
                                       h3(tags$b("Employment Status")),
                                       p("This visualizations is focused on the average employment and unemployment rate in Washington state, specifically
                                         in the Seattle, Bellevue, and Everett areas."),
                                       tags$ul(
                                         tags$li("Includes all ages, all races, and all types of educational levels"),
                                         tags$li("Includes those who are employed and unemployed (however, they both must be tobacco users)"),
                                         tags$li("Includes years from 2011-2019")
                                       ),
                                       
                                       sidebarLayout(
                                         sidebarPanel(
                                           sliderInput("employ_id", "Filter by average employment per year", min = 2011, max = 2019, value = 2015)
                                         ),
                                         mainPanel(
                                           plotlyOutput("line_plot")
                                         )
                                       ),
                                       
                                       br(),
                                       
                                       h3(tags$b("Tobacco Usage")),
                                       p("This visualization is focused on the use of tobacco in Washington State, specificially in the Seattle, Bellevue, and 
                                         Everett areas. (The sample size of those who smokes tobacco, does not equate to the whole population of those cities)."),
                                       tags$ul(
                                         tags$li("Includes all ages, all races, and all types of educational levels"),
                                         tags$li("Includes all types of tobacco use (cigarettes, smokeless tobacco, and e-cigarette"),
                                         tags$li("Includes years from 2011-2019"),
                                         tags$li("The use of tobacco is shown in percentage out of the total sample size, it includes those who is currently smoking,
                                                 has quit or do not smoke.")
                                       ),
                                       
                                       sidebarLayout(
                                         sidebarPanel(
                                           sliderInput("tobacco_id", "Filter by average tobacco use per year", min = 2011, max = 2019, value = 2015)
                                         ),
                                         mainPanel(
                                           plotlyOutput("line_plot_2")
                                         )
                                       ),
                                       
                                       h3(tags$b("Employment/Unemployment Rate:")),
                                       p("The data demonstrates that between the years of 2011 and 2019 in Washington state, the employment rate has steadily been
                                         increasing and the unemployment rate gradually decreased at a very slow pace. Factors that may have contributed to these rates
                                         are the growth of the tech/healthcare industries and the tight labor market. Tech companies such as Microsoft and Amazon play a
                                         significant role in driving employment growth and attracting skilled workers to this region. This expansion has helped created
                                         job opportunities and contributed to the growth of the labor force. However, due to this, the skills gap posed a challenge for
                                         employers in Washington state, since employers struggled to find workers with the necessary skills and qualifications for specific
                                         jobs, particularly in high-demand sectors like technology and healthcare. Workforce development initiatives and partnerships between
                                         educational institutions and businesses aimed to bridge this gap by providing training and education tailored to industry needs.
                                         In addition, Washington State experienced a tight labor market in 2019, with low unemployment rates and high demand for skilled
                                         workers. The strong economy and rapid job growth led to increased competition among employers for qualified candidates. This
                                         provided job seekers with more opportunities, higher wages, and potentially better job benefits."),
                                       h3(tags$b("Tobacco Use:")),
                                       p("The data demonstrates that between the years of 2011 and 2019 in Washington state, the use of tobacco decreased from 2011 to 2018,
                                         however, it began to rise again in 2019. Factors that may have contributed to these values are raising the legal smoking age, in
                                         April 2019, Washington State raised the legal age to purchase tobacco and vapor products from 18 to 21 years old. This change aligned
                                         with the federal Tobacco 21 law, which is aimed to help reduce youth access to tobacco and vaping products and discourage smoking
                                         initiation. In addition, tobacco tax increase, in the legislative session of 2019, Washington state lawmakers considered proposals
                                         to increase taxes on cigarettes and other tobacco products. While the specific tax increase did not pass that year, discussions about
                                         tobacco taxation aimed to discourage smoking and generate revenue for public health programs."),
                                       br(),
                                       p(tags$b("Done by Brittney Oeur"))
                                       
                                       
                              ),
  
                              tabPanel("Education",
                                       h3(tags$b("Education Level and Tobacco Usage")),
                                       p("Users may select different years between 2011 and 2019 to examine how education level influences 
                                       rate of different types of tobacco use in Washington State 
                                         "),
                                       tags$ul(
                                         tags$li("Education level is defined as completing high school (12th grade), not finishing high school, 
                                                 or obtaining some level of higher education after high school"),
                                         tags$li("Rates of usage are based on average percentage of people surveyed who use 
                                                 tobacco on a regular basis in each category"),
                                         tags$li("Data on Smokeless Tobacco use is only available from the years 2016 - 2017"),
                                         tags$li("Includes people who fall into these age categories: Age 25 and Older, 18 to 24 Years, 25 to 44 Years,
                                                 45 to 64 Years, Age 20 and Older, 65 Years and Older")
                                       ),
                                       br(),
                                       br(),
                                       sidebarLayout(
                                         sidebarPanel(
                                           checkboxGroupInput(inputId = "education_yr", 
                                                              label = "Select Year(s) of Interest",
                                                              choices = c(2011:2019),
                                                              selected = 2011:2019,
                                                              )
                                         ),
                                         mainPanel(
                                           plotOutput(outputId = "education_plot")
                                         )
                                       ),
                                       br(),
                                       h3(tags$b("Summary")),
                                       p("The data demonstrates that between the years of 2011 and 2019 tobacco use in Washington State was 
                                         highest among adults that did not complete 12th grade, and lowest in those who only finished high school. "),
                                       p("Cigarette use reflects the most variance in rates across education levels. Average percentage of those 
                                         surveyed who do use cigarettes regularly is about 5% higher in those with less than 12th grade and those 
                                         with more than a 12th grade education. Surprisingly those with just a 12th grade education were consistently 
                                         about 20% lower than the highest rate. In all education levels, rates of cigarette use dropped by about 5% 
                                         over the years from 2011 to 2019."),
                                       p("Rates of smokeless tobacco use were near or under 5% of the surveyed population in all education levels.
                                         There was little to no change in these rates over the course of the study, but generally rates were slightly 
                                         highest among those with higher education. "),
                                       p("E-cigarette use only had data from the years 2016 and 2017 which meant little analysis could be done on their 
                                         relative rates. They were around 10% for both the education categories under and above 12th grade. Those with 
                                         only a high school education had slightly lower average percentages in these two years. Overall E-cigarette use 
                                         was higher than smokeless tobacco but much lower than cigarette use. "),
                                       br(),
                                       p(tags$b("Done by Elizabeth Williams"))
                              ),
                            )
                          )
  
)
  
takeaway_pg <- tabPanel("Takeaways",
                        h2(tags$b("Reflections")),
                        h4(tags$b("Employment:")),
                        p("Based on the change over time graph, we see that over the course of 2011-2019, the cost of living increased, which meant that more people
                          were looking for employment to sustain their lifestyle or to simply survive. This can cause tremendous stress and a possibility to cope with 
                          that, is the use of tobacco/smoking, Nicotine, is the addictive substance found in tobacco. The effects of nicotine are often followed by a
                          sense of relaxation and calm as the drug is metabolized and leaves the body. While some smokers may feel that smoking helps them relax or
                          cope with stress, this effect is likely to be temporary and short-lived. Over time, nicotine dependence can actually increase anxiety and
                          stress levels, and many smokers report feeling more stressed and anxious when they are unable to smoke."),
                        
                        h4(tags$b("Education:")),
                        p("It was expected that more education would yield lowered use of tobacco, but this was not proven from the data collected in Washington State 
                          from 2011 to 2019. Though the highest rates of tobacco use were among surveyed participants that had below a 12th grade education, participants 
                          with higher education were not far behind. This suggests tobacco usage is not a reflection of relative education, and inherent biases about people 
                          with less education are harmful and not proven by these analyses. It also means campaigns discouraging tobacco use should target all demographics; 
                          They do not need to be directed toward people with certain levels of education more than others. Stress is a likely contributor to rates of tobacco use, 
                          and is an evident component in the income analysis; however conclusions about stress and education level cannot me made on the basis of these results. 
                          Overall, tobacco use did trend down over the course of the survey across all education levels but relative rates remained, which suggests the influence 
                          education has on tobacco use is not likely to change in coming years."),
                        br(),
                        p(tags$b("Done by Brittney Oeur & Elizabeth Williams"))
)

# UI NAVIGATION
ui <- navbarPage("Tobacco Use",
                 intro_pg,
                 data_story_pg,
                 takeaway_pg,
)

# DEFINE SERVER LOGIC
server <- function(input, output){
  # Brittney Oeur
  # Employment (line plot)
  output$line_plot <- renderPlotly({
    filtered_change <- change_df %>% filter(Year <= input$employ_id)
    
    change_over_time_graph <- ggplot(data = filtered_change, aes(x = Year, y = avg_employment)) +
      geom_line(aes(col = EmploymentStatus)) +
      geom_point(size = 2) +
      labs(y = "Avg. Employment/Unemployment Rate", 
           x = "Years", 
           color = "Employment Status",
           title = "Employment/Unemployment Rate in WA state (2011-2019)") +
      scale_color_manual(values = c("#446c63", "#7a9380")) +
      theme(
        axis.title.x = element_text(color = "#446c63", size = 12, face = "bold"),
        axis.title.y = element_text(color = "#c3b6ad", size = 12, face = "bold")
      )
    
    return(change_over_time_graph)
  })
  
  output$line_plot_2 <- renderPlotly({
    filtered_change_2 <- tobacco_use_df %>% filter(Year <= input$tobacco_id)
    
    # Brittney Oeur
    # Tobacco use (line plot)
    tobacco_use_graph <- ggplot(data = filtered_change_2, aes(x = Year, y = Data_Value)) +
      geom_line(aes(col = Topic)) +
      geom_point() +
      labs(y = "Percentage Use", 
           x = "Years", 
           color = "Types of Tobacco Use",
           title = "Average Use of Tobacco in WA state (2011-2019)") +
      scale_color_manual(values = c("#446c63", "#7a9380", "#c3b6ad")) +
      theme(
        axis.title.x = element_text(color = "#446c63", size = 12, face = "bold"),
        axis.title.y = element_text(color = "#c3b6ad", size = 12, face = "bold")
      )
    
    # write.csv(df_unique, "tobacco_use.csv", row.names = FALSE)
    
    return(tobacco_use_graph)
  })
  
  # Elizabeth Williams
  # Education Level and Tobacco Use (plot)
  # Reactive data based on year and then applied to data for graph
  filt_df <- reactive({
    filter(df_f, Year %in% input$education_yr)
  })
  
  filt_df_g <- reactive({
    filtered_df <- filt_df()
    summ_df <- summarize(group_by(filtered_df, Education, Topic.Desc), 
                         avg_rate = mean(Data.Value, na.rm = TRUE))
  })
  
  # Make the plot
  output$education_plot <- renderPlot({
    ggplot(filt_df_g(), aes(x = Education, y = avg_rate, fill = Topic.Desc)) +
      geom_bar(stat = "identity") +
      labs(x = "Education Level", y = "Average Use by Percentage (%)",
           fill = "Type of Tobacco Use") +
      scale_fill_manual(values = c("#c3b6ad", "#446c63", "#7a9380")) +
      theme_classic() +
      theme(
        axis.title.x = element_text(size = 16, face = "bold", margin = margin(t = 20)),
        axis.title.y = element_text(size = 16, face = "bold", margin = margin(r = 20)),
        legend.title = element_text(size = 16, face = "bold")
      )
  })
}


shinyApp(ui, server)
