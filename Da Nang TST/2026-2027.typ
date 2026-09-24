#show math.cases: math.display
#show math.frac: math.display
#show math.equation.where(block: false): math.display
#import "@preview/simple-plot:0.9.0": plot
#set page(width: 18cm, height: auto, margin: auto)
#set math.mat(align: center)
#import "@preview/cetz:0.3.4"

*Câu 1*

a) Ta có $a_n (a_(n + 1)^2 - 1) = a_(n + 1)(a_n^2 + 1) <=> a_(n + 1) - a_n = (a_n + a_(n + 1))/(a_n a_(n + 1)) > 0$ nên $(a_n)$ là dãy tăng nghiêm ngặt.

Giả sử dãy bị chặn trên, tức là tồn tại $L = lim a_n > 0$. Thế vào trên ta có $L - L = (L + L)/L^2 <=> (2L)/L^2 = 0$, vô lý. Vậy $lim a_n = +infinity$.

*Câu 2*

a) Xét x, y thoả $f(x) = f(y)$. Từ (i) có $f(f(x)f(1)) = x$ và $f(f(y)f(1)) = y => x = y$. Vậy $f$ đơn ánh. Thay $a = 1$ vào (ii) thì $f(2028) = 2028$. Thay $m = 1$ và $n = 2028$ vào (i) thì $f(f(1)f(2028)) = 2028 => f(f(1)f(2028)) = f(2028) => f(1)f(2028) = 2028 => f(1) = 1$ (vì $f(2028) = 2028$).

b) Xét số nguyên dương $x$ bất kì, ta có $f(f(x)f(1)) = x$ theo (i) $=> f(f(x)) = x$ (vì $f(1) = 1$), hay $f circle.small f = id$. Kết hợp với (i) có $f(m n) = f(m)f(n)$ với mọi số nguyên dương $m, n$, hay $f$ là hàm nhân tính hoàn toàn.

Tiếp đó, vì $f circle.small f = id$ nên $f$ toàn ánh. Giả sử $f(q) = u v$ với $q$ là số nguyên tố, $u, v$ là hai số nguyên dương lớn hơn $1$. Vì $f$ toàn ánh nên tồn tại $f^(-1)(u)$ thoả $f(f^(-1)(u)) = u$, tương tự với $v$. Từ đó, vì $f$ là hàm nhân tính hoàn toàn nên 
$ f(q) = f(f^(-1)(u))f(f^(-1)(v)) \ => q = f(f(q)) = f(f(f^(-1)(u))f(f^(-1)(v))) = f^(-1)(u)f^(-1)(v) $

Mặc khác dễ có $f^(-1)(u), f^(-1)(v) > 1$ dẫn đến mâu thuẫn vì $q$ là số nguyên tố. Vậy $f(q)$ là số nguyên tố.

Xét số nguyên tố $q$ thoả $q != 2027$. Ta có $2027 | q^2026 - 1$ theo định lý Fermat nhỏ. Từ đó theo (ii) thì $f(q^2026) = q^2026$. Vì $f$ là hàm nhân tính hoàn toàn, ta cũng có $f(q^2026) = f(q)^2026$, dẫn đến $f(q) = q$. 

Giả sử $f(2027) = p != 2027$, ta biết $f(2027) = p$ cũng là một số nguyên tố. Lại có $f(f(2027)) = 2027 => f(p) = 2027$, mà $p != 2027$ nên mâu thuẫn. Vậy $f(2027) = 2027$. 

Vì $f$ là hàm nhân tính hoàn toàn nên với mọi số nguyên dương $n = p_1^a_1 p_2^a_2 dots p_k^a_k $ thì $f(n) = f(p_1)^a_1 dots f(p_k)^a_k = n$. Vậy $f(n) = n$ là hàm số duy nhất thoả mãn. 

*Câu 3*

a) Giả sử tồn tại số nguyên dương $k$ sao cho có vô hạn hợp số $n$ thoả $phi(phi(n) + k) = n - k$. Gọi $n_0$ là nghiệm của phương trình thoả $n_0 > 4k^2$ và $p$ là ước nguyên tố nhỏ nhất của $n_0$. Vì $n_0$ là hợp số nên $p <= sqrt(n_0)$. Từ đây ta có
$ phi(n_0) + k <= n_0 - n_0/p + k <= n_0 - sqrt(n_0) + k. $

