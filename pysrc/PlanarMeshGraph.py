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



# Randomly Pick a Termination number
total_nodes = 20
created_nodes = 0

# Create simple triangle
v1 = g.AddVertex()
v2 = g.AddVertex()
v3 = g.AddVertex()

g.AddGraphEdge(v1,v2)
g.AddGraphEdge(v2,v3)
g.AddGraphEdge(v1,v3)


# Create this list of leaves + append inital
edge_list = []
edge_list.append((v1,v2))
edge_list.append((v2,v3))
edge_list.append((v1,v3))

# While don't exede the limit + run out of leafs
while(created_nodes < total_nodes and len(edge_list) != 0):

	# Get the current leaf, oldest
	print(edge_list)
	cur_edge = edge_list.pop(0)

	# Generate a new child
	child = g.AddVertex()
	created_nodes+=1

	# Connect that child to source and terminal of cur_edge
	edge1 = g.AddGraphEdge(child, cur_edge[0])
	edge2 = g.AddGraphEdge(child, cur_edge[1])

	edge_list.append((child,cur_edge[0]))
	edge_list.append((child,cur_edge[1]))



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
graphLayoutView.Render()

# I have no idea what the hell this does
graphLayoutView.GetLayoutStrategy().SetRandomSeed(0)

# Sets up the interaction widets/event_listeners
graphLayoutView.GetInteractor().Start()
