import numpy as np

points_3D = np.array([
    [0,0,10],
    [6,0,10],
    [0,4,10],
    [6,4,10]
])

points_2D = np.array([
    [0,0],
    [1.2,0],
    [0,0.8],
    [1.2,0.8]
])

A = []

for i in range(len(points_3D)):
    X, Y, Z = points_3D[i]
    x, y = points_2D[i]

    A.append([X,Y,Z,1,0,0,0,0,-x*X,-x*Y,-x*Z,-x])
    A.append([0,0,0,0,X,Y,Z,1,-y*X,-y*Y,-y*Z,-y])

A = np.array(A)

U, S, Vt = np.linalg.svd(A)
P = Vt[-1].reshape(3,4)

print("Projection matrix:")
print(P)
