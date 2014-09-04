#!/usr/bin/env python
 
import vtk
 
g = vtk.vtkTree()
 
# Create 10 vertices
verts = [g.AddVertex() for i in range(0, 10)]
 
# Create a tree
g.AddGraphEdge(verts[6], verts[8])
g.AddGraphEdge(verts[0], verts[6])
g.AddGraphEdge(verts[2], verts[6])
g.AddGraphEdge(verts[1], verts[3])
g.AddGraphEdge(verts[3], verts[5])
g.AddGraphEdge(verts[5], verts[9])
g.AddGraphEdge(verts[8], verts[9])
 
graphLayoutView = vtk.vtkGraphLayoutView()
graphLayoutView.AddRepresentationFromInput(g)
graphLayoutView.SetLayoutStrategy("Simple Tree")
graphLayoutView.ResetCamera()
graphLayoutView.Render()
 
graphLayoutView.GetLayoutStrategy().SetRandomSeed(0)
 
graphLayoutView.GetInteractor().Start()
