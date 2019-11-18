#Decision Tree

#Loading the package for decision tree
library(party)

#using readingSkills dataset
head(readingSkills)
readingSkills

#creating input data frame
data.input = readingSkills[c(1:105),]
data.input

a = c(1:50)
cb = data.frame(cbind(a))
c = ctree(a~., data=cb)
plot(c)
#Creating the tree with one factor & plotting
output.tree1 = ctree(nativeSpeaker ~ age, data= data.input)
output.tree1
plot(output.tree1)

#Creating the tree with two factor & plotting
output.tree2 = ctree(nativeSpeaker ~ age+ shoeSize, data= data.input)
output.tree2
plot(output.tree2)

#Creating the tree with multi-factor & plotting
output.tree = ctree(nativeSpeaker ~ age+ shoeSize+ score, data= data.input)
output.tree
plot(output.tree)
?decisiontree
?ctree
