import gurobi as gb
import numpy as np
from gurobipy import *

# Problem data

costs = [[None,100,140,115,130,140,135],
        [None,None,105,140,110,125,130],
        [None,None,None,130,145,160,150],
        [None,None,None,None,135,150,105],
        [None,None,None,None,None,120,165],
        [None,None,None,None,None,None,130]]

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


# Connectivity Variable
y_t = {}


for t in T:
    for i in range(n):
        for j in range(i+1,n):
            y_t[t-1,i,j] = model.addVar(obj= (revt[t-1][i][j]-costs[i][j]), name='connected in year '+ str(t)+ ' between ' +str(i)+' and '+str(j))
            y_t[t-1,j,i] = y_t[t-1,i,j] 
            y_t[t-1,i,i] = model.addVar(obj= (revt[t-1][i][j]-costs[i][j]), name='connected in year '+ str(t)+ ' between ' +str(i)+' and '+str(i))
y_t[0,6,6] =  model.addVar(obj= (revt[0][5][6]-costs[5][6]), name='connected in year '+ str(1)+ ' between ' +str(6)+' and '+str(6))
y_t[1,6,6] =  model.addVar(obj= (revt[1][5][6]-costs[5][6]), name='connected in year '+ str(2)+ ' between ' +str(6)+' and '+str(6))


# Linked Variable
x = {}
for t in T:    
    for i in range(n):
        for j in range(i+1,n):
            if(t == 2):
                cost = costs[i][j]
            else:
                cost = 0
            x[t-1,i,j] = model.addVar(obj= (-cost), name='Linked in year '+ str(t)+ ' between ' +str(i)+' and '+str(j))
            x[t-1,j,i] = x[t-1,i,j] 
            x[t-1,i,i] = model.addVar(obj= (-cost), name='Linked in year '+ str(t)+ ' between ' +str(i)+' and '+str(i))
x[0,6,6] =  model.addVar(obj= (0), name='Linked in year '+ str(1)+ ' between ' +str(6)+' and '+str(6))
x[1,6,6] =  model.addVar(obj= (-costs[5][6]), name='Linked in year '+ str(2)+ ' between ' +str(6)+' and '+str(6))

model.update()

# Constraints
for i in range(n):
    for j in range(n):
        model.addConstr(x[0,i,j] <= x[1,i,j], "Existent link continuity")

model.addConstrs((y_t[1,i,j] == 1 for i in range(n)
                              for j in range(n)
                              if i != j), name='Connectivity at the end')
    
model.addConstr(2+20*quicksum((y_t[0,i,j] for i in range(n) for j in range(n)))+49<= 0, "Ring network 1")
model.addConstr(20*quicksum(y_t[0,i,j] for i in range(n) for j in range(n)) <= 0, 'Ring network 2')


for i in range(n):
    for j in range(n):
        model.addConstrs(x[t-1,i,j] <= y_t[t-1,i,j] for t in T)

model.addConstrs(y_t[t-1,i,i] == 1 for i  in range(n) for t in T)
model.addConstrs(x[t-1,i,i] == 1 for i  in range(n) for t in T)

model.addConstr(20*quicksum(y_t[0,i,j] for i in range(n) for j in range(n)) <= 0, 'Ring network 2')
for i in range(n):
    for j in range(n):
        for k in range(n):
            model.addConstrs(y_t[t-1,i,j] + y_t[t-1,j,k] - 1 <= y_t [t-1,i,k] for t in T

model.update()

# Objective
model

# Optimization
model.optimize()

