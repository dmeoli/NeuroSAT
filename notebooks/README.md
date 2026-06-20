# Notebooks

Colab notebooks for the project (set the runtime to **GPU** for training).

| Notebook | Purpose |
|----------|---------|
| [`reproduce_gqsat.ipynb`](reproduce_gqsat.ipynb) | Reproduce the Graph-Q-SAT / GAT-Q-SAT evaluation results exactly, from the trained checkpoints in `GQSAT/runs/` (validates the modern PyTorch port against the original logs). |
| [`train_colab.ipynb`](train_colab.ipynb) | Train both models on a GPU: Graph-Q-SAT / GAT-Q-SAT (`GQSAT/dqn.py`) and AlphaZeroSAT (`AlphaZeroSAT/train_torch.py`). Builds the native MiniSat env, runs training, and can copy checkpoints to Drive. |

Each notebook clones (or mounts) the repo, installs the modern stack
(`torch`, `torch-geometric`, `gymnasium`, `numpy>=2`) and builds the C++ env —
no manual setup required.
