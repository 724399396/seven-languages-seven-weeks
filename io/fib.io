fib := method(num, 
    if(num < 2, 
        1, 
        fib(num - 1) + fib(num - 2))
    )

fib(6) println

loopfib := method(n,
    if (n < 2,
        1,
        n_1 := 1
        n_2 := 1
        sum := 2
        for(i, 2, n,
          sum := n_1 + n_2
          n_2 = n_1
          n_1 = sum
        )
        sum
    )
)

loopfib(6) println

oldDiv := Number getSlot("/")
Number / := method(n, if(n == 0,
                         0,
                         oldDiv(n)))

List sum2d := method(reduce(accum, line, accum+line sum, 0))

x := list (list (1,2,3),
           list (4,5,6),
           list (7,8,9))
x sum2d println

List myAverage := method(sum/size)
list(1,2,3) myAverage println

List2D := List clone
dim := method(x,y, List2D clone setSize(y) mapInPlace(_, List clone setSize(x)))

dim(5,2) println

List2D set := method(x,y,value, atPut(x, at(x) atPut(y,value)))

dim(5,2) set(1,1,100) println

List2D get := method(x,y, at(x) at(y))

dim(5,2) set(1,1,100) get(1,1) println

List2D transpose := method(clone)

l := dim(2,2)
l set(0,0,1)
l set(1,0,2)
l set(0,1,3)
l set(1,1,4)
l println
l transpose println

List2D serializeTo := method(path, File open(path) write(serialized) close)
List2D serializeFrom := method(path, with(doFile(path)))

l serializeTo("list.io")
m := List2D serializeFrom("list.io")

l println
m println