#!/usr/bin/env python

import vtk

g = vtk.vtkMutableDirectedGraph()

# Create 2 lists of 10 vertices
start = g.AddVertex()
end = g.AddVertex()
verts =  [g.AddVertex() for i in range(0, 10)]
verts2 = [g.AddVertex() for i in range(0, 10)]

#set the edges
edges = zip([start] * len(verts), verts) +\
    zip([end] * len(verts2), verts2) +\
    zip(verts[::2] * 2, verts2) +\
    zip(verts, verts2) + \
    zip(verts[::5] * 5, verts2) + \
    zip(list(verts[::3] * 3)[:len(verts2)], verts2)
map(lambda x: g.AddGraphEdge(*x), edges)

points = g.GetPoints()
p1 = [points.GetPoint(v) for v in verts]
p2 = [points.GetPoint(v) for v in verts2]
pstart = points.GetPoint(start)
pend = points.GetPoint(end)

print(str(p1))

graphLayoutView = vtk.vtkGraphLayoutView()
graphLayoutView.AddRepresentationFromInput(g)

#layoutStrat = vtk.vtkClustering2DLayoutStrategy()
layoutStrat = vtk.vtkClustering2DLayoutStrategy()

graphLayoutView.SetLayoutStrategy(layoutStrat)
graphLayoutView.ColorVerticesOn()
graphLayoutView.ResetCamera()
graphLayoutView.Render()

graphLayoutView.GetInteractor().Start()
