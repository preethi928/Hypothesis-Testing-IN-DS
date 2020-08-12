cutlets<-read.csv("C:\\Data_science\\EXCLER\\My Assignments\\Hypothesis testing\\Cutlets.csv")
View(cutlets)

#--------------Since there are 2 variables it is 2 sample 2 tail test---------------
#By seeing the data i concluded that it has two variables .
# if there is just one variable i would have gone for 1 sample 1 tail test.
# there for 2 sample 2 tail test .

# it is 2 tail because we are comparing the wether the size of two stores of same 
#brach is same or not . ie wether they are equal or not .

# 2. The data has no population value given that is sigma.
#hence i go for t hypotesis testing rather than z test
t.test(cutlets$Unit.A,cutlets$Unit.B,alternative = 'two.sided')

# alternative is two.sided due to 2 samples 

#3.Now i would determine the p value based on the significant hypotesis test choosed.
# we choose t test hence we use PT to compute p value.
2*pt(-0.72287,66.029)
# i used t value with degrees of freedom to compute p value .
#which is 0.4723126, 


# hence the exact p value 0.4723126

#Hence we know when p value is greater than alpha (0.05) we fail to reject Null hypothesis .
# we except null hypothesis 
#conclusion: the size of cutlets in different units are same and they dont differ.



