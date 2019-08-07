def recursive_fib(n)
    if n < 2
        n
    else
        recursive_fib(n - 1) + recursive_fib(n - 2)
    end
end

def iterative_fib(n)
    a = 0
    b = 1

    n.times do
        zero = a
        a = b
        b = zero + b
    end
    puts a

end

require 'benchmark'
num = 35
Benchmark.bm do |x|
  x.report("recursive_fib") { recursive_fib(num) }
  x.report("iterative_fib")  { iterative_fib(num)  }
end

#                 user      system      total       real
#recursive_fib  0.624046   0.001311   0.625357   (0.625553)
#iterative_fib  0.000029   0.000001   0.000030   (0.000045)
# Iterative is a lot faster.