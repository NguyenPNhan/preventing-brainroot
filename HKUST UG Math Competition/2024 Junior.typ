#show math.cases: math.display
#show math.frac: math.display
#show math.equation.where(block: false): math.display
#import "@preview/simple-plot:0.9.0": plot
#set page(width: 18cm, height: auto, margin: auto)
#set math.mat(align: center)
#import "@preview/cetz:0.3.4"

*Problem 1*

Assume that the given number does not exist. Take any $a in bb(R)$, we have $f(a) = b != a$ and $f(b) = f(f(a)) = a$. Let $F(x) = f(x) - x$, we have
$ F(a) = f(a) - a = b - a != 0, space F(b) = f(b) - b = a - b != 0. $
So $F(a)$ and $F(b)$ have different signs. Hence, there exists $c$ between $a$ and $b$ such that $F(c) = 0$ by the intermediate value theorem, contradicting to the inital assumption. So we have Q.E.D. 