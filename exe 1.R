num <- as.integer(readline(prompt = "Enter a number: "))

is_prime <- TRUE

if (num <= 1) {
  is_prime <- FALSE  
} else {
  for (i in 2:(num - 1)) {
    if (num %% i == 0) {
      is_prime <- FALSE
      break  
    }
  }
}


if (is_prime) {
  cat(num, "is a prime number.\n")
} else {
  cat(num, "is not a prime number.\n")
}
