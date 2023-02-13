import time
import numpy as np

#32 bit integer operation benchmark
start_time = time.time()

#Addition
result = 0
for i in range(10):
  result += 1

#Multiplication
for i in range(5000000000):
  result = result * i
  
#Divison
for i in range(2000000000):
  result  = result/i
  
floating_point_time = time.time() - start_time
