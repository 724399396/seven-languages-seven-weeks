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