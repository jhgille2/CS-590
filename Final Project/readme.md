## Methods for detecting and Modeling spatial correlation in Field Trials

### Overview
I think it woluld be interesting and worthwile to explore some of the functionaliaty offered by R for handling spatial correlation structures in datasets. My hope is to focus in specifically on the variation that could arise in field experiments, but I anticipate that I will be drawing heavily from methods used to analyse ecological data both because that is where most of my familiarity of the subject comes from, but also because it genuinely seems to be the area with the most active ongoing development of these models in R. 

My end goal will be to both explore the models used to account for this spatial variation, and the methods used to visualize these models. I'll also try to keep a record of literature/websites I used for this project in this directory for future reference. I think it will be best to first show how spatial correlation may be added to linear models which are most often used in the analysis of field data, and then move on to other, less common alternatives.

### Literature
#### Textbooks

**Mixed Effects Models and Extensions in Ecology with R:** This is a very detailed textbook about mixed effects models, and variuos other topics relevant to using mixed effects models in R. There's plenty of examples, and some detailed technical explanations about how the models work if you're interested. The book compares mixed and additive modeling to traditional linear modeling and discusses when to use each. In general, the main idea behind the book is to explain how to recognize, and deal with datasets where you suspect there may be complicated influences on your measurements that can't be accounted for by traditional linear models. Specifically, there are chapters dealing with nested data, temporal data, spatial data, count data, heteroscedasticity, and many other special cases.

##### Some to check out
**Spatial data analysis in ecology and agriculture using R** https://catalog.lib.ncsu.edu/catalog/NCSU2664799
**Contemporary statistical models for the plant and soil sciences** https://catalog.lib.ncsu.edu/catalog/NCSU1546264
