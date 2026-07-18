#show math.cases: math.display
#show math.frac: math.display
#show math.equation.where(block: false): math.display
#import "@preview/simple-plot:0.9.0": plot
#set page(width: 18cm, height: auto, margin: 0.5cm)
#set math.mat(align: center)

*Probem 1*

*a)* Let $p$ be the product of all number on the board, and $c$ be the number of numbers on the board that are larger than $1$. After an operation, it's easy to see that $p$ decrease or $c$ decrease, and $p, c > 0$ throughout the process. Moreover, when $p = 1$ there aren't any pair to choose so we have Q.E.D.

*b)* Let the numbers initially written on the board be $a_1, a_2, dots, a_2026$. 

*Lemma 1:* At any time, for each $a_i$, there exist a number $x$ on the board such that $a_i | x$.

_Prove:_ Initally we have $x = a_i$. After each operation, if $x$ is paired with $y$, we assign $x = lcm(x, y)/gcd(x, y)$ and we still have $a_i | lcm(x, y)/gcd(x, y)$, which finishes the proof.

*Lemma 2:* Let $max(v_p) = max(v_p (a_1), v_p (a_2), dots, v_p (a_2026))$. At any time, there exist a number $x$ on the board such that $v_p (x) = max(v_p)$ for any prime number $p$.

_Prove:_ Similar to Lemma 1, we have $v_p (lcm(x, y)/gcd(x, y)) = max(v_p)$, where $x = a_i$ and $v_p (a_i) = max(v_p)$.

Back to the problem, apply Lemma 1 and Lemma 2 for the last number $M$ on the board we have Q.E.D.

*Problem 4*

