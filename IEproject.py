import gurobi as gb
import numpy as np
from gurobipy import *


# Check for symmetry afterwards
# Problem data

costs = [
		[None,100,140,115,130,140,135],
        [None,None,105,140,110,125,130],
        [None,None,None,130,145,160,150],
        [None,None,None,None,135,150,105],
        [None,None,None,None,None,120,165],
        [None,None,None,None,None,None,130]
        ]

# Revenues for the first year rev[[t][i][j]]
revt =  [[[None,30,20,35,25,18,30],
        [None,None,28,22,25,35,45],
        [None,None,None,32,36,20,40],
        [None,None,None,None,35,25,38],
        [None,None,None,None,None,30,40],
        [None,None,None,None,None,None,30]],# Revenues for the second year
        [[None,24,16,28,20,15,24],
        [None,None,23,18,20,28,36],
        [None,None,None,25,28,26,32],
        [None,None,None,None,28,20,31],
        [None,None,None,None,None,24,32],
        [None,None,None,None,None,None,24]]]

# years
T = [1,2]

# Cities
nodes = [1, 2, 3, 4, 5, 6, 7]
n = len(nodes)

model = gb.Model('City Linking')

# Maximization or minimization
model.modelSense = GRB.MAXIMIZE


# Connectivity Variable nodes are connected at the end of year t.
y_t = {}

for t in T:
    for i in range(n-1):    
        for j in range(i+1,n):
            y_t[t-1,i,j] = model.addVar(obj= (revt[t-1][i][j]), name='conn. in y'+ str(t)+ ' between ' +str(i)+' and '+str(j))

# Linked Variable, built in year t
x = {}
for t in T:    
    for i in range(n-1):
        for j in range(i+1,n):
            x[t-1,i,j] = model.addVar(obj= (-costs[i][j]), name='Linked in year '+ str(t)+ ' between ' +str(i)+' and '+str(j))

model.update()

# Constraints
for i in range(n):
    for j in range(i+1, n):
            print("i: ", x[0,i,j], " - j: ", x[1,i,j])
            model.addConstr(x[0,i,j] + x[1,i,j] <= 1, "A link can not be built in 2 years")


model.addConstrs((y_t[1,i,j] + y_t[0,i,j] >= 1 for i in range(n)
                                          for j in range(i+1, n)), name='Connectivity at the end')
   

# Check ring network constraints
model.addConstr(2 - 20*(49 - quicksum(y_t[0,i,j] for i in range(n) for j in range(i+1, n))) <= 0, "Ring network 1")
model.addConstr(20*quicksum(y_t[0,i,j] for i in range(n) for j in range(i+1, n)) <= 0, 'Ring network 2')


for i in range(n):
    for j in range(i+1, n):
        model.addConstrs((x[t-1,i,j] <= y_t[t-1,i,j] for t in T), 'link implies Connectivity')

for i in range(n):
    for j in range(i+1, n):
        for k in range(j+1, n):
            model.addConstrs((y_t[t-1,i,j] + y_t[t-1,j,k] - 1 <= y_t [t-1,i,k] for t in T), 'connector')

model.update()
model.write("file.lp")

# Objective

# Optimization
model.optimize()

