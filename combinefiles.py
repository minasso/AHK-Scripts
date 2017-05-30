import os
from glob import glob

print(os.getcwd())

g= glob('*works*')
for item in g:
    print(item)

with open('works.ahk', 'a') as wf:
    for file in g:
        with open(file, 'r') as rf:
            wf.write(rf.read())
            wf.write('\n')