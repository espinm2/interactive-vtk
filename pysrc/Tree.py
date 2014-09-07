#!/usr/bin/env python

import vtk

g = vtk.vtkMutableDirectedGraph()

# Create 10 vertices
verts = [g.AddVertex() for i in range(0, 10)]
#v1 = g.AddVertex()
#v2 = g.AddVertex()
#
#g.AddGraphEdge(v1, v2)

# Create a tree
g.AddGraphEdge(verts[1], verts[0])
g.AddGraphEdge(verts[3], verts[1])
g.AddGraphEdge(verts[5], verts[1])
g.AddGraphEdge(verts[7], verts[5])
g.AddGraphEdge(verts[9], verts[5])
g.AddGraphEdge(verts[2], verts[0])
g.AddGraphEdge(verts[4], verts[2])
g.AddGraphEdge(verts[6], verts[2])
g.AddGraphEdge(verts[8], verts[4])
#g.AddGraphEdge(verts[4], verts[8])
#g.AddGraphEdge(verts[6], verts[8])
#g.AddGraphEdge(verts[0], verts[6])
#g.AddGraphEdge(verts[2], verts[6])
#g.AddGraphEdge(verts[1], verts[3])
#g.AddGraphEdge(verts[3], verts[5])
#g.AddGraphEdge(verts[5], verts[9])
#g.AddGraphEdge(verts[7], verts[9])
#g.AddGraphEdge(verts[8], verts[9])

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
