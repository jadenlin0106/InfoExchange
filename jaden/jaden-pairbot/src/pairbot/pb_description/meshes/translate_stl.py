#!/usr/bin/python

# Python script to find STL dimensions
# Requrements: sudo pip install numpy-stl

import math
import stl
from stl import mesh
import numpy

import os
import sys
from pprint import pprint

if len(sys.argv) < 2:
    sys.exit('Usage: %s [stl file]' % sys.argv[0])

if not os.path.exists(sys.argv[1]):
    sys.exit('ERROR: file %s was not found!' % sys.argv[1])

# this stolen from numpy-stl documentation
# https://pypi.python.org/pypi/numpy-stl

# find the max dimensions, so we can know the bounding box, getting the height,
# width, length (because these are the step size)...
def find_mins_maxs(obj):
    minx = maxx = miny = maxy = minz = maxz = None
    # print(stl.Dimension.X, stl.Dimension.Y, stl.Dimension.Z)
    for p in obj.points:
        # p contains (x, y, z)
        if minx is None:
            l = dir(p)
            # pprint(l)
            minx = p[stl.Dimension.X]
            maxx = p[stl.Dimension.X]
            miny = p[stl.Dimension.Y]
            maxy = p[stl.Dimension.Y]
            minz = p[stl.Dimension.Z]
            maxz = p[stl.Dimension.Z]
            print(stl.Dimension.X, p[stl.Dimension.X])
        else:
            maxx = max(p[stl.Dimension.X], maxx)
            minx = min(p[stl.Dimension.X], minx)
            maxy = max(p[stl.Dimension.Y], maxy)
            miny = min(p[stl.Dimension.Y], miny)
            maxz = max(p[stl.Dimension.Z], maxz)
            minz = min(p[stl.Dimension.Z], minz)
    return minx, maxx, miny, maxy, minz, maxz

main_body = mesh.Mesh.from_file(sys.argv[1])

# the logic is easy from there


main_body.translate([float(sys.argv[2]), float(sys.argv[3]), float(sys.argv[4])])

minx, maxx, miny, maxy, minz, maxz = find_mins_maxs(main_body)

main_body.save(sys.argv[1])

# the logic is easy from there
print ("File:", sys.argv[1])
print ("X:", maxx, '-', minx, '=', maxx-minx)
print ("Y:", maxy, '-', miny, '=', maxy-miny)
print ("Z:", maxz, '-', minz, '=', maxz-minz)
