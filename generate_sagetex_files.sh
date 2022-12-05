#!/bin/sh

docker run -v $(pwd):/home/sage/work -t sagemath/sagemath:9.3 "(cd work; sage main-moonmath.sagetex.sage)"