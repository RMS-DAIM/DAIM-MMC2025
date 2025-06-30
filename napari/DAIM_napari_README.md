To install the example conda environment run these commands in a terminal. If you don't have conda installed, you can obtain it [here](https://docs.conda.io/en/latest/miniconda.html) with miniconda.

```
conda create -n mmc_napari python=3.12
conda activate mmc_napari
```

then run the following:

```
conda install -c conda-forge pyqt napari=0.5.6
conda install jupyterlab matplotlib cxx-compiler imagecodecs pandas pip
pip install napari-skimage-regionprops
pip install napari-segment-blobs-and-things-with-membranes
pip install napari-accelerated-pixel-and-object-classification
```


Or alternatively you can use the `mmc_napari.yml` file in this repository to install all the the above at once by running this in the terminal instead.

```conda env create -f mmc_napari.yml```

This will build a conda environment with the plugins used in the demonstration. You only need to do this once, and the environment will be stored on your system ready to be activated whenever you need it. This step can take a while, so be patient!

This conda environment can be activated in a terminal by

```conda activate mmc_napari```

and from here you can simply type `napari` in the command line terminal to launch the viewer. It can take a little while first time as napari will need to configure itself for your system. Subsequent times should be much faster.
