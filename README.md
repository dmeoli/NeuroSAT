# NeuroSAT

[![Open in Colab](https://img.shields.io/static/v1.svg?logo=google-colab&label=GraphQSAT&message=Open%20In%20Colab&color=blue)](https://colab.research.google.com/github/dmeoli/neuro-sat/blob/master/GraphQSAT.ipynb)
[![Open in Colab](https://img.shields.io/static/v1.svg?logo=google-colab&label=GATQSAT&message=Open%20In%20Colab&color=blue)](https://colab.research.google.com/github/dmeoli/neuro-sat/blob/master/GATQSAT.ipynb)

[![Open in Colab](https://img.shields.io/static/v1.svg?logo=google-colab&label=AlphaZeroSAT&message=Open%20In%20Colab&color=blue)](https://colab.research.google.com/github/dmeoli/neuro-sat/blob/master/AlphaZeroSAT.ipynb)

Neuro-symbolic approaches to the SAT problem.

This code has been developed in the context of Pattern Recognition and Reinforcement Learning courses @
[Department of Computer Science](https://www.di.unipi.it/en/)
@ [University of Pisa](https://www.unipi.it/index.php/english)
under the supervision of prof. [Davide Bacciu](http://pages.di.unipi.it/bacciu/).

## Contents

- **Reinforcement Learning** (*Alpha Zero (MCTS)*) approach described in [1].

- **Supervised Learning** (*[GNN](https://arxiv.org/abs/1806.01261)*) +
  **Reinforcement Learning** (*DQN*) approach described in [2].

    - [x] [*Graph Attention Networks (GATs)*](https://arxiv.org/abs/1710.10903)

  The experimental results of *GraphQSAT* and *GATQSAT* models are generated
  directly from the evaluation logs (`GQSAT/runs/*/*.tsv`) into in-repo tables,
  so they always stay in sync with the runs (no more manual Google Sheets):

  ```sh
  cd GQSAT && python3 aggregate_results.py   # writes results/summary.csv + results/mrir_<model>.md
  cd GQSAT && python3 make_plots.py          # regenerates img/*.png (MRIR, time, random) from the logs
  ```

  See [`GQSAT/results/mrir_gatqsat.md`](GQSAT/results/mrir_gatqsat.md) and
  [`GQSAT/results/mrir_graphqsat.md`](GQSAT/results/mrir_graphqsat.md). The
  legacy spreadsheet is kept for reference
  [here](https://docs.google.com/spreadsheets/d/1j0gQxsOPizNu8hm-nM1YY8bsdpbmWxYGVotj4h5d-wU).

  | <img src="./img/graphqsat.png"> |
  |---------------------------------|
  | <img src="./img/gatqsat.png">   |

The final presentation of the course project can be
found [here](https://docs.google.com/presentation/d/1rmFL_RhLS2fjGHb9SM14qdb7o3Oh0iOSlqirF0OQaX8).

## Getting the code

Getting the whole project and all the subprojects updated at the latest version can be done with:

```sh
git clone --recurse-submodules https://gitlab.com/smspp/neuroSAT.git
git submodule foreach --recursive "git checkout master"
git submodule foreach --recursive "git pull"
```

## Split datasets

```sh
bash train_val_test_split.sh {uniform-random-3-sat | graph-coloring}
```

## Running GQSAT / GATQSAT locally (modern stack)

The PyTorch models run on a current stack — latest `torch`, `torch-geometric`
(no more `torch-scatter`/`torch-sparse`), `numpy>=2` and `gymnasium` — and
reproduce the original results exactly (verified, see below).

```sh
# 1. isolated environment + dependencies
python3 -m venv .venv                 # if venv is unavailable (PEP 668):
                                      #   python3 -m pip install --target=/tmp/ve virtualenv
                                      #   PYTHONPATH=/tmp/ve python3 -m virtualenv .venv
source .venv/bin/activate
pip install -r requirements.txt

# 2. build the MiniSat gym extension (_GymSolver.so) for THIS python + numpy
#    (needs g++, zlib + the python dev headers; swig only if you change GymSolver.i)
cd GQSAT/minisat
PYV=python$(python -c 'import sys;print(f"{sys.version_info.major}.{sys.version_info.minor}")')
make python-wrap PYTHON=$PYV NUMPY_INC="$(python -c 'import numpy; print(numpy.get_include())')"
cd ../..
```

### Reproduce the evaluation results

```sh
cd GQSAT
python evaluate.py \
  --env-name sat-v0 --core-steps -1 --eps-final 0.0 --no_restarts --no-cuda \
  --test_time_max_decisions_allowed 500 \
  --eval-problems-paths ../data/graph-coloring/flat30-60 \
  --model-dir runs/Dec08_08-39-57_e63e47f25457 --model-checkpoint model_50000.chkp
```

Drop `--no-cuda` on a GPU machine. The modern stack matches the original numbers
**exactly** — GraphQSAT on `flat30-60` (cap 500) gives median relative score
**1.83** (and GAT-Q-SAT **1.67**), identical to the committed
`runs/*/flat30-60-*-max500.tsv`. Heavy training/eval is best run on Colab via the
`GraphQSAT.ipynb` / `GATQSAT.ipynb` notebooks.

## License [![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

This software is released under the MIT License. See the [LICENSE](LICENSE) file for details.

## References

[1] Wang, Fei, and Tiark Rompf, [*From Gameplay to Symbolic Reasoning: Learning SAT Solver Heuristics in the Style of
Alpha(Go) Zero*](https://arxiv.org/abs/1802.05340).

[2] Kurin, Vitaly, et al., [*Can Q-Learning with Graph Networks Learn a Generalizable Branching Heuristic for a SAT
Solver?*](https://arxiv.org/abs/1909.11830).