Suy ra $phi(phi(n) + k) < n_0 - sqrt(n_0) + k < n_0 - sqrt(4k^2) + k = n_0 - k$, vô lý. Vậy với mỗi số nguyên dương $k$ cố định, chỉ có hữu hạn số $n$ là hợp số thoả mãn phương trình.

b) Dễ thấy $k = 1$ thoả (xét $n$ là số nguyên tố luôn thoả, mặc khác có vô hạn số nguyên tố). Xét $k > 1$ thoả phương trình có vô số nghiệm nguyên dương $n$. Từ câu a), ta chỉ cần quan tâm nghiệm là số nguyên tố. Gọi $n_0$ là một nghiệm của phương trình thoả $n_0$ là số nguyên tố. Vì $phi(phi(n_0) + k) = phi(n_0 + k - 1)$. Nếu $n_0 + k - 1$ là số nguyên tố thì $phi(n_0 + k - 1) = n_0 + k - 2$, suy ra $k = 1$, vô lý. Từ đó, gọi $p$ là ước nguyên tố nhỏ nhất của $n_0 + k - 1$. Vì $n_0 + k - 1$ là hợp số nên $p <= sqrt(n_0 + k - 1)$. Ta có:

$ phi(n_0 + k - 1) <= n_0 + k - 1 - (n_0 + k - 1)/p <= n_0 + k - 1 - sqrt(n_0 + k - 1). $

Chọn $n_0$ sao cho $sqrt(n_0 + k - 1) > 2k - 1$ thì $phi(n_0 + k - 1) < n_0 + k - 1 - (2k - 1) = n_0 - k$, vô lý. Vậy để phương trình có vô số nghiệm nguyên dương $n$ thì $k = 1$.

*Câu 6*

a) Từ (i), dễ thấy những hoán vị thoả mãn có $a_1 < a_2 < dots < a_i > a_(i + 1) > dots > a_2026$. Với mỗi phần tử $x in \{1, 2, dots, 2025\}$, ta có $2$ lựa chọn là đặt nó bên trái $a_i$ hoặc đặt nó bên phải $a_i$, vì vậy nên có tổng cộng $2^2025 - 1$ hoán vị như vậy ($-1$ do trường hợp $(1, 2, dots, 2026)$). Vậy số hoán vị thoả mãn (i) là $2^2025 - 1$.

Tiếp đó, ta đếm phần bù của (ii). Xét $2$ trường hợp sau:
- $X = \{a_(i + 1), dots, a_2026\}$ chứa toàn số chẵn. Với mỗi số lẻ ta chỉ có thể đặt vào bên trái $a_i$. Với mỗi số chẵn ta có thể đặt vào cả trái và phải $a_i$. Vì có $1012$ số chẵn (không tính $2026$) nên có tổng cộng $2^1012 - 1$ ($-1$ do trường hợp $(1, 2, dots, 2026)$) cách đặt.

- $X = \{a_(i + 1)\, dots, a_2026}$ chứa toàn số lẻ. Tương tự có $2^1013 - 1$ cách đặt.

Vậy số hoán vị thoả mãn cả (i) và (ii) là $2^2025 - 1 - (2^1012 - 1) - (2^1013 - 1) = 2^2025 - 3 dot 2^1012 + 1$.

b) Gọi $f(n)$ là số hoán vị như vậy. Ta có $f(0) = 0$. Xét $2$ trường hợp sau:
- Đặt $n$ ở cuối, lúc này số lượng hoán vị là $f(n - 1)$.
- Đặt $n$ ở giữa, lập luận tương tự câu a), số lượng hoán vị là $2^(n - 1) - 1$.

Vậy $f(n) = 2^(n - 1) - 1 + f(n - 1)$ với $n >= 1$. Bằng quy nạp ta có $f(n) = 2^0 + 2^1 + dots + 2^(n - 1) - n = 2^n - n - 1$.