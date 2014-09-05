#!/usr/bin/env python

import vtk

g = vtk.vtkMutableDirectedGraph()

# Create 2 lists of 10 vertices
verts =  [g.AddVertex() for i in range(0, 10)]
verts2 = [g.AddVertex() for i in range(0, 10)]

#set the edges
edges = zip(verts[::2] * 2, verts2) +\
    zip(verts, verts2) + \
    zip(verts[::5] * 5, verts2) + \
    zip(list(verts[::3] * 3)[:len(verts2)], verts2)
map(lambda x: g.AddGraphEdge(*x), edges)

graphLayoutView = vtk.vtkGraphLayoutView()
graphLayoutView.AddRepresentationFromInput(g)

layoutStrat = vtk.vtkForceDirectedLayoutStrategy()

graphLayoutView.SetLayoutStrategy(layoutStrat)
graphLayoutView.ResetCamera()
graphLayoutView.Render()

graphLayoutView.GetInteractor().Start()
