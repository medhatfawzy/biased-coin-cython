from distutils.core import setup
from Cython.Build import cythonize

setup(name='coin flip func',
      ext_modules=cythonize("coin_flip.pyx"))
