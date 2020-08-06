import math

def fun1(a):
    b=[]
    for s in a:
        if(s[len(s)-1].isdigit()):
            b.append(s)
    return b

def fun2(n):
    n=n+int(str(n)[::-1])
    if n==int(str(n)[::-1]):
        return 1
    return fun2(n)+1

def fun3(a):
    min=fun2(a[0])
    for x in a:
        z=fun2(x)
        if z<min:
            min=z
    return min

def fun4(a):
    count=0
    for x in a:
        if type(x)==type(1):
                count=count+1
        elif type(x)==type([]):
            count=count+fun4(x)
    return count

def fun5(a):
    return a[1:len(a):2]

print(fun1(["good1", "cat", "bad", "cat2", "good", "dog"]))
print()

print(fun2(195))
print()

print(fun3([195, 265, 750]))
print()

print(fun4 ([1, ['A', [2]], 'B', 3, 'C', [4, ['D', 5]]]))
print()

print(fun5(['A', ['A', 'B'], 'C', 'D', ['A', 'B']]))

class rightTriangle:
    
    def __init__(self, s1, s2):
        self.side1=s1
        self.side2=s2
    
    def getSide3(self):
        return math.sqrt((self.side1**2)+(self.side2**2))
    
    def area(self):
        return (self.side1 * self.side2)/2

t1= rightTriangle(3,4)
print("Hypotenuse= " + str(t1.getSide3()))
print("Area of triange= " + str(t1.area()))


