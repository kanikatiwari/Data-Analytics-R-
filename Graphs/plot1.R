#ggplots

p <- ggplot()
p <- ggplot(data_frame)
p <- ggplot(data_frame, aes(x, y, ))

#create a ggplot() object
#define the data frame and x and y coordinate values
#add a single layer.

(p <- ggplot(mtcars, aes(mpg, gear)) + geom_point())
(p <- ggplot(mtcars, aes(mpg, gear), colour = gear) + geom_point())
