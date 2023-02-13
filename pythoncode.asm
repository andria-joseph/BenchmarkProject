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

#Memory benchmark
start_time = time.time()

#Read from array elements
array = np.random.randint(0, 100, 5000000000)
for i in range(5000000000):
  result = array[i]

#Write to array elements
for i in range(5000000000):
  array[i] = result
  
memory_time = time.time() - start_time

#Read from file 
with open("file1.txt", "r") as file:
  for i in range(1000000000):
    file.seek(100 * 1)
    result = file.read(100)
 
 #Write to file
 with open("file2.txt", "w") as file:
  for i in range(1000000000):
    file.seek(100 * i)
    file.write(result)
 
 hard_drive_1_time = time.time() - start_time
 
 #Hard drive benchmark 2
