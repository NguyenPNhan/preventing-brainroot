#show math.cases: math.display
#show math.frac: math.display
#show math.equation.where(block: false): math.display
#import "@preview/simple-plot:0.9.0": plot
#set page(width: 18cm, height: auto, margin: auto)
#set math.mat(align: center)
#import "@preview/cetz:0.3.4"

*Problem 1*

Without loss of generality, assume that $a <= p$. 

If $a >= 4$, we have $a! + p! equiv 0 (mod 4)$. However, we have $m^o + 26 equiv 1, 2, 3 (mod 4)$, so $a < 4$.

If $a = 1$, we solve $p! = m^o + 25$. Trivially, we have $p >= 5$, which implies that $5 divides m$ and $m$ is odd. If $o$ is even, we have $m^o + 25 equiv 2 (mod 4)$, which is impossible. So we can assume $o >= 3$ and $o$ is odd, then $p! = m^o + 25 equiv 5^2 (mod 5^3)$, which yields $10 <= p <= 14$. However, we can verify that $5^3 divides.not (p! - 25)$ for $10 <= p <= 14$, which is a contradiction.

If $a = 2$, we solve $p! = m^o + 24$. Trivially, we have $p >= 5$. If $p = 5$ then $m^o = 96$, which is impossible. If $p >= 6$, then $m^o = p! - 24 equiv 3 (mod 9)$, forcing $o = 1$, which is a contradiction. 

If $a = 3$, we solve $p! = m^o + 20$. Trivially, we have $p >= 4$. If $p = 4$, we have $(m, o) = (2, 2)$. If $p = 5$ we have $(m, o) = (10, 2)$. If $p >= 6$, we have $2^4 divides p! = m^o + 20$, which implies that $m$ is even. However, if $4 divides m$ or $o >= 3$, we have $m^o + 20 equiv 4 (mod 8)$, and if $o >= 2$ we have $m^o + 20 equiv 8 (mod 16)$, contradiction.

The solution are $(a, p, m, o) in {(4, 3, 2, 2), (3, 4, 2, 2), (5, 3, 10, 2), (3, 5, 10, 2)}$.

*Problem 2*

Fix an arbitrary positive integer $x$ in the $n$-element set. Define $B_i = 1$ if $x in A_i$, else $B_i = 0$.

Let $c_00$ is the number of pairs $(i, i + 1)$ where $B_i = B_(i + 1) = 0$ (also consider $B_(2^n) = B_1 = 0$). Define similarly for $c_01, c_10, c_11$.

Since the circle start and end with $B_1$, when $B_1$ transforms from $1 -> 0$ or vice versa, it must transform back. Hence, we have $c_01 = c_11$. As $x$ appears in half of $A_1, A_2, dots, A_(2^n)$, so we have $c_00 = 2^(n - 1) - c_01$ and $c_11 = 2^(n - 1) - c_10$, which yields $c_01 = c_10$.

Iterate for all $x$ in the $n$-element set, we have $abs(A_1 inter A_2) + dots + abs(A_(2^n) inter A_1) = abs(overline(A_1) inter overline(A_2)) + dots + abs(overline(A_(2^n)) inter overline(A_1))$.

Moreover, consider $1/2 sum_(i = 1)^(2^n) (abs(A_i inter A_(i + 1)) + abs(overline(A_i) inter overline(A_(i + 1))))$, where $A_(2^n + 1) = A_1$. A term of this sum is $0$ only for two sets that are complement, so no two consecutive terms are equal to $0$. Therefore, we have

$ abs(A_1 inter A_2) + dots + abs(A_(2^n) inter A_1) = 1/2 sum_(i = 1)^(2^n) (abs(A_i inter A_(i + 1)) + abs(overline(A_i) inter overline(A_(i + 1)))) >= 2^(n - 2) $
which finishes the proof.