#!/usr/bin/python

"""
A program to replace the name of the movie
with the name of the subtitle file

by Nox
2015
"""

import sys
import os

if len(sys.argv) != 3:
	print "Usage: %s <movie> <subtitle>" % sys.argv[0]
	sys.exit(1)

movie = sys.argv[1]
sub = sys.argv[2]

movie_ext = movie.split('.')[-1]
name = sub.split('.')[0]

new_movie = "%s.%s" % (name, movie_ext)
new_sub = "%s.srt" % name
os.rename(movie, new_movie)
os.rename(sub, new_sub)
print "renamed %s to %s" % (movie, new_movie)
