#!/usr/bin/env python

'''
Online example from :
http://www.vtk.org/Wiki/VTK/Examples/Python/Graphs/EdgeWeights

Going to heavly comment out the steps to understand how to edit
this into what we need to make other graphs
'''

import vtk  							# Manditory on all python VTK
import random


g = vtk.vtkMutableUndirectedGraph() 	 	# Sets up empty data structure

# Create a start node
init_v = g.AddVertex()

# Create this list of leaves + append inital
leaf_list = []
leaf_list.append(init_v)


# Randomly Pick a Termination number
total_nodes = random.randint(1,1000)
created_nodes = 0


# While don't exede the limit + run out of leafs
while(created_nodes < total_nodes and len(leaf_list) != 0):

	# Get the current leaf, oldest
	cur_leaf = leaf_list.pop(0)

	# How many children will you have
	num_children = random.randint(1,10)

	# Create childen
	for i in range(num_children):
		child = g.AddVertex()
		g.AddGraphEdge(cur_leaf, child)
		leaf_list.append(child)
		created_nodes+=1

# Making the layout view
# Which is an awsome class that handles a lot of the backend
# stuff for interaction with the graph we are about to make
graphLayoutView = vtk.vtkGraphLayoutView()

# Toss in your graph into this view
graphLayoutView.AddRepresentationFromInput(g)

# General Set Up Stuff
graphLayoutView.SetLayoutStrategy("Simple 2D")


# Recenters the camera around our points
graphLayoutView.ResetCamera()

# Opens and renders the window
jkjgraphLayoutView.Render()

# I have no idea what the hell this does
graphLayoutView.GetLayoutStrategy().SetRandomSeed(0)

# Sets up the interaction widets/event_listeners
graphLayoutView.GetInteractor().Start()
