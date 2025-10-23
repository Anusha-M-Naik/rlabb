"Enter the starting range:"
start <- scan(nlines=1)
"Enter the ending range:"
end <- scan(nlines=1)

sum_even <- sum(seq(start, end)[seq(start, end) %% 2 == 0])
print(sum_even)
