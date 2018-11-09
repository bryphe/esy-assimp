#include <stdio.h>

#include <assimp/Importer.hpp>
#include <assimp/scene.h>
#include <assimp/postprocess.h>

int main() {
    Assimp::Importer import;
    const aiScene *scene = import.ReadFile("non-existent-file", aiProcess_Triangulate | aiProcess_FlipUVs);
    return 0;
}
