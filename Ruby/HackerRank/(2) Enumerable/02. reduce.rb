def sum_terms(n)
    (1..n).inject(0) {|sum, n| sum +(n*n+1)}
end
