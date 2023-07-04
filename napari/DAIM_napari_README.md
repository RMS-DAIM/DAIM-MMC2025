To install the example conda environment run this in a terminal. If you don't have conda installed, you can obtain it [here](https://docs.conda.io/en/latest/miniconda.html) with miniconda.

```conda env create -f mmc_napari.yml```

This will build a conda environment with the plugins used in the demonstration. You only need to do this once, and the environment will be stored on your system ready to be activated whenever you need it. This step can take a while, so be patient!

This conda environment can be activated in a terminal by

```conda activate mmc_napari```

and from here you can simply type `napari` in the command line terminal to launch the viewer (it can take a little while first time).
