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

# Get the points
points = g.GetPoints()

y = 0
for v in verts:
    points.SetPoint(v,(-5,y,0))
    y+=2

y = 0
for v in verts2:
    points.SetPoint(v,(5,y,0))
    y+=2

graphLayoutView = vtk.vtkGraphLayoutView()
graphLayoutView.AddRepresentationFromInput(g)

#layoutStrat = vtk.vtkClustering2DLayoutStrategy()

graphLayoutView.SetLayoutStrategy("Pass Through")
graphLayoutView.ColorVerticesOn()
graphLayoutView.ResetCamera()
graphLayoutView.Render()

graphLayoutView.GetInteractor().Start()
