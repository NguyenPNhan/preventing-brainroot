#show math.cases: math.display
#show math.frac: math.display
#show math.equation.where(block: false): math.display
#import "@preview/simple-plot:0.9.0": plot
#set page(width: 18cm, height: auto, margin: auto)
#set math.mat(align: center)
#import "@preview/cetz:0.3.4"

*Probem 1*

*a)* Let $p$ be the product of all number on the board, and $c$ be the number of numbers on the board that are larger than $1$. After an operation, it's easy to see that $p$ decrease or $c$ decrease, and $p, c > 0$ throughout the process. Moreover, when $p = 1$ there aren't any pair to choose so we have Q.E.D.

*b)* Let the numbers initially written on the board be $a_1, a_2, dots, a_2026$. 

*Lemma 1:* Let $max(v_p) = max(v_p (a_1), v_p (a_2), dots, v_p (a_2026))$. At any time, there exist a number $x$ on the board such that $v_p (x) = max(v_p)$ for any prime number $p$.

_Prove:_ Initally we have $x = a_i$, where $v_p (a_i) = max(v_p)$. After each operation, if $x$ is paired with $y$, we assign $x = lcm(x, y)/gcd(x, y)$ and we still have $v_p (lcm(x, y)/gcd(x, y)) = max(v_p)$.

Back to the original problem, applying Lemma 1 for the last number $M$ on the board yields $M = lcm(a_1, a_2, dots, a_2026)$, so we have Q.E.D.

*Problem 4*

It is trivial that Shan-Yu wins if $theta > 90 degree$, since Shan-Yu can always make $cal(T)$ to be an acute/right triangle after infinitely many steps.

If $theta = (180 degree)/n$, where $n >= 2$, Mulan chooses point $P$ such that the segment containing that point is divided into $2$ angles: $theta$ and $180 degree - theta$. Hence, Shan-Yu is forced to choose the latter one, so Mulan can continue to divide that angle to $(theta, 180 degree - 2theta) -> (theta, 180 degree - 3theta)$ and so on. At one time, we reach $180 degree - k theta = theta$, so Mulan wins. 

If $theta != (180 degree)/n$, where $n in bb(Z)^+$, Shen-Yu first creates a triangle $cal(T)$ that contains no angle that has the form $k theta (k in bb(Z)^+)$. 

#cetz.canvas({
  import cetz.draw: *

  let A = (2, 3)
  let B = (0, 0)
  let C = (5, 0)
  let P = (3, 0)

  line(A, B, C, close: true)
  line(A, P)

  circle(A, radius: 0.02, fill: black)
  circle(B, radius: 0.02, fill: black)
  circle(C, radius: 0.02, fill: black)
  circle(P, radius: 0.02, fill: black)

  content((2, 3.18), $A$)
  content((-0.18, -0.18), $B$)
  content((5.18, -0.18), $C$)
  content((3, -0.18), $P$)
})

If $angle A P C = k theta$, Shen-Yu chooses $triangle A P B$, since $angle A P B = 180 degree - angle A P C != k' theta $ and as $angle A B P + angle B A P = angle A P C = k theta$  we also have $angle B A P != k'' theta$. The argument is similar when $angle A P B = k theta$.

If $angle B A P = k theta$, Shen-Yu chooses $triangle A P C$, since $angle P A C = angle B A C - angle B A P = angle B A C - k theta != k' theta$ and $angle A P C = angle B A P + angle A B P = k theta + angle A B P != k'' theta$. The argument is similar when $angle C A P = k theta$.

So Shen-Yu wins if $theta != (180 degree)/n$, where $n in bb(Z)^T$, otherwise Mulan wins.

