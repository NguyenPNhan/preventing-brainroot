#show math.cases: math.display
#show math.frac: math.display
#show math.equation.where(block: false): math.display
#import "@preview/simple-plot:0.9.0": plot
#set page(width: 18cm, height: auto, margin: auto)
#set math.mat(align: center)
#import "@preview/cetz:0.3.4"

*Problem 6*

$ I &= integral_(pi\/4)^(pi\/3) (dif theta)/(tan theta + cot theta) \
&= integral_(pi\/4)^(pi\/3) (tan theta dif theta)/(tan^2 theta + 1) \
&= integral_(pi\/4)^(pi\/3) (dif (tan^2 theta + 1))/(2(tan^2 theta + 1)^2) \
&= lr(-1/(2 (tan^2 theta + 1)) |)_(pi\/4)^(pi\/3) = -1/8 + 1/4 = 1/8. $

*Problem 7*

Let $f(x) = x^2 - (1 - cos x)$. We have $f'(x) = 2x - sin x$ and $f''(x) = 2 + cos x$. Therefore, $f(x)$ is strictly increasing. We also have $f(0) = 0$, so that $f(x) > 0$ for all $x > 0$. Thus, we get $0 < 1 - cos pi/n < (pi/n)^2$. However, we have $sum_(n = 1)^infinity (pi/n)^2 = pi^2 sum_(n = 1)^infinity 1/n^2$ converges by the p-test, so the sum $sum_(n = 1)^infinity (1 - cos pi/n)$ converges.