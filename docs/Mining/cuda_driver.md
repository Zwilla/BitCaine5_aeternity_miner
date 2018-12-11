## Supported on CUDA 7 and later

* Fermi (CUDA 3.2 until CUDA 8) (deprecated from CUDA 9):

    * SM20 or SM_20, compute_30 – Older cards such as GeForce 400, 500, 600, GT-630

* Kepler (CUDA 5 and later):
    * SM30 or SM_30, compute_30 – Kepler architecture (generic – Tesla K40/K80, GeForce 700, GT-730)
      Adds support for unified memory programming

* SM35 or SM_35, compute_35 – More specific Tesla K40
    * Adds support for dynamic parallelism. Shows no real benefit over SM30 in my experience.

* SM37 or SM_37, compute_37 – More specific Tesla K80
    * Adds a few more registers. Shows no real benefit over SM30 in my experience

* Maxwell (CUDA 6 and later):
    * SM50 or SM_50, compute_50 – Tesla/Quadro M series
    * SM52 or SM_52, compute_52 – Quadro M6000 , GeForce 900, GTX-970, GTX-980, GTX Titan X
    * SM53 or SM_53, compute_53 – Tegra (Jetson) TX1 / Tegra X1

* Pascal (CUDA 8 and later)
    * SM60 or SM_60, compute_60 – GP100/Tesla P100 – DGX-1 (Generic Pascal)
    * SM61 or SM_61, compute_61 – GTX 1080, GTX 1070, GTX 1060, GTX 1050, GTX 1030, Titan Xp, Tesla P40, Tesla P4, Discrete GPU on the NVIDIA Drive PX2
    * SM62 or SM_62, compute_62 – Integrated GPU on the NVIDIA Drive PX2, Tegra (Jetson) TX2

* Volta (CUDA 9 and later)
    * SM70 or SM_70, compute_70 – Tesla V100, GTX 1180 (GV104)
    * SM71 or SM_71, compute_71 – probably not implemented
    * SM72 or SM_72, compute_72 – currently unknown

* Turing (CUDA 10 and later)
    * SM75 or SM_75, compute_75 – RTX 2080, Titan RTX, Quadro R8000


[source](http://arnon.dk/matching-sm-architectures-arch-and-gencode-for-various-nvidia-cards/)
