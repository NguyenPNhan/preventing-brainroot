#show math.cases: math.display
#show math.frac: math.display
#show math.equation.where(block: false): math.display
#import "@preview/simple-plot:0.9.0": plot
#set page(width: 18cm, height: auto, margin: auto)
#set math.mat(align: center)
#import "@preview/cetz:0.3.4"

*Problem 1*

WLOG, assume that $a <= p$. 

If $a >= 4$, we have $a! + p! equiv 0 (mod 4)$. However, we have $m^o + 26 equiv 1, 2, 3 (mod 4)$, so $a < 4$.

If $a = 1$, we solve $p! = m^o + 25$. Trivially, we have $p >= 5$, which implies that $5 divides m$ and $m$ is odd. If $o$ is even, we have $m^o + 25 equiv 2 (mod 4)$, which is impossible. So we can assume $o >= 3$ and $o$ is odd, then $p! = m^o + 25 equiv 5^2 (mod 5^3)$, which yields $10 <= p <= 14$. However, we can verify that $5^3 divides.not (p! - 25)$ for $10 <= p <= 14$, which is a contradiction.

If $a = 2$, we solve $p! = m^o + 24$. Trivially, we have $p >= 5$. If $p = 5$ then $m^o = 96$, which is impossible. If $p >= 6$, then $m^o = p! - 24 equiv 3 (mod 9)$, forcing $o = 1$, which is a contradiction. 

If $a = 3$, we solve $p! = m^o + 20$. Trivially, we have $p >= 4$. If $p = 4$, we have $(m, o) = (2, 2)$. If $p = 5$ we have $(m, o) = (10, 2)$. If $p >= 6$, we have $2^4 divides p! = m^o + 20$, which implies that $m$ is even. However, if $4 divides m$ or $o >= 3$, we have $m^o + 20 equiv 4 (mod 8)$, and if $o >= 2$ we have $m^o + 20 equiv 8 (mod 16)$, contradiction.

The solution are $(a, p, m, o) in {(4, 3, 2, 2), (3, 4, 2, 2), (5, 3, 10, 2), (3, 5, 10, 2)}$.

