# Notebooks

Self-contained, end-to-end Colab pipelines &mdash; **one per model** (set the
runtime to **GPU**). Each notebook reproduces the whole pipeline from scratch
(setup → data → training → evaluation → results) by orchestrating the `.py`
implementation in the submodules; reading it top-to-bottom mirrors the slides.

| Notebook | Model(s) | Pipeline |
|----------|----------|----------|
| [`graph_q_sat.ipynb`](graph_q_sat.ipynb) | Graph-Q-SAT · GAT-Q-SAT (`GQSAT/`) | clone+build → split & metadata → train the two variants (`train.sh`) → reproduce & evaluate (`evaluate.sh`) → MRIR tables/plots, cross-domain transfer, Graph-vs-GAT comparison |
| [`alphazero_sat.ipynb`](alphazero_sat.ipynb) | AlphaZeroSAT (`AlphaZeroSAT/`) | clone+build → train self-play (`train_torch.py`) → evaluate branching decisions (`eval_torch.py`) |

Each notebook clones the repo with submodules, installs the modern stack
(`torch`, `torch-geometric`, `gymnasium`, `numpy>=2`) and builds the native C++
MiniSat environment &mdash; no manual setup. Checkpoints are written to Google
Drive and training **auto-resumes** after a disconnect.
