import numpy as np
import matplotlib.pyplot as plt

path = np.loadtxt('rrt_connect_path.txt', delimiter = ' ')
ob = np.loadtxt('rrt_connect_ob.txt', delimiter = ' ')
print(path.shape)
plt.plot(path[:, 0], path[:, 1], '*')
plt.plot(ob[:, 0], ob[:, 1], 'r')
plt.axis('equal')
plt.show()
