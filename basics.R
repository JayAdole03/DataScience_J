df=datasets::airquality

class(df) #tells us the data type of the variable

rm(sales,air_quality)#remove or delete dataset

View(df) #gives error for 'view' as R is case sensitive

head(df)#displays first 6 rows of the datasets
head(df,10) #dislplays first 10 rows of the datasets

tail(df) #displays last 6 rows of the datasets

summary(df) #this function gives the summary of data i.e.mean,mode,median,etc for each particular column

df$Ozone #displays the ozone columnn in the dataframe

attach(df) #attaches all the columns in the datasets to the R file we are working
Ozone #now we don't need to use reference variable everytime

###DATA VISUALISATION###
#1.Scatter Plot : to find the relationship between two numerical columns

plot(x=Ozone,y=Temp)#(writing x and y is optional)
#interpretation:as the ozone values increases the temp also increase. Hence,positive relationship

#customisation in scatter plot
plot(Ozone,Wind,xlab = 'Ozone Levels',ylab = 'Wind Values',
     main = 'Scatter Plot Between Ozone And Wind',
     col='#560e9e',pch=16)
#interpretation: as the ozone values increases the wind values decreases.Hence,negative relationship

plot(df,
     pch=16, col='#560e9e')#this plots all the possible scatter plots from the dataframe


#2.Bar Plot

barplot(Month)#gives a misleading output
unique(Month)#gives the unique values in the table
table(Month)#gives the actual frequency of those unique values
bar=table(Month)

barplot(bar,
        main = 'Bar Plot for Month',
        xlab='Month',ylab='Frequency',col='#0cc754')

#3.Histogram
hist(Ozone,main='Histogram For Ozone',col = 'blue')
#interpretation:positive skewness.i.e.outliers are present on the upper extremes

hist(Temp,main='Histogram For Temp',col = 'blue')
#perfect symmetrical plot is not possible so this plot can be considedred a normal plot

#4.Box Plot
boxplot(Ozone,main='BoxPlot for Ozone',col='red')
#interpretaion: two outliers are present

boxplot(df,main='BoxPlot for Ozone',col=c('red','blue','yellow','green','purple','lightblue','orange'))
#interpretation:ozone and wind has outliers