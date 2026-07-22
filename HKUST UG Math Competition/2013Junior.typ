#show math.cases: math.display
#show math.frac: math.display
#show math.equation.where(block: false): math.display
#import "@preview/simple-plot:0.9.0": plot
#set page(width: 18cm, height: auto, margin: auto)
#set math.mat(align: center)
#import "@preview/cetz:0.3.4"

*Problem 1*

As $e^x approx 1 + x + x^2/2 + x^3/6 + x^4/24 + dots = sum_(n = 0)^(infinity) x^n/n!$, we have $e = sum_(n = 0)^infinity 1/n!$.

For $n in bb(Z)^+$, let $I_n = sum_(i = 0)^n n!/i! in bb(Z)$ and $a_n = sum_(i = n + 1)^infinity n!/i!$. Therefore, we have

$ n sin(2pi e n!) = n sin(2pi I_n + 2pi a_n) = n sin (2pi a_n). $

Note that

$ 1/(n + 1) <= a_n = 1/(n + 1) + 1/((n + 1)(n + 2)) + dots <= sum_(i = 1)^infinity 1/(n + 1)^i = 1/n. $

By sandwich theorem, $a_n -> 0$ and $n a_n -> 1$ as $n -> infinity$. Using $sin theta approx theta$ as $theta -> 0$, we have $lim_(n -> infinity) n sin(2pi e n!) = lim_(n -> infinity) n sin (2pi a_n) = lim_(n -> infinity) 2pi n a_n = 2pi$.

*Problem 2*

Subtracting the first row from each of the other rows, we have
$ D_n = det mat(3, 1, 1, 1, dots, 1; -2, 3, 0, 0, dots, 0; -2, 0, 4, 0, dots, 0; -2, 0, 0, 5, dots, 0; dots.v, dots.v, dots.v, dots.v, dots.down, dots.v; -2, 0, 0, 0, dots, n). $

For $2 <= i <= n - 1$, adding $2/(i + 1)$ times the $i$-th column to the first column, we have

$ D_n = det mat(3 + 2/3 + 2/4 + dots + 2/n, 1, 1, 1, dots, 1; 0, 3, 0, 0, dots, 0; 0, 0, 4,0, dots, 0; 0, 0, 0, 5, dots, 0; dots.v, dots.v, dots.v, dots.v, dots.down, dots.v; 0, 0, 0, 0, dots, 0) = n!(1 + 1/2 + 1/3 + dots + 1/n). $

So $D_n/n! = 1 + 1/2 + dots + 1/n$ diverges to $+infinity$ by the $p$-test, hence the set is unbounded.