# SATLIB families for the transfer study

Structured families of SATLIB (<https://www.cs.ubc.ca/~hoos/SATLIB/benchm.html>) on
which the colouring-trained models are evaluated with no retraining
(`GQSAT/transfer_study.py`), next to `../aim` and `../planning`.

**Selection.** Every instance of the family with at most 2000 variables and at most
150000 clauses (the largest instances already evaluated, the quasigroups of order 8,
have 512 variables and 148957 clauses). Left out by this rule: all of `bmc` and of
the large graph colouring `gcp`, the uncompressed `par32`, `bw_large.c/d`,
`logistics.d`, `qg5-13`, `qg7-13`, `ssa6288-047`, two `bf1355`, and the large
random-circuit instances of `Bejing`; the large random 3-SAT of `LRAN` is not
structured and is not used.

| directory | SATLIB family | instances |
|---|---|---|
| `ais` | All Interval Series | 4 |
| `beijing` | Beijing competition (adders, blocks, comparators) | 8 |
| `circuit` | circuit fault analysis, `bf` (bridge) and `ssa` (single stuck-at) | 9 |
| `dubois` | DIMACS dubois, unsatisfiable | 13 |
| `hanoi` | towers of Hanoi | 2 |
| `inductive-inference` | DIMACS ii | 41 |
| `jnh` | random, variable clause length | 50 |
| `parity` | parity learning, `par8`, `par16`, `par32-*-c` | 25 |
| `pigeon-hole` | pigeon hole, unsatisfiable | 5 |
| `pret` | 2-colouring forced unsatisfiable | 8 |
| `quasigroup` | quasigroup (Latin square) completion | 20 |
| `sw-lp0` ... `sw-lp8` | small-world colouring, rewiring probability 2^-k | 20 each |
| `sw-p0` | small-world colouring, ring lattice (p = 0) | 1 |

The small-world levels are a sample of 20 of the 100 instances of each SATLIB family
`sw100-8-lpk-c5` (python `random.Random(0)`, see the commit that added them); `lp0`
has rewiring probability 1 (a random graph) and `lp8` 2^-8 (almost a ring lattice).

**Baselines.** `METADATA` holds, per instance, the iterations of MiniSat without and
with restarts, computed by `GQSAT/make_metadata.py` with a limit of 600 seconds per
instance; an instance that MiniSat does not solve within the limit is moved to
`excluded/` and listed in `EXCLUDED`.
