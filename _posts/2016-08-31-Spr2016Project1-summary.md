---
title: Spring 2016 Project1-ACS Summary
layout: post
Category: teaching notes
---
Project 1 is about exploratory data analysis on 2013 American community survey. Students were invited to study [Kaggle](https://www.kaggle.com/) scripts (a.k.a, kernels) on this dataset and come up with their collaborative RMarkdown report. 

This summary is prepared by Chengliang Tang

### Team 1: [Finding Life Partner](https://github.com/TZstatsADS/ProjectACS-s16c1t1-FindLifePartners)
#### Main ideas
This project looked at singles and focused on two main ideas:
+ First, the group explored the demographic profiles of the singles, in terms of gender ratios, age, employment, education status. Comparison between single men and single women was also carried out. 
+ Second part of project is a search engine for singles to look for "the one" based on one's preference. It computes ratios of "potential life partners" (defined by the query) to the total population in different states, and generates recommendations using the top states. A similar analysis was also carried out for different industries.
+ Selected figure: *estimated percentage of single females that are between 16-29 years old, graduated from college, and have a job*

<img src="https://github.com/TZstatsADS/ProjectACS-s16c1t1-FindLifePartners/blob/master/doc/image/perfectGirlPerc.png?raw=true" alt="Drawing" style="width: 500px;"/>

#### Critiques
- a clear and focused topic.
- potential improvements include adjusting incomes by local living standards, selecting a better population proportion baseline and incorporating survey weights.
- showcased excellent use of ggplot2.

<!--This team has a clear logic order for the whole project. The first part is rather descriptive and the second part shows their original ideas.

However, there are still some flaws in the analysis. For example, when deciding the best state for a single man, the ratio of single ladies to single men in each state is more important than that to the whole population. Also, survey weights are not considered in the analysis.

And one comment about the result. It shows NY and CA are the best two states for a single lady who hunts for a life partner with annual income more than 100K. In this analysis, the economic conditions for each state, rather than the single ratio, plays a decisive role.  

#### Interesting Figures
My favorite figures in this report are the last four ones, showing one certain statistic for each state on a US map. The idea for this figure can be seen in many reports on Kaggle. What really interests me is the color choices for the figures: yellow for male and purple for female, which is very natural.

#### R tricks
The use of ggplot2 is really helpful.-->

 
### Team 2: [How we live and how we work (Money, Money, Money!)](https://github.com/TZstatsADS/ProjectACS-s16c1t2-MoneyMoneyMoney)

#### Main ideas
As shown by the title, this team concentrated on several money-related issues in the report: 
+ First, the group computed the fraction of two popular employments, i.e. finance and technology, in each state and show the results in a map chart.
+ Then,  the group calculated the distribution of income, in terms of age, state, race and class of work.
+ Finally, the relationship between arrival time at work and other factors like industry, state, income were investigated by a series of box plots.
+ Selected figure: *Average Salary for Different Occupations*

<img src="https://raw.githubusercontent.com/TZstatsADS/ProjectACS-s16c1t2-MoneyMoneyMoney/master/figs/overallbar.png" alt="Drawing" style="width: 300px;"/>

#### Critiques
- a comprehensive overview of money-related characteristics in ACS dataset.
- potential improvements include organizing all the parts under one topic, and providing analysis and comments after figures. 
- the exploration of arrival time is interesting.

<!-- I hold negative opinions towards this report. The members of this team only put their own work together under this vague topic "Money, Money, Money!" without any reorganizing. And even some of their work overlapped.

The last part, exploration of arrival time, is quite interesting and can be an independent project topic. However, the analysis in this part is too rough. More exploration can be done in discovering useful patterns of arrival time in different occupations.

#### Interesting Figures
My favorite figure in this report is the last one, showing the relationship between income and arrival time at work. (But it isn't in the folder *figs* so I cannot cite it.) While, the result has too much noise as it took all the occupations and states into consideration. More research can be done to discover useful patterns in the arrival time for each occupation.

Two revision suggestions for the figures: fist, the color choice in the figure *Average Salary for Different Occupations* needs more consideration, as red and green are usually not a good match; second, in the figure *Arrive Time for Working by Industry*, the box plots can be rearranged in a increasing order of median to be more informative.
-->


### Team 3: [Income disparities and so many of them](https://github.com/TZstatsADS/ProjectACS-s16c1t3-Look_at_Income)

#### Main ideas
This team investigated many parameters on personal income. More specifically, the attributes of Location, Age, Sex, Race, Secondary Education, Disability, Work Hours and Travel Time as well as their effects on income were explored. 
+ In the first part, the group utilized different kinds of figures, like histogram, boxplot, bubble chart, etc., to illustrate the separate effects of each attribute over income.
+ In the second part, a linear regression was conducted to quantitatively show the effect of each factor.
+ Selected figure: *Mean Income Bubble Chart for Each Degree Field*

<img src="https://raw.githubusercontent.com/TZstatsADS/ProjectACS-s16c1t3-Look_at_Income/master/figs/fig6.Mean%20income%20bubble%20chart.jpg" alt="Drawing" style="width: 600px;"/>

#### Critiques
- beautiful and informative figures.
- provided quantitative as well as qualitative results, while potential improvements include incorporating survey weights in linear regression.
- important findings: the effect of sex and disability on income is still remarkable, which agrees with our common sense.

<!--
#### Interesting Figures
I really like the figures in this report and think I can learn a lot from them. The design, color choice and setting of these figures are quite good.

For example, when plotting *Average Total Person Income according to States*, the group chose the color green, which is the same with American dollars. Also, when comparing the income of different groups, the group put them in one histogram and made the peaks and variations both apparent. Last but not the least, the bubble chart, my favorite figure in this report, is a good choice when there are too many items in one dimension.
-->

### Team 4: [So now you are graduating with a degree in Statistics, what’s next?](https://github.com/TZstatsADS/ProjectACS-s16c1t4-StatsProspects)

#### Main ideas
As students majoring in statistics, this team intended to explore the current conditions and future development of those who graduated with a statistics degree.
+ First, they looked into several important variables such as gender, education, employment, occupation and wage, to compare individuals with a statistics major to those with a finance, computer science or mathematics major. And the results appeared pleasing for students majoring in statistics.
+ Moreover, focused on the group of individuals with a statistics major, this team explored the effect of education degree and location on income and job opportunities, and achieved the conclusion that pursuing a higher degree and then working in developed states like CA, NY and TX will be a good choice for them.
+ Selected figure: *Employment Status by Major*
<img src="https://raw.githubusercontent.com/TZstatsADS/ProjectACS-s16c1t4-StatsProspects/master/figs/Rplot01.jpeg" alt="Drawing" style="width: 500px;"/>

#### Critiques
- well organized into two parts, with a clear logical order.
- incorporated survey weights and used hypothesis testing to obtain statistically significant results.
- potential improvements include using the proportion of statisticians in the whole population as the measure when deciding best location for working.  

<!--
#### Interesting Figures
The figure I cited here is less informative. As can be seen, computer science is the highest in almost all the four bar charts. However, this phenomenon is mainly due to that computer science has the largest number of students. So that, using a bar chart for each employment status is meaningless.

A better choice is that first plotting a bar chart to indicate the total number of students for each major, and then in the following bar charts, using bars to represent the proportion.
-->


### Team 5: [The new Chinese on the block in US](https://github.com/TZstatsADS/ProjectACS-s16c1t5-ChineseInUS)

#### Main ideas
This team focused on the group of Chinese living in the US, and examines many aspects of this group. 
+ To begin with, the group explored the demographic profile of the Chinese, in terms of age, marital status, location, income and working time. 
+ Then, in the second part, some detailed issues were looked into, including the income of Chinese master-holders, the distribution of wage over industries and periods in Texas, the gender pay gap of Chinese, and so on. 
+ Selected figure: *Average Income of Different Industries and Periods in Texas*
<img src="https://raw.githubusercontent.com/TZstatsADS/ProjectACS-s16c1t5-ChineseInUS/master/figs/texas%20wage%20structure.jpeg" alt="Drawing" style="width: 500px;"/>

#### Critiques
- a comprehensive, descriptive analysis of the Chinese group.
- provided reasonable explanations for interesting phenomena found in data analysis, e.g. two peaks in the distribution of population over age. 
- interesting finding: Chinese in Montana and South Dakota have the longest working hours and the lowest wage.

<!--
#### Interesting Figures
My favorite figure in this report is *Average Income of Different Industries and Periods in Texas*. Similar with the figure *Average Total Person Income according to States* in report 3, it used the size of bubbles to indicate the amount of income. However, the different colors used in this figure conveys no information.

Potential improvements also include that in the figure *Well−educated Chinese Population Age by SEX*, the histograms of male and female can be plotted separately in one figure to better illustrate their quantitative relationship, as team 3 did in the figure *The effect of sex on income*.
-->

### Team 6: [Occupational wisdom](https://github.com/TZstatsADS/ProjectACS-s16c1t6-AsianPayGap)

#### Main ideas 
Inspired by a research of USA Today, this team explored the pay gaps between Asians and whites in high-paying industries, e.g. high-tech, finance and medical.
+ First, they took a big picture to compare Asians' and whites' salaries in different occupations, and presented the result in a bar chart.
+ Then, according to the bar chart, this team chose three occupations to take a closer look at: Computer and Mathematical Occupations (conflicting with research result), Finance (whites earn much more), Medical (Asians earn much more). The closer look include education background investigation and state-wise salary comparison.
+ Selected figure: *Salary Comparison between Asians and Whites*
<img src="https://raw.githubusercontent.com/TZstatsADS/ProjectACS-s16c1t6-AsianPayGap/master/figs/Salary%20Comparison%20between%20Asians%20%26%20Whites.png" alt="Drawing" style="width: 400px;"/>

#### Critiques
- good report structure: a big picture followed by several closer investigations.
- interesting finding: In finance occupations, Asians have better education backgrounds, but earn much less than whites.
- incorporated replicate weights.

<!--
The figures in this report are rather simple since there isn't too much information to convey. In fact, in the part of closer look, more features of the employees can be looked into to obtain a deeper understanding of salary difference between Asians and whites, e.g. age, family, working hours, location.

As for the conflict with research result from USA Today, this team only regard "Computer and Mathematical Occupations" as high-tech. So that it is no wonder the results may be different. 
-->



### Team 7 [He works and she works](https://github.com/TZstatsADS/ProjectACS-s16c1t7-FamilyWorkingStruct)

#### Main ideas
This team looked at the income source of married-couple families, and focused on three main ideas:
+ First, the team compared the family with only husband in the labor force and that with only wife in the labor force from three aspects: income, education level and occupation distribution.
+ Then, they explored the proportion of different types of married-couple families and their distribution across the continental United States.
+ In the end, this team were interested in the income source of the spouse not in the labor force and made an elementary comparison between husband and wife using box plot and bar chart.
+ Selected figure: *Distribution of Different Types of Married-couple Families across the Continental United States* 
<img src="https://raw.githubusercontent.com/TZstatsADS/ProjectACS-s16c1t7-FamilyWorkingStruct/master/doc/FES_map.png" style="width: 600px;"/>

#### Critiques
- the order of the first two parts can be reversed, since the second part is an overview while the first and last are comparisons.
- interesting finding: by comparing the distribution of different types of married-couple families across states, we can get useful information about the characteristics of each state, e.g. Florida is with lots of retirement communities so has high proportion of family with no one in labor force.

<!--
#### Interesting figures
My favorite figure in this report is the one I cited in main ideas. It is composed of four map charts, each for a certain type of family. The key point is that they can convey more information as a whole than separately presented. By making comparisons between each other, the characteristics of each state are easily revealed.

Also, the concentric pie chart *Married-couple Households in the US* is really interesting.
-->

### Team 8 [Comparing post-graduate life in US.](https://github.com/TZstatsADS/ProjectACS-s16c1t8-InteractiveGraphs)

#### Main ideas
This team intended to look into the life styles in different regions of USA, especially New York and California. The analysis is divided into four parts:
+ First of all, they explored the current situations of migration of American residents. A chord diagram and a flow map are plotted to illustrate the issue.
+ Then, they focused on three important components of after-college life: work, income and marriage. Comparison between New York and California was also carried out.
+ Selected figure: *Immigration Inflow and Outflow in Different Regions*
<img src="http://4249cycle1.netai.net/img/portfolio/migration/1.png" style="width: 500px;"/>

#### Critiques
- a fancy presentation approach and many informative figures.
- potential improvements include adding more word description for the figures.
- interesting finding: the bar chart for transportation evidently showed the biggest traffic mode difference between New York and California (Subway vs. Car).

<!--
#### Interesting Figures
My favorite figures in this report are the chord diagram and flow map for immigration in US. And they showcased excellent use of JavaScript.
-->

### Team 9 [Major matters? Am I stuck with my major for life?](https://github.com/TZstatsADS/ProjectACS-s16c1t9-MajorMatters)

#### Main ideas
Interested in the research problem "To what extent does one's major determine his/her career?", this team focused on the relationship between majors and occupations.
+ First of all, the team utilized three different advanced figures -BiPart graph, circular graph, and bar plots- to show the occupation choosing of different majors.
+ Then, they compared the wage level for different majors and conducted a t-test to show that having a computer science related degree helps one to earn more in the CS fields.
+ Selected figure: *Major vs. Occupation*
<img src = "https://raw.githubusercontent.com/TZstatsADS/ProjectACS-s16c1t9-MajorMatters/master/output/image/ScreenShot1.png" style = "width: 500px;"/> 

#### Critiques
- incorporated survey weights.
- showcased excellent figure plotting skills.
- presented the big picture of occupation choosing of different majors, and potential improvements include taking a closer look at the flow from a certain major to another occupation, like from computer science to finance.

<!--
#### Interesting Figures
The two figures, BiPart graph and circular graph, are really fantastic. However, they are presenting the same issue. More analysis should be done to achieve a deeper look at how does one's major determine his/her career.
-->

### Team 10 [habla Inglés?](https://github.com/TZstatsADS/ProjectACS-s16c1t10-ComingToAmerica)

#### Main ideas
This team focused on the group of non-English-speaking immigrants, and intended to deeper understand their language transition after arriving in the US.
+ To begin with, they took an overview of the immigration in the US from two aspects, time and space. In this exploration, the distribution of immigrants over years and states were calculated. Also, the variation of gender ratio and age structure were looked into.
+ Afterwards, the team took a closer look at the English ability of immigrants. They compared the English ability of immigrants in different states and also conducted a t-test to show that the non-child group have better English ability than their parental counterparts.
+ Selected figure: *English-Speaking Ability in Most Populous Immigrant States*
<img src = "https://raw.githubusercontent.com/TZstatsADS/ProjectACS-s16c1t10-ComingToAmerica/master/figs/common_states.png" style = "width: 400px;"/> 

<img src = "https://raw.githubusercontent.com/TZstatsADS/ProjectACS-s16c1t10-ComingToAmerica/master/figs/Eng.png" style = "width: 400px;"/> 
#### Critiques
- the time series analysis of immigrants may be biased because some elder immigrants may have passed away, thus unable to fill in the survey.
- potential improvements include reorganizing the report in a better order, and adding possible explanations for the effect of child birth on parents' English ability.

<!--
#### Interesting figures
There is information overlapping in the above two figures. In fact, the first figure was plotted to compare the English ability of immigrants in these states. While, the results were highly masked by the whole population size of each state. And the most obvious information we can obtain from it is the English ability distribution of immigrants as a whole, not the difference among states. Potential improvement can be using different colors to plot a histogram for the English ability distribution in each state, and then put them into one figure to compare.
-->   