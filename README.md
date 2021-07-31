# neuroSAT

[![Open in Colab](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/dmeoli/neuro-sat/blob/master/NeuroSAT.ipynb)

Neuro-symbolic approaches to the SAT problem.

This code has been developed in the context of Pattern Recognition and Reinforcement Learning courses @
[Department of Computer Science](https://www.di.unipi.it/en/)
@ [University of Pisa](https://www.unipi.it/index.php/english)
under the supervision of prof. [Davide Bacciu](http://pages.di.unipi.it/bacciu/).

## Contents

- **Supervised Learning** (*LSTM*) approach described in [1].

- **Reinforcement Learning** (*Alpha Zero (MCTS)*) approach described in [2].

- **Supervised Learning** (*GNN*) + **Reinforcement Learning** (*DQN*) approach described in [3].

    - [ ] *Graph Convolutional Layer* + *Graph Pooling Layer* (e.g., [*PyTorch Geometric Pooling
      Methods*](https://pytorch-geometric.readthedocs.io/en/latest/modules/nn.html#pooling-layers) (e.g.,
      [*Hierarchical Graph Representation Learning with Differentiable Pooling
      (DiffPool)*](https://arxiv.org/abs/1806.08804),
      [*Self-Attention Graph Pooling (SAGPool)*](https://arxiv.org/abs/1904.08082),
      [*MinCUT Pooling*](https://arxiv.org/abs/1907.00481), etc.),
      [*Hierarchical Graph Pooling*](https://arxiv.org/abs/1911.05954),
      [*K-Plex Cover Pooling*](https://openreview.net/forum?id=PFdGijb9sjx))
    - [ ] *Graph Attention Mechanism* (e.g.,
      [*Graph Attention Networks (GATs)*](https://arxiv.org/abs/1710.10903),
      [*Universal Graph Transformer Self-Attention Networks*](https://arxiv.org/abs/1909.11855))

## Split dataset

```./train_val_test_split.sh {uniform-random-3-sat | flat-graph-coloring | etc.}```

## License [![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

This software is released under the MIT License. See the [LICENSE](LICENSE) file for details.

## References

[1] Selsam, Daniel, et al., [*Learning a SAT Solver from Single-Bit Supervision*](https://arxiv.org/abs/1802.03685).

[1] Wang, Fei, and Tiark Rompf, [*From Gameplay to Symbolic Reasoning: Learning SAT Solver Heuristics in the Style of
Alpha(Go) Zero*](https://arxiv.org/abs/1802.05340).

[1] Kurin, Vitaly, et al., [*Can Q-Learning with Graph Networks Learn a Generalizable Branching Heuristic for a SAT
Solver?*](https://arxiv.org/abs/1909.11830).