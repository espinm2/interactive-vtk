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

# Create a list of 1000 Vertexs
vertex_list = []
for i in range(1000):
	vertex_list.append(g.AddVertex())

# Create a fully connected graph 		# Adding in the edges between them
for i in range(1000):
	while(True):
		v1 = random.choice(vertex_list)
		v2 = random.choice(vertex_list)
		if(v1 != v2):
			g.AddGraphEdge(v1,v2)
			break

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