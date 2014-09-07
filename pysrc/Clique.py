#!/usr/bin/env python

'''
Online example from :
http://www.vtk.org/Wiki/VTK/Examples/Python/Graphs/EdgeWeights

Going to heavly comment out the steps to understand how to edit
this into what we need to make other graphs
''' 

import vtk  							# Manditory on all python VTK
 

g = vtk.vtkMutableUndirectedGraph() 	 	# Sets up empty data structure
 
# Create 3 vertices						# Adding nodes to your graph
v1 = g.AddVertex()
v2 = g.AddVertex()
v3 = g.AddVertex()
v4 = g.AddVertex()
v5 = g.AddVertex()
v6 = g.AddVertex()
 
# Create a fully connected graph 		# Adding in the edges between them

g.AddGraphEdge(v1, v2)
g.AddGraphEdge(v1, v5)
g.AddGraphEdge(v5, v2)


g.AddGraphEdge(v4, v5)
g.AddGraphEdge(v4, v3)
g.AddGraphEdge(v2, v3)

g.AddGraphEdge(v4, v6)
 
'''
# Create the edge weight array
weights = vtk.vtkDoubleArray() 			# This is VTK version of an array of data, 
										# in this case weights

weights.SetNumberOfComponents(1) 		# Since we are just doing weights it 1 dimensional
weights.SetName("Weights")				# Creates an name to recover later with
 
# Set the edge weights
weights.InsertNextValue(1.0)			# You can use insert to push in the values
weights.InsertNextValue(1.0)			# Note you didn't specific the size of this array
weights.InsertNextValue(2.0) 			# SetNumberOfTuples
 
# Add the edge weight array to the graph
g.GetEdgeData().AddArray(weights);

'''

# Making the layout view
# Which is an awsome class that handles a lot of the backend
# stuff for interaction with the graph we are about to make
graphLayoutView = vtk.vtkGraphLayoutView()

# Toss in your graph into this view
graphLayoutView.AddRepresentationFromInput(g)

# General Set Up Stuff
graphLayoutView.SetLayoutStrategy("Simple 2D")
'''
graphLayoutView.GetLayoutStrategy().SetEdgeWeightField("Weights")
graphLayoutView.GetLayoutStrategy().SetWeightEdges(1)
graphLayoutView.SetEdgeLabelArrayName("Weights")
graphLayoutView.SetEdgeLabelVisibility(1)
'''

# Recenters the camera around our points
graphLayoutView.ResetCamera()

# Opens and renders the window
graphLayoutView.Render()
 
# I have no idea what the hell this does
graphLayoutView.GetLayoutStrategy().SetRandomSeed(0)
 
# Sets up the interaction widets/event_listeners
graphLayoutView.GetInteractor().Start()