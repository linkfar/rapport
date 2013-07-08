<!--head
meta:
  title: Factor Analysis
  author: Rapporter team
  description: In this template Rapporter will present you Factor Analysis.
  email: ~
  packages:
  - psych
  example:
  - rapport
inputs:
- name: vars
  label: Used Variables
  description: The Variables that will be used in Factor Analysis
  class: numeric
  length:
    min: 1.0
    max: 50.0
  required: yes
  standalone: no
- name: fact.num
  label: Number of Factors
  description: How many Factors you want to use?
  class: integer
  length:
    min: 1.0
    max: 10.0
  required: yes
  standalone: yes
- name: rot.method
  label: Method of Rotation
  description: The used method of the rotation
  class: character
  options:
  - none
  - varimax
  - promax
  value: varimax
  matchable: yes
  allow_multiple: no
  required: yes
  standalone: yes
- name: fa.scores
  label: Type of scores
  description: Type of scores to produce
  class: character
  options:
  - regression
  - Bartlett
  value: regression
  matchable: yes
  allow_multiple: no
  required: no
  standalone: yes
- name: obs.plot
  label : Observation plot
  description: Would you check the plot about the distribution among the factors?
  class: logical
  length:
    min: 1.0
    max: 1.0
  value: yes
  required: no
  standalone: yes
head-->

# Introduction

[Factor Analysis](http://en.wikipedia.org/wiki/Factor_analysis) is applied as a data reduction or structure detection method. There are two main applications of it: reducing the number of variables and detecting structure in the relationships between variables, thus explore latent structure behind the data, classify variables.

<%= 
fact.matrix <- na.omit(scale(vars))
FA <- factanal(fact.matrix, factors=fact.num, scores=fa.scores, rotation=rot.method)
%>


## Factor loadings

At first step let's check the factor loadings. They mean that how deep the impact of a factor for the variables<%= ifelse(rot.method != "none",""," (Keep in mind that these are the results without rotation, please set the parameter rot.method to see the rotated ones)")%>. We emphasized the cells when the explained is higher than 30% of the whole variance.
<%= FA_loadings <- FA$loadings
class(FA_loadings) <- "matrix"
emphasize.strong.cells(which(abs(FA_loadings) > 0.3, arr.ind = TRUE))
FA_loadings
%>

So it can be said that <%=paste(colnames(FA_loadings)[which(abs(FA_loadings) > 0.3, arr.ind = TRUE)[,2]],rp.name(vars)[which(abs(FA_loadings) > 0.3, arr.ind = TRUE)[,1]],sep=" is a latent factor of ")%>.

<% if (length(which(FA_loadings > 0.3)) != length(which(abs(FA_loadings) > 0.3))) { %>

<%=neg.comp <- colnames(FA_loadings)[which(FA_loadings < -0.3, arr.ind = TRUE)[,2]]%>

From them in the case<%=ifelse(length(neg.comp) > 1, "s", "")%> of the <%=paste(colnames(FA_loadings)[which(FA_loadings < -0.3, arr.ind = TRUE)[,2]],rp.name(vars)[which(FA_loadings < -0.3, arr.ind = TRUE)[,1]],sep="'s impact on ")%>, we can say <%=ifelse(length(neg.comp) > 1, "they are", "that is")%> negative effects.
  	
<% } else { %>
We can say that <%=ifelse(length(which(abs(FA_loadings) > 0.3)), "none of these impacts are negative", "this impact is positive")%>. 

<% } %>


<% if (obs.plot) { %>
## Plot about the distribution of the observations

Now let's check how the observations distribute among the <%= ifelse(fact.num < 2, "factor", "first and the second factors")%>.
<%= FA_scores <- FA$scores
plot(FA_scores)
+text(FA_scores,labels=rownames(fact.matrix),cex=1)
%>
<% } else {} %>

## Uniquenesses

At last but not least let us say some words about the not explained part of the variables. There are two statistics which help us quantifying this concept: Communality and Uniquness. They are in a really strong relationship, because Uniqueness is the variability of a variable minus its Communality. The following table contains the Uniqunesses of the variables:
<%= uni <- as.matrix(FA$uniquenesses)
uni
%>

We can see from the table that variable <%=rownames(uni)[which(max(uni) == uni)]%> has the highest Uniqueness, so could be explained the least by the factors and variable <%= rownames(uni)[which(min(uni) == uni)]%> variance's was explained the most, because it has the lowest Uniqueness.



