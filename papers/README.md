# Reference papers

Local copies of the papers behind this project and its follow-up literature.
Files are named `YYYY - Authors - Full title.pdf`.

## Base papers (the two approaches implemented here)
- **AlphaZeroSAT** — Wang & Rompf, *From Gameplay to Symbolic Reasoning: Learning SAT Solver Heuristics in the Style of Alpha(Go) Zero* (2018). [arXiv:1802.05340](https://arxiv.org/abs/1802.05340)
- **Graph-Q-SAT** — Kurin, Godil, Whiteson & Catanzaro, *Can Q-Learning with Graph Networks Learn a Generalizable Branching Heuristic for a SAT Solver?* (NeurIPS 2020). [arXiv:1909.11830](https://arxiv.org/abs/1909.11830)

## Follow-up / related lineage
- **NeuroSAT** — Selsam, Lamm, Bünz, Liang, de Moura & Dill, *Learning a SAT Solver from Single-Bit Supervision* (ICLR 2019). [arXiv:1802.03685](https://arxiv.org/abs/1802.03685)
- **NeuroCore** — Selsam & Bjørner, *Guiding High-Performance SAT Solvers with Unsat-Core Predictions* (2019). [arXiv:1903.04671](https://arxiv.org/abs/1903.04671)
- **NeuroBack** — Wang, Hu, Tiwari, Khurshid, McMillan & Miikkulainen, *NeuroBack: Improving CDCL SAT Solving using Graph Neural Networks* (ICLR 2024). [arXiv:2110.14053](https://arxiv.org/abs/2110.14053).
- **ML for SAT** — Shirokikh, Shenbin, Alekseev & Nikolenko, *Machine Learning for SAT: Restricted Heuristics and New Graph Representations* (2023). [arXiv:2307.09141](https://arxiv.org/abs/2307.09141) — the engineering tricks we evaluate as option #2 (Q-value warm-start, action pool, early release to VSIDS).
- **Survey** — Mojžíšek, Hůla, Li, Zhou & Janota, *Neural Approaches to SAT Solving: Design Choices and Interpretability* (2025). [arXiv:2504.01173](https://arxiv.org/abs/2504.01173)
- **HyperSAT** — Chen, Tan, Gao & Lü, *HyperSAT: Unsupervised Hypergraph Neural Networks for Weighted MaxSAT Problems* (2025). [arXiv:2504.11885](https://arxiv.org/abs/2504.11885)

## Further reading (not downloaded)
- **G4SATBench** — Li, Guo & Si, *Benchmarking and Advancing SAT Solving with Graph Neural Networks* (2023). [arXiv:2309.16941](https://arxiv.org/abs/2309.16941) — the PyTorch-Geometric benchmark/scaffold and generalization study.
- **SATformer** — Shi et al., *SATformer: Transformer-Based UNSAT Core Learning* (2022/2023). [arXiv:2209.00953](https://arxiv.org/abs/2209.00953) — hierarchical Transformer over clause embeddings.
- **Geometric perspective** — *A Geometric Perspective on the Difficulties of Learning GNN-based SAT Solvers* (2025). [arXiv:2508.21513](https://arxiv.org/abs/2508.21513) — why GNN-for-SAT struggles to learn backtracking.
- *NeuroComb* (Wang et al. 2021) and *RLAF — Learning from Algorithm Feedback: One-Shot SAT Solver Guidance with GNNs* (2025).
