# Statistical Tests

# 1.One-Sample t-Test
# It is a parametric test used to test if the mean of a sample from a normal distribution could 
# reasonably be a specific value.
set.seed(100)
x <- rnorm(50, mean = 10, sd=.5)
t.test(x, mu=10)
# the p-Value is not less than significance level of 0.05, therefore the full hypothesis that
# the mean=10 cannot be rejected. Also note that the 95% confidence interval range includes the value 10
# within its range. So, the mean of 'x' can be estimated as 10, especially since 'x' is assumed
# to be normally distributed.

# 2.Wilcoxon signed Rank Test
# To test the mean of a sample when normal distribution is not assumed. Wilcoxon signed rank test
# can be an alternative to t-Test, especially when the data sample is not assumed to follow a normal distribution.
# It is a non-parametric method used to test if an estimate is different from its true value.
numeric_vector <- c(20, 29, 24, 19, 20, 22, 28, 23, 19, 19)
wilcox.test(numeric_vector, mu=20, conf.int = TRUE)

# 3. Two sample t-test and wilcoxon Rank Sum Test
# Both t-test and Wilcoxon rank test can be used to compare the mean of 2 samples. The difference is t-Test
# assumes the samples being tests is drawn from a normal distribution, while, Wilcoxon's rank sum test does not.
x <- c(0.80, 0.83, 1.89, 1.04, 1.45, 1.38, 1.91, 1.64, 0.73, 1.46)
y <- c(1.15, 0.88, 0.90, 0.74, 1.21)
wilcox.test(x, y, alternative = "g")
# with a p-Value of 0.1262, we cannot reject the null hypothesis that both x and y have same means.

t.test(1:10, y = c(7:20))
# with p-Value < 0.05, we can safely reject the null hypothesis that there is no difference in mean.

# 1-to-1 comparison of means for values of x and y
t.test(x,y, paried=TRUE) # when observation are paired, use'paired' argument
wilcox.test(x, y, paried=TRUE) # both x and y are assumed to have similar shapes
# conventionally, if the p-Value is less than significance level, reject the null hypothesis that both means are equal

# 4. Shapiro Test
# To test if a sample follows a normal distribution
shapiro.test(numeric_vector)

set.seed(100)
normally_disb <- rnorm(100, mean=5, sd=1)
shapiro.test(normally_disb)
# The null hypothesis here is that the sample being tested is normally distributed. Since the p Value is not
# less than the significance level of 0.05, we don't reject the null hypothesis. Therefore, the tested sample is 
# confirmed to follow a normal distribution

set.seed(100)
not_normally_disb <- runif(100)
shapiro.test(not_normally_disb)
# if p-Value is less than the significance level of 0.05, the null-hypothesis that it is normally distributed can be rejected.

# 5. Kolmogorov And Smirnov Test
# To check whether 2 samples follow the same distribution
ks.test(x, y)

x <- rnorm(50)
y <- runif(50)
ks.test(x, y)
# not same distribution

x <- rnorm(50)
y <- rnorm(50)
ks.test(x, y)
# from same distribution
# if p-Value < 0.05, reject the null hypothesis that they are drawn from same distirbution which implies x and y from different distributions.

# 6. Fisher's F-Test
# To check if two samples have same variance
var.test(x, y)
# alternatively fligner.test() and bartlett.test() can be used for the same purpose.

# 7. Chi Squared Test
# Used to test if two categorical variables are dependent, by means of a contingency table.
# Example use case: You may want to figure out if big budget films become box-office hits. 
# We got 2 categorical variables (Budget of film, Success Status) each with 2 factors (Big/Low budget and Hit/Flop),
# which forms a 2 x 2 matrix.
categorical_X <- c(10000, 20000, 15000, 17000, 18000, 14500, 15062, 12052, 12323,18138, 8601,1235, 6893)
categorical_Y <- c("hit", "hit", "hit", "hit", "hit", "hit", "hit", "hit", "flop", "hit","flop", "flop", "flop")
chisq.test(table(categorical_X, categorical_Y), correct = FALSE)
# p-value : 0.369
# if p-Value is less than 0.005, we fail to reject the null hypothesis that the x and y are independent.
# So for the example output above, we cannot reject the null hypothesis and conclude that x and y are independent.

# chi.sq value
# for 2 * 2 contigency tables with 2 degrees of freedom, if the Chi-squared calculated is greater than 3.841(critical value),
# we reject the null hypothesis that the variables are independent. To find the critical value of larger d.o.f contingency tables, use 
# pchiqsq(0.95, n-1), where n is the number of variables.

# 8.Correlation
# to test the linaer relationship of two continuous variables
# The cor.test() function computes the correlation between two continuous variables and test if the y is 
# dependent on the x. The null hypothesis is that the true correlation between x and y is zero.
cor.test(x,y)
cor.test(cars$speed, cars$dist)
#If the p Value is less than 0.05, we reject the null hypothesis that the true correlation is zero (i.e. they are independent).
# So in this case, we reject the null hypothesis and conclude that dist is dependent on speed.

# 9. Fisher test
# Fisher's exact test to test independence of rows and columns in contingency table
# Friedman's rank sum non-parametric test 
fisher.test(contingencyMatrix, alternative = "greater")  
friedman.test()