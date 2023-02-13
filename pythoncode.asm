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
    file.seek(100 * i)
    result = file.read(100)
 
 #Write to file
 with open("file2.txt", "w") as file:
  for i in range(1000000000):
    file.seek(100 * i)
    file.write(result)
 
 hard_drive_1_time = time.time() - start_time
 
 #Hard drive benchmark 2
 start_time = time.time()
 
 #Read from file
 with open("file3.txt", "r") as file:
 for i in range(1000000000):
  file.seek(10000 * i)
  result = file.read(10000)

#Write to file
with open("file4.txt", "w") as file:
  for i in range(1000000000):
    file.seek(10000 * i)
    file.write(result)

hard_drive_2_time = time.time() - start_time

#Output results
print("32-bit Integer operation benchmark time:", integer_time)
print("64-bit Floating point operation benchmark time:", floating_point_time)
print("Memory benchmark time:", memory_time)
print("Hard drive benchmark 1 time:", hard_drive_1_time)
print("Hard drive benchmark 2 time:", hard_drive_2_time)
