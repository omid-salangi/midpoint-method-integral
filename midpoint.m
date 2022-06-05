clc;
clear all;
close all;
format longG;

syms x;
fun = input('enter f(x) : ' , 's');
fun  = str2sym(fun);
a = input('Enter the start of integration range:  ');
b = input('Enter the end of integration range:  ');
n = input('enter count of parts : ');
h = (b-a) / n;
nums = zeros(1,n);
for i = 1:n
    nums(i) = double(subs(fun , x , (i-0.5)*h));
end
sum1 = 0;
for i=1:n
  sum1 = sum1 + nums(i);
end
sum1 = sum1 * h ;
fprintf('intgeral  is : %d \n' ,sum1 );