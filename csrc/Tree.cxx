#include <vtkSmartPointer.h>
#include <vtkGraphLayoutView.h>
#include <vtkMutableDirectedGraph.h>
#include <vtkRenderWindowInteractor.h>
#include <vtkTree.h>

#include <vector>
#include <iostream>

int main(int argc, char* argv[]) {
    // smart pointer to the directed graph
    vtkSmartPointer<vtkMutableDirectedGraph> g =
        vtkSmartPointer<vtkMutableDirectedGraph>::New();

    // create a vector of vertices
    std::vector<vtkIdType> verts;
    // Create 10 vertices
    for (int i = 0; i < 10; ++i) {
        verts.push_back(g->AddVertex());
    }

    // Create a tree
    g->AddGraphEdge(verts[4], verts[8]);
    g->AddGraphEdge(verts[6], verts[8]);
    g->AddGraphEdge(verts[0], verts[6]);
    g->AddGraphEdge(verts[2], verts[6]);
    g->AddGraphEdge(verts[1], verts[3]);
    g->AddGraphEdge(verts[3], verts[5]);
    g->AddGraphEdge(verts[5], verts[9]);
    g->AddGraphEdge(verts[7], verts[9]);
    g->AddGraphEdge(verts[8], verts[9]);

    // create a tree from the graph
    vtkSmartPointer<vtkTree> tree = 
        vtkSmartPointer<vtkTree>::New();
    bool success = tree->CheckedShallowCopy(g);
    std::cout << "Success? " << success << std::endl;

    // set up the layout and draw
    vtkSmartPointer<vtkGraphLayoutView> layout = 
        vtkSmartPointer<vtkGraphLayoutView>::New();
    layout->AddRepresentationFromInput(tree);
    layout->SetLayoutStrategyToTree();
    layout->ResetCamera();
    layout->Render();

    layout->GetInteractor()->Start();

    return EXIT_SUCCESS;
}
