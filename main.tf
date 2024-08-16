terraform {
  required_version = "~1.8.3"
}

provider random {}

resource random_integer example {
  min = 1
  max = 100
}

output random_number {
  value = random_integer.example.result
}
