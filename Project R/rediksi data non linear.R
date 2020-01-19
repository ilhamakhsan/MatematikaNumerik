#split data
data = read.csv(data_nonlinear)
y=data_nonlinear$y
x=data_nonlinear$x
#kuadratik
#y=a^2+bx+c
model1=nls(y~a*x^2+b,start = list(a=1,b=1))
model1
#kubik
#y=ax^3+bx^2+c*x+d,start =list(a=1,b=1,c=1,d=1)
model2=nls(y~a*x^3+b*x^2+c*x+d,start = list(a=1,b=1,c=1,d=1))
model2
