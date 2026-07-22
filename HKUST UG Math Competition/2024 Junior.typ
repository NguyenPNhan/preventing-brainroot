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

*Problem 2*

$ bold("A")^(-1) + bold("B")^(-1) &= (bold("A") + bold("B"))^(-1) \
=> (bold("A") + bold("B"))(bold("A")^(-1) + bold("B")^(-1)) &= bold("I") \
=> bold("A")bold("B")^(-1) + bold("B")bold("A")^(-1) + bold("I") &= bold(0). $

Let $bold("X") = bold("A")bold("B")^(-1) => bold("X")^(-1) = bold("B")bold("A")^(-1)$. The above equation yields $bold("X") + bold("X")^(-1) + bold("I") = bold(0)$. Multiplying both sides by $(bold("X") - bold("I"))bold("X")$ leads to $bold("X")^3 - bold("I") = bold(0)$. Hence we have $bold("X")^3 = bold("I") => det(bold("X"))^3 = 1 => det(bold("X")) = 1 => det(bold("A"))det(bold("B")^(-1)) = det(bold("A")bold("B")^(-1)) = 1 => det(bold("A")) = det(bold("B"))$. So we have Q.E.D. 


*Problem 3*

There are $9$ prime numbers $<= 25$, which are $2, 3, 5, 7, 11, 13, 17, 19, 23$. By unique factorization, for a positive interger $x <= 25$, we have $x = 2^(v_1(x)) dot 3^(v_2(x)) dot dots dot 23^(v_9(x))$. Let $v(x) = chevron.l v_1(x), v_2(x) dots, v_9(x) chevron.r in bb(Q)^9$. The 10 sequences $v(a_i)$ must be linearly dependent, so
$ sum_(i = 1)^10 m_i v_j (a_i) = 0 $

for all $j$, for some rational number $m_i$ which are not all $0$. Multiplying them by a common multiple of the denominators give us Q.E.D.