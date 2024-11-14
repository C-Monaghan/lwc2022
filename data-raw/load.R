## code to prepare `cog_data` dataset goes here
set.seed(123)

# Simulated dataset
generate_example_data <- function(n = 100) {
  data.frame(
    # Identifiers
    HHID = sample(100000:999999, n, replace = TRUE),   # Random household ID
    PN = sample(1:99, n, replace = TRUE),              # Random person number

    # Immediate word recall (5 items)
    SD182M1 = sample(c(1:40, 51:67, 96, 98, 99), n, replace = TRUE),
    SD182M2 = sample(c(1:40, 51:67, 96, 98, 99), n, replace = TRUE),
    SD182M3 = sample(c(1:40, 51:67, 96, 98, 99), n, replace = TRUE),
    SD182M4 = sample(c(1:40, 51:67, 96, 98, 99), n, replace = TRUE),
    SD182M5 = sample(c(1:40, 51:67, 96, 98, 99), n, replace = TRUE),
    SD182M6 = sample(c(1:40, 51:67, 96, 98, 99), n, replace = TRUE),
    SD182M7 = sample(c(1:40, 51:67, 96, 98, 99), n, replace = TRUE),
    SD182M8 = sample(c(1:40, 51:67, 96, 98, 99), n, replace = TRUE),
    SD182M9 = sample(c(1:40, 51:67, 96, 98, 99), n, replace = TRUE),
    SD182M10 = sample(c(1:40, 51:67, 96, 98, 99), n, replace = TRUE),

    # Delayed word recall (5 items)
    SD183M1 = sample(c(1:40, 51:67, 96, 98, 99), n, replace = TRUE),
    SD183M2 = sample(c(1:40, 51:67, 96, 98, 99), n, replace = TRUE),
    SD183M3 = sample(c(1:40, 51:67, 96, 98, 99), n, replace = TRUE),
    SD183M4 = sample(c(1:40, 51:67, 96, 98, 99), n, replace = TRUE),
    SD183M5 = sample(c(1:40, 51:67, 96, 98, 99), n, replace = TRUE),
    SD183M6 = sample(c(1:40, 51:67, 96, 98, 99), n, replace = TRUE),
    SD183M7 = sample(c(1:40, 51:67, 96, 98, 99), n, replace = TRUE),
    SD183M8 = sample(c(1:40, 51:67, 96, 98, 99), n, replace = TRUE),
    SD183M9 = sample(c(1:40, 51:67, 96, 98, 99), n, replace = TRUE),
    SD183M10 = sample(c(1:40, 51:67, 96, 98, 99), n, replace = TRUE),

    # Serial subtraction (Subtracting 7 from 100 five times)
    SD142 = sample(90:100, n, replace = TRUE),  # First subtraction value
    SD143 = sample(80:99, n, replace = TRUE),   # Second subtraction
    SD144 = sample(70:89, n, replace = TRUE),   # Third subtraction
    SD145 = sample(60:79, n, replace = TRUE),   # Fourth subtraction
    SD146 = sample(50:69, n, replace = TRUE),   # Fifth subtraction

    # Backwards counting
    SD124 = sample(0:1, n, replace = TRUE),  # Success on first try (1 = success, 0 = fail)
    SD129 = sample(0:1, n, replace = TRUE)   # Success on second try (1 = success, 0 = fail)
  )
}

# Generate a dataset of 10 observations
cog_data <- generate_example_data(n = 10)

# Scoring dataset
cog_data_score <- lwc2022::score(cog_data)

# Use these as example dataset
usethis::use_data(cog_data, overwrite = TRUE)
usethis::use_data(cog_data_score, overwrite = TRUE)
