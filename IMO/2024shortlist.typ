#show math.cases: math.display
#show math.frac: math.display
#show math.equation.where(block: false): math.display
#import "@preview/simple-plot:0.9.0": plot
#set page(width: 18cm, height: auto, margin: auto)
#set math.mat(align: center)
#import "@preview/cetz:0.3.4"

*Problem N1*

Trivially, $n = 1$ is a solution. Assume that $n >= 2$, let $n = 2^k m$, where $m$ is an odd number and $k in bb(Z)^+$. 

If $m = 1$, we have $n = 2^k$. If $k in {1, 2}$, we get $n in {2, 4}$ are the solutions. If $k >= 3$, we have $8 divides n$, so $9 divides n$, which is a contradiction.

If $m >= 3$, we have $m(m + 1) divides n$. Since $gcd(m, m + 1) = 1$, so $m + 1 = 2^t (2 <= t <= k)$. As $2^k + 1 > m$, so $(2^k + 1) divides.not n$, which implies that $2^k + 1$ is prime. If $k = 2$, we have $t = 2$, and hence $n = 12$ (verified by direct substitution). If $k >= 3$, as $2^(k - 1) + 1$ is odd, we have $(2^(k - 1) + 1) | (2^t - 1)$, which is impossible. Therefore, we have $(2^(k - 1) + 1) divides.not n$, so $2^(k - 1) + 1$ is prime. So both $2^(k - 1) + 1$ and $2^k + 1$ must be prime. However, it is obliged that one of two numbers must be divisible by $3$, which is a contradiction.

The solution is $n in {1, 2, 4, 12}$.