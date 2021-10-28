# NeuroSAT

[![Open in Colab](https://img.shields.io/badge/Open_in_Colab-NeuroSAT-blue.svg)](https://colab.research.google.com/github/dmeoli/neuro-sat/blob/master/NeuroSAT.ipynb)
[![Open in Colab](https://img.shields.io/badge/Open_in_Colab-GATQSAT-blue.svg)](https://colab.research.google.com/github/dmeoli/neuro-sat/blob/master/GATQSAT.ipynb)

<!---
[![Open in Colab](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/dmeoli/neuro-sat/blob/master/NeuroSAT.ipynb)
[![Open in Colab](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/dmeoli/neuro-sat/blob/master/GATQSAT.ipynb)
-->

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

## Split dataset

```./train_val_test_split.sh {uniform-random-3-sat | graph-coloring | etc.}```

## License [![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

This software is released under the MIT License. See the [LICENSE](LICENSE) file for details.

## References

[1] Wang, Fei, and Tiark Rompf, [*From Gameplay to Symbolic Reasoning: Learning SAT Solver Heuristics in the Style of
Alpha(Go) Zero*](https://arxiv.org/abs/1802.05340).

[2] Kurin, Vitaly, et al., [*Can Q-Learning with Graph Networks Learn a Generalizable Branching Heuristic for a SAT
Solver?*](https://arxiv.org/abs/1909.11830).
