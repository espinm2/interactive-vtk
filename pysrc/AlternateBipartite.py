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
pstart = list(points.GetPoint(start))
pend = list(points.GetPoint(end))

p1_p = [[1.0] + list(pt[1:]) for pt in p1]
p2_p = [[5.0] + list(pt[1:]) for pt in p2]

map(lambda (v, pt): points.SetPoint(v, pt), zip(verts, p1_p))
map(lambda (v, pt): points.SetPoint(v, pt), zip(verts2, p2_p))
pstart[0] = 0.5
pend[0] = 5.5
points.SetPoint(start, pstart)
points.SetPoint(end, pend)

print(str([points.GetPoint(v) for v in verts] + [points.GetPoint(v) for v in verts2]))

graphLayoutView = vtk.vtkGraphLayoutView()
graphLayoutView.AddRepresentationFromInput(g)

#layoutStrat = vtk.vtkClustering2DLayoutStrategy()
layoutStrat = vtk.vtkPassThroughLayoutStrategy()
#layoutStrat = vtk.vtkForceDirectedLayoutStrategy()

graphLayoutView.SetLayoutStrategy(layoutStrat)
graphLayoutView.ColorVerticesOn()
graphLayoutView.ResetCamera()
graphLayoutView.Render()

graphLayoutView.GetInteractor().Start()
