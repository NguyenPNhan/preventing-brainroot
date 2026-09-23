#show math.cases: math.display
#show math.frac: math.display
#show math.equation.where(block: false): math.display
#import "@preview/simple-plot:0.9.0": plot
#set page(width: 18cm, height: auto, margin: auto)
#set math.mat(align: center)
#import "@preview/cetz:0.3.4"

*Câu 1*

a) Ta có $a_n (a_(n + 1)^2 - 1) = a_(n + 1)(a_n^2 + 1) <=> a_(n + 1) - a_n = (a_n + a_(n + 1))/(a_n a_(n + 1)) > 0$ nên $(a_n)$ là dãy tăng nghiêm ngặt.


*Câu 3*

a) Giả sử tồn tại số nguyên dương $k$ sao cho có vô hạn hợp số $n$ thoả $phi(phi(n) + k) = n - k$. Gọi $n_0$ là nghiệm của phương trình thoả $n_0 > 4k^2$ và $p$ là ước nguyên tố nhỏ nhất của $n_0$. Vì $n_0$ là hợp số nên $p <= sqrt(n_0)$. Từ đây ta có
$ phi(n_0) + k <= n_0 - n_0/p + k <= n_0 - sqrt(n_0) + k. $

Suy ra $phi(phi(n) + k) < n_0 - sqrt(n_0) + k < n_0 - sqrt(4k^2) + k = n_0 - k$, vô lý. Vậy với mỗi số nguyên dương $k$ cố định, chỉ có hữu hạn số $n$ là hợp số thoả mãn phương trình.

b) Dễ thấy $k = 1$ thoả (xét $n$ là số nguyên tố luôn thoả, mặc khác có vô hạn số nguyên tố). Xét $k > 1$ thoả phương trình có vô số nghiệm nguyên dương $n$. Từ câu a), dễ thấy ta chỉ cần quan tâm đến trường hợp $n$ là số nguyên tố. Gọi $n_0$ là một nghiệm của phương trình. Vì $phi(phi(n_0) + k) = phi(n_0 + k - 1)$. Nếu $n_0 + k - 1$ là số nguyên tố thì $phi(n_0 + k - 1) = n_0 + k - 2$, suy ra $k = 1$, vô lý. Từ đó, gọi $p$ là ước nguyên tố nhỏ nhất của $n_0 + k - 1$. Vì $n_0 + k - 1$ là hợp số nên $p <= sqrt(n_0 + k - 1)$. Ta có:

$ phi(n_0 + k - 1) <= n_0 + k - 1 - (n_0 + k - 1)/p <= n_0 + k - 1 - sqrt(n_0 + k - 1). $

Chọn $n_0$ sao cho $sqrt(n_0 + k - 1) > 2k - 1$ thì $phi(n_0 + k - 1) < n_0 + k - 1 - (2k - 1) = n_0 - k$, vô lý. Vậy để phương trình có vô số nghiệm nguyên dương $n$ thì $k = 1$.
