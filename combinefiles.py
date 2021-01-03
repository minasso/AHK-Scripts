from glob import glob

g= glob('*works*')
for item in g:
    print(item)

with open('works.ahk', 'a') as wf:
    for file in g:
        with open(file, 'r') as rf:
            wf.write(rf.read())
            wf.write('\n')