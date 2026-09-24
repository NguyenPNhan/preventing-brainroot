Polygon generator package

Register generator.cpp in Polygon with executable name: gen

Usage:
  gen n m q treeMode queryMode zMode [updateMode] > $

Tree modes:
  random       random recursive tree under a random permutation
  path         path (satisfies subtask 4)
  binary       heap-parent tree under a random permutation (satisfies subtask 5)
  star         star
  broom        path handle + star at the end
  caterpillar  short spine + random leaves

Query modes:
  random  random x,y
  point   x=y
  same    all queries use one random pair
  edge    x,y are endpoints of a random tree edge
  fixed   p[1],p[n] in the hidden permutation; on path this is the whole path
  mixed   mixture of point/same/edge/random

z modes:
  random, zero, one, max, small, index, alt

Update modes for (zeta,gamma):
  random, gamma1, smallgamma, maxgamma, mixed

Test counts:
  subtask1.txt: 12
  subtask2.txt: 17
  subtask3.txt: 17
  subtask4.txt: 19
  subtask5.txt: 19
  subtask6.txt: 15

Total = 99 tests, because subtask 1 was explicitly requested to contain only 12 tests instead of 13.
