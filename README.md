# UW INFO 201 - FINAL PROJECT
**Group 11: Brittney Oeur, Elizabeth Williams, and Soha Sultana**

## Summary
All quarter, you've been working as a group to craft a data story using datasets from a domain of your choice. In the final deliverable, you will now be creating a shiny app to demonstrate your sharpened skills, and share a nuanced understanding your analysis as it relates to the broader domain. We hope that you take the time to design and build something that you'd be excited to show others and include in your portfolio. 

The prompt is pretty open-ended on purpose -- part of this assignment is asking you to be creative and think about what it means to tell a compelling an interesting story using data. If you are looking for inspiration, take a look at some of the past homework assignments, the exampleLinks to an external site. we talked about in class, and re-watch some of the advice I gave in week 8's lectures. 

## Expectations
Below is a basic project structure that would meet all of the requirements. However, if you have an alternative direction you would like to take the project that demonstrates a similar level of sophistication, we would be excited to support you in doing so (again -- feel free to get creative with how you approach this project!). Regardless of the specific structure, you must:

- Create a shiny application that facilitates the storytelling with your specific dataset through carefully crafted interactions and visualizations
- Demonstrate a nuanced understanding of the important features of the dataset.  High-level insights (important descriptive information, major trends, notable outliers, etc.) should be prominent in your resource.  At a minimum, your story should include the following: 
  - At some point, your story should include brief information that explains what the point is and why someone should care
  - Your story must at a minimum follow one of the 7 data story types (though most will likely include multiple) 
  - Your story must be “interesting” – i.e. on a topic that fits the provided checklist (see the project proposal for details)
  - Your story should include an exposition giving context and end with takeaway messages.
  
## Structure
As mentioned above, you can dictate your own project structure and layout depending on the focus of your project and what kind of stories you want to tell. However, to help guide you, below is a basic structure that meets our expectations (a multi-page shiny app):

- An introductory page providing an overview of the project and background information/context the user will need to know about the domain and dataset -- What is the analysis you are doing? Why should someone care/Why is this interesting? What data will you use to answer those questions? You should include some "additional flare" on this landing page, such as images and links.
- Three interactive pages that can be used to step through the narrative of your data stories (OR if you have one more involved story, three pages that step through each part of the singular narrative). Each page would correspond to each of the three stories you came up with in your drafts earlier. Each page should have sufficient interactivity (e.g., Shiny widgets and/or tooltips with interactive charts) for exploring your charts and datasets (use tooltips, renderTable, and side panels liberally!). Each page should also have enough text and prompts so that a user can understand what is the story and how to interact with the different charts. For an example of the level of text we are expecting, look back at HW 3. If you would prefer to make fewer pages with more complexity, check with your TA/professor.
 
**We expect all projects to have the following:**
- Clear project navigation, leveraging Shiny's multi-page layouts as appropriate OR uses scrollytelling with clear navigation 
- Clear page layout on each page
- Well crafted elements, including appropriately sized / labeled / designed elements
- Supporting visualizations and statistics to back up the main story points. 

## Story Pitch:
The story our group intends to tell is about the relationship between tobacco use, employment status and/or education level, and mental health. Such as how the use of tobacco/smoking, the status of someone’s employment and/or education level may have an impact on their mental health.

We believe this an interesting and compelling story because it touches on a topic that affects a large portion of the population. In recent years, the awareness of mental health has risen tremendously, and advocating for people to seek professional help has been more accepted by mainstream culture. In addition, smoking is a widespread habit that affects the lives of millions of people, and its impact on mental health is often overlooked. By exploring this topic, we can shed light on the issues. Moreover, the impact of employment status and/or education level on smoking and mental health can highlight the larger issue of socioeconomic inequality. Within the context of the ongoing pandemic, the relationship between smoking and mental health has become even more pertinent. Stress and anxiety levels have been on the rise, which has led people to turn to smoking as a coping mechanism. This can then lead to an increased need for mental health support, especially for those in lower socioeconomic brackets who may have more limited resources.

Some of the data we plan to look at includes causes of smoking in young adults, and the rates of this over time and what treatment options have been presented across the country. These pieces of data are important to look at because it can show what issues are causing young adults to engage in these harmful behaviors, and is it because of the lack of mental health care that is causing this. Analyzing this data can help us understand the correlation between mental health issues and tobacco use. Another question that can be asked is how the rates of young adults using these products changed over time. This is another important question to think about because it can show what significant cultural and historical changes have affected the rate of mental health in young adults to turn to tobacco use. (Ex. COVID). Another question that is worth asking is how the different states responded to this crisis. This is important to look at, as it can give insight on what solutions are working to combat this issue and what areas are experiencing this problem at unprecedented levels. With this information, it can give lawmakers a general overview of this issue and make them aware of what solutions are working, by comparing the data from other states and seeing what solutions have worked and what have not.

Overall, this story is relevant and timely, given the pandemic and the extensive impact it has had on mental health. It is also a topic that affects a large portion of the population and is therefore of interest to many communities. By exploring the relationship between smoking, employment status, education level, and mental health, we can better understand the complex interplay between these factors.

## Finding Data:
### 1) Behavioral Risk Factor Data: Tobacco Use (2011 to present)
- Where did you download the data (e.g., a web URL)?
  - https://catalog.data.gov/dataset/behavioral-risk-factor-data-tobacco-use-2011-to-present
- How was the data collected or generated? 
  - The BRFSS is a continuous, state-based surveillance system that collects information about modifiable risk factors for chronic diseases and other leading causes of death. The data for the STATE System were extracted from the annual BRFSS surveys from participating states.
- How many observations (rows) are in your data?
  - 43,341 Rows
- How many features (columns) are in the data?
  - 31 Columns

### 2) Seasonally Adjusted LAUS Estimates
- Where did you download the data (e.g., a web URL)?
  - https://catalog.data.gov/dataset/seasonally-adjusted-laus-estimates
- How was the data collected or generated? 
  - This data set includes historical resident labor force and employment, seasonally adjusted. Washington State and labor market areas, 1990-2022
- How many observations (rows) are in your data?
  - 5,835 Rows
- How many features (columns) are in the data?
  - 13 Columns
