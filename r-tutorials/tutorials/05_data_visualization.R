# BASE COMMANDS

plot(x)                                                   # Simplest plot of x
pie(x)                                                    # Pie chart of x  
boxplot(x)                                                # Creates a box plot

hist(x,                                                   # Histogram of x. ONLY ONE VARIABLE. x-axis: my variable x. y-axis: frequency
     breaks = 5)                                          # How many intervals of the variable we want   


plot(people$age, people$height,                           # General Plot. Just some of them. There are a lot
     main = 'Age and Height',                             # The title of the plot
     xlab = 'Age',                                        # The title of the x-axis
     ylab = 'Height',                                     # The title of the y-axis   
     col = 'green',                                       # Specifies the color
     oriz = TRUE,                                         # Plot horizontaly
     las = 1)                                             # Orientation of the names of the axis. 1 means always horizontal

par(mfrow = c(2,2))                                       # It splits the space at 4. That way we can have 4 diagrams in one picture. Same with mfcol. In order to get back to default:   par(mfrow = c(1,1))



###################################################################################################################################################


# ggplot2 package

library(ggplot2)

ggplot(data, aes()) +                                      # First Layer: Data (Which data) 
                                                           # Second Layer: Aesthetics (Which variables of the data)
                                                           #               x-axis: x = , y-axis: y = , color: col = , size: size = , fill color: fill = 
                                                           #               transparency: alpha = , shape: shape = , line pattern: linetype = , text: labels =  
                                                           #               scale_something let us to modify any of the aesthetics we want. A lot of arguments
  
                                                           # Third Layer: Geometry (How to visualize them): 
  geom_point() +                                           # geom_point() = scatter plot
                                                           #                position (overlapoing bars or points): identity, dodge, jitter ...
  geom_text() +                                            # geom_text() = text: label = what to use instead of points. col,size,shape
  geom_smooth(method = lm)                                 # geom_smooth() = linear model: method=lm                                    
                                                                               















