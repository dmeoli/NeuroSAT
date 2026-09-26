# Small-world graph colouring (SATLIB SW-GCP)

Structured SAT instances added to test the claim that attention helps on
structured problems (a complement to `../graph-coloring`, which uses *flat* random
graphs).

- **Source:** SATLIB, *Small-World Graph Colouring* (SW-GCP),
  <https://www.cs.ubc.ca/~hoos/SATLIB/Benchmarks/SAT/SW-GCP/>.
- **Encoding:** 5-colourability of small-world graphs on 100 vertices → DIMACS
  CNF with **500 variables, 3100 clauses** (`c created by edge2cnf`). All SAT.
- **Families `sw100-8-lp0-c5` … `sw100-8-lp8-c5`** (100 instances each): the
  graphs are ring lattices rewired with probability p = 2^-k for `lpk`, so `lp0`
  (p = 1) is a random graph and `lp8` (p = 2^-8) is almost the lattice;
  `sw100-8-p0-c5` (1 instance) is the lattice itself (p = 0).

The spectrum makes the set suitable for an ablation of the attention advantage
against the level of structure (the most structured graphs being the
high-index families, close to the lattice). The transfer study uses a sample of
20 instances per level, in `../satlib/sw-lp0` ... `sw-lp8` and `sw-p0`.

Split into train/val/test with the repo helper:

```sh
bash train_val_test_split.sh small-world-coloring   # if/when wired into the script
```
