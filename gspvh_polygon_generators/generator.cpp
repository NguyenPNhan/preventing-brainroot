#include "testlib.h"
#include <bits/stdc++.h>
using namespace std;

static void shuffleVec(vector<int>& a) {
    for (int i = (int)a.size() - 1; i > 0; --i) {
        int j = rnd.next(i + 1);
        swap(a[i], a[j]);
    }
}

int main(int argc, char* argv[]) {
    registerGen(argc, argv, 1);

    if (argc < 7) {
        cerr << "Usage: generator n m q treeMode queryMode zMode [updateMode]\n";
        cerr << "treeMode: random/path/binary/star/broom/caterpillar\n";
        cerr << "queryMode: random/point/same/edge/fixed/mixed\n";
        cerr << "zMode: random/zero/one/max/small/index/alt\n";
        cerr << "updateMode: random/gamma1/smallgamma/maxgamma/mixed (default: random)\n";
        return 1;
    }

    int n = atoi(argv[1]);
    int m = atoi(argv[2]);
    int q = atoi(argv[3]);
    string treeMode = argv[4];
    string queryMode = argv[5];
    string zMode = argv[6];
    string updateMode = (argc >= 8 ? argv[7] : "random");

    ensuref(1 <= n && n <= 300000, "n out of range");
    ensuref(1 <= m && m <= 300000, "m out of range");
    ensuref(1 <= q && q <= 300, "q out of range");

    vector<int> p(n);
    iota(p.begin(), p.end(), 1);
    shuffleVec(p);

    vector<pair<int,int>> edges;
    edges.reserve(max(0, n - 1));

    if (treeMode == "path") {
        for (int i = 1; i < n; ++i) edges.push_back({p[i-1], p[i]});
    } else if (treeMode == "binary") {
        // Under permutation p[0..n-1], vertex p[i-1] corresponds to heap index i.
        for (int i = 2; i <= n; ++i) {
            edges.push_back({p[i/2 - 1], p[i - 1]});
        }
    } else if (treeMode == "star") {
        for (int i = 1; i < n; ++i) edges.push_back({p[0], p[i]});
    } else if (treeMode == "broom") {
        if (n >= 2) {
            int handle = max(1, n / 2);
            for (int i = 1; i < handle; ++i) edges.push_back({p[i-1], p[i]});
            for (int i = handle; i < n; ++i) edges.push_back({p[handle-1], p[i]});
        }
    } else if (treeMode == "caterpillar") {
        if (n >= 2) {
            int spine = max(1, n / 3);
            for (int i = 1; i < spine; ++i) edges.push_back({p[i-1], p[i]});
            for (int i = spine; i < n; ++i) {
                int at = rnd.next(spine);
                edges.push_back({p[at], p[i]});
            }
        }
    } else if (treeMode == "random") {
        for (int i = 1; i < n; ++i) {
            int par = rnd.next(i);
            edges.push_back({p[par], p[i]});
        }
    } else {
        quitf(_fail, "unknown treeMode: %s", treeMode.c_str());
    }

    ensuref((int)edges.size() == n - 1, "tree generation failed");

    cout << n << ' ' << m << ' ' << q << '\n';
    for (auto [u, v] : edges) cout << u << ' ' << v << '\n';

    int fixedX = rnd.next(1, n);
    int fixedY = rnd.next(1, n);
    if (n >= 2 && queryMode == "fixed") {
        fixedX = p.front();
        fixedY = p.back();
    }

    auto getZ = [&](int i) -> long long {
        if (zMode == "random") return rnd.next(0LL, 1000000000LL);
        if (zMode == "zero") return 0;
        if (zMode == "one") return 1;
        if (zMode == "max") return 1000000000LL;
        if (zMode == "small") return rnd.next(0LL, 10LL);
        if (zMode == "index") {
            long long x = i;
            return (x * x * 1000003LL + 911382323LL * x + 972663749LL) % 1000000001LL;
        }
        if (zMode == "alt") return (i & 1) ? 0LL : 1000000000LL;
        quitf(_fail, "unknown zMode: %s", zMode.c_str());
        return 0;
    };

    for (int i = 1; i <= m; ++i) {
        int x, y;
        if (queryMode == "random") {
            x = rnd.next(1, n);
            y = rnd.next(1, n);
        } else if (queryMode == "point") {
            x = y = rnd.next(1, n);
        } else if (queryMode == "same") {
            x = fixedX;
            y = fixedY;
        } else if (queryMode == "edge") {
            if (n == 1) x = y = 1;
            else {
                auto e = edges[rnd.next((int)edges.size())];
                x = e.first; y = e.second;
            }
        } else if (queryMode == "fixed") {
            x = fixedX;
            y = fixedY;
        } else if (queryMode == "mixed") {
            int t = rnd.next(100);
            if (t < 10) {
                x = y = rnd.next(1, n);
            } else if (t < 30) {
                x = fixedX; y = fixedY;
            } else if (t < 45 && n >= 2) {
                auto e = edges[rnd.next((int)edges.size())];
                x = e.first; y = e.second;
            } else {
                x = rnd.next(1, n);
                y = rnd.next(1, n);
            }
        } else {
            quitf(_fail, "unknown queryMode: %s", queryMode.c_str());
        }
        cout << x << ' ' << y << ' ' << getZ(i) << '\n';
    }

    for (int team = 2; team <= q; ++team) {
        long long zeta, gamma;
        if (updateMode == "random") {
            zeta = rnd.next(0LL, 1000000000LL);
            gamma = rnd.next(1LL, 1000000000LL);
        } else if (updateMode == "gamma1") {
            zeta = rnd.next(0LL, 1000000000LL);
            gamma = 1;
        } else if (updateMode == "smallgamma") {
            zeta = rnd.next(0LL, 1000000000LL);
            gamma = rnd.next(1LL, 20LL);
        } else if (updateMode == "maxgamma") {
            zeta = (team & 1) ? 0LL : 1000000000LL;
            gamma = 1000000000LL;
        } else if (updateMode == "mixed") {
            int t = rnd.next(100);
            if (t < 15) {
                zeta = 0; gamma = 1;
            } else if (t < 30) {
                zeta = 1000000000LL; gamma = 1;
            } else if (t < 50) {
                zeta = rnd.next(0LL, 1000000000LL); gamma = rnd.next(2LL, 20LL);
            } else if (t < 70) {
                zeta = (t & 1) ? 0LL : 1000000000LL; gamma = 1000000000LL;
            } else {
                zeta = rnd.next(0LL, 1000000000LL);
                gamma = rnd.next(1LL, 1000000000LL);
            }
        } else {
            quitf(_fail, "unknown updateMode: %s", updateMode.c_str());
        }
        cout << zeta << ' ' << gamma << '\n';
    }

    return 0;
}
