# Preprocessing

## Download datasets

Download two datassets [campus-shelf](https://campar.in.tum.de/Chair/MultiHumanPose)

```bash
$ mkdir epfl_campus && cd epfl_campus
$ wget https://www.campar.in.tum.de/public_datasets/2014_cvpr_belagiannis/CampusSeq1.tar.bz2
$ cd ../ 
$ mkdir tum_shelf && cd tum_shelf
$ wget https://www.campar.in.tum.de/public_datasets/2014_cvpr_belagiannis/Shelf.tar.bz2
```

Scripts in this directory help to convert some of the dataset cameras into the right format for this project.
If you want to use your own dataset just follow the documentation. 

## Requirements

Install [pak](https://github.com/jutanke/pak) package.

```bash
$ python3.8 -m pip install git+https://github.com/jutanke/pak.git
$ python3.8 -m pip install numba

# if you face issue about numpy version
$ pip install numpy==1.22.4 matplotlib numba
```

## Run

```bash
$ cd preprocessing
$ python3 generate.py
```
