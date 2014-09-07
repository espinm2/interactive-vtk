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

## Create 10 vertices
#verts = [g.AddVertex() for i in range(0, 10)]
##v1 = g.AddVertex()
##v2 = g.AddVertex()
##
##g.AddGraphEdge(v1, v2)
#
## Create a tree
#g.AddGraphEdge(verts[1], verts[0])
#g.AddGraphEdge(verts[3], verts[1])
#g.AddGraphEdge(verts[5], verts[1])
#g.AddGraphEdge(verts[7], verts[5])
#g.AddGraphEdge(verts[9], verts[5])
#g.AddGraphEdge(verts[2], verts[0])
#g.AddGraphEdge(verts[4], verts[2])
#g.AddGraphEdge(verts[6], verts[2])
#g.AddGraphEdge(verts[8], verts[4])
##g.AddGraphEdge(verts[4], verts[8])
##g.AddGraphEdge(verts[6], verts[8])
##g.AddGraphEdge(verts[0], verts[6])
##g.AddGraphEdge(verts[2], verts[6])
##g.AddGraphEdge(verts[1], verts[3])
##g.AddGraphEdge(verts[3], verts[5])
##g.AddGraphEdge(verts[5], verts[9])
##g.AddGraphEdge(verts[7], verts[9])
##g.AddGraphEdge(verts[8], verts[9])

tree = vtk.vtkTree()
success = tree.CheckedShallowCopy(g)

print("Success? " + str(success))

graphLayoutView = vtk.vtkGraphLayoutView()
graphLayoutView.AddRepresentationFromInput(tree)

treeStrategy = vtk.vtkTreeLayoutStrategy()

graphLayoutView.SetLayoutStrategy(treeStrategy)
graphLayoutView.ResetCamera()
graphLayoutView.Render()

#graphLayoutView.GetLayoutStrategy().SetRandomSeed(0)

graphLayoutView.GetInteractor().Start()
