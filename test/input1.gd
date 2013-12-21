# input1.gd
# Basic syntax of GraphDown.
# Comment is necessary!


# Blank lines should not affect the language

# meta data and data should be well-separated.
# data is the thing you should spend more time on. keep it simple.
# so meta data should be prefixed with special symbol

# meta data start with a "!"?
# "template" defines what your data should look like.
# for example, if template is "graph", you should specify nodes and links.
! template: graph

# this size is relative to svg object sizes.
# The final plot can be arbitrarily scaled at user side.
# e.g.
# <gd width="100" height="100" src="http://graphdown.net/12345.gd" />
! width: 500
! height: 500

# there can be template specific meta data.
# For example, there are multiple graph layout algorithms.
! layout: force-directed
# For each layout algorithm, we have different parameters to tune.
! charge: -150
! linkDistance: 30
# A simpler choice is:
# ! layout: force-directed(charge=-150,linkDistance=30)
# This is up to the template definition.

# Template handles parameters:
#    * if no such parameter in meta data, use sensible defaults
#    * see undefined parameters: ignore and optionally show warning message for debug purpose.

# Each line that does not start with "!" is data.
# Our data is line based.
# For the first version, we use the graphviz language
# this defines a series of edges
a -> b -> a_node
# this defines node
a [label="hello",shape=ellipse,fillcolor="burlywood",style="filled"];
b [label="GraphDown",shape=box,fillcolor="palegreen",style="filled,rounded"];
# nodes that have no definition should use default attributes
# e.g. the above is to say
# a_node [label="a_node",shape="circle",fillcolor="none",style=""]
