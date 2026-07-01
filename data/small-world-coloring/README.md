# Small-world graph colouring (SATLIB SW-GCP)

Structured SAT instances added to strengthen the **"attention helps on structured
problems"** thesis (a complement to `../graph-coloring`, which uses *flat* random
graphs).

- **Source:** SATLIB, *Small-World Graph Colouring* (SW-GCP),
  <https://www.cs.ubc.ca/~hoos/SATLIB/Benchmarks/SAT/SW-GCP/>.
- **Encoding:** 5-colourability of small-world graphs on 100 vertices → DIMACS
  CNF with **500 variables, 3100 clauses** (`c created by edge2cnf`). All SAT.
- **Families `sw100-8-lp0-c5` … `sw100-8-lp8-c5`** (100 instances each) span a
  *morphing* parameter: low indices are highly clustered ring-lattice / small-world
  graphs (strong local structure), higher indices are progressively rewired toward
  random. `sw100-8-p0-c5` (1 instance) is the fully-random reference.

This spectrum makes the set ideal for an **ablation of the attention advantage vs.
structure level**: Graph-Q-SAT (baseline) vs GAT-Q-SAT should diverge
most on the strongly-structured (low-index) families and converge toward random.

Split into train/val/test with the repo helper:

```sh
bash train_val_test_split.sh small-world-coloring   # if/when wired into the script
```
