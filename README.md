# Julia-Experiments

## Run Julia in Colab
1. create the following file, save it with the *ipynb* extension, and upload it into [Google Colab](https://colab.research.google.com
).
```
{
  "nbformat": 4,
  "nbformat_minor": 0,
  "metadata": {
    "colab": {
      "name": "Julia on Colab.ipynb",
      "version": "0.3.2",
      "provenance": []
    },
    "kernelspec": {
      "name": "julia-1.2",
      "display_name": "Julia 1.2"
    },
    "accelerator": "GPU"
  },
  "cells": [
    {
      "metadata": {
        "id": "oMSuTc3pDlHv",
        "colab_type": "code",
        "colab": {}
      },
      "cell_type": "code",
      "source": [
        ""
      ],
      "execution_count": 0,
      "outputs": []
    }
  ]
}
```
2. Insert the following code in the colab file you just created:
```
!curl -sSL "https://julialang-s3.julialang.org/bin/linux/x64/1.2/julia-1.2.0-linux-x86_64.tar.gz" -o julia.tar.gz
!tar -xzf julia.tar.gz -C /usr --strip-components 1
!rm -rf julia.tar.gz*
!julia -e 'using Pkg; pkg"add IJulia; precompile"'
!echo "DONE"
```

3. You are basically done. Test this installation by running a simple code like:
```
function mandelbrot(a)
    z = 0
    for i=1:50
        z = z^2 + a
    end
    return z
end

for y=1.0:-0.05:-1.0
    for x=-2.0:0.0315:0.5
        abs(mandelbrot(complex(x, y))) < 2 ? print("*") : print(" ")
    end
    println()
end
```
