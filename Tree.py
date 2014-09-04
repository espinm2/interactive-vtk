#!/usr/bin/env python
 
import vtk
 
g = vtk.vtkTree()
 
# Create 10 vertices
verts = [g.AddVertex() for i in range(0, 10)]
 
# Create a tree
g.AddGraphEdge(6, 8)
g.AddGraphEdge(0, 6)
g.AddGraphEdge(2, 6)
g.AddGraphEdge(1, 3)
g.AddGraphEdge(3, 5)
g.AddGraphEdge(5, 9)
g.AddGraphEdge(8, 9)
 
graphLayoutView = vtk.vtkGraphLayoutView()
graphLayoutView.AddRepresentationFromInput(g)
graphLayoutView.SetLayoutStrategy("Simple Tree")
graphLayoutView.ResetCamera()
graphLayoutView.Render()
 
graphLayoutView.GetLayoutStrategy().SetRandomSeed(0)
 
graphLayoutView.GetInteractor().Start()
