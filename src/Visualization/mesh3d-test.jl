using Plots

plotlyjs()

x=[-1, -1, 1, 1, -1, -1, 1, 1]
y=[-1, 1, 1, -1, -1, 1, 1, -1]
z=[-1, -1, -1, -1, 1, 1, 1, 1]

i= [7, 0, 0, 0, 4, 4, 6, 1, 4, 0, 3, 6]
j= [3, 4, 1, 2, 5, 6, 5, 2, 0, 1, 6, 3]
k= [0, 7, 2, 3, 6, 7, 1, 6, 5, 5, 7, 2]

fig1 = scatter(x, y, z; xlabel = "x", ylabel = "y", zlabel = "z", legend = :none, margin = 2 * Plots.mm, framestyle = :grid)
display(fig1)

fig2 = mesh3d(x, y, z; connections = (i, j, k), xlabel = "x", ylabel = "y", zlabel = "z", legend = :none, margin = 2 * Plots.mm, framestyle = :none)
display(fig2)
