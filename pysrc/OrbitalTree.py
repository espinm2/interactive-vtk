#!/usr/bin/env python

import vtk, random

g = vtk.vtkMutableDirectedGraph()
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

tree = vtk.vtkTree()
success = tree.CheckedShallowCopy(g)

print("Success? " + str(success))

graphLayoutView = vtk.vtkGraphLayoutView()
graphLayoutView.AddRepresentationFromInput(tree)

treeStrategy = vtk.vtkTreeOrbitLayoutStrategy()

graphLayoutView.SetLayoutStrategyToCosmicTree()
graphLayoutView.ResetCamera()
graphLayoutView.Render()

#graphLayoutView.GetLayoutStrategy().SetRandomSeed(0)

graphLayoutView.GetInteractor().Start()
