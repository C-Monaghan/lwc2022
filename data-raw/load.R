## code to prepare `cog_data` dataset goes here
set.seed(123)

# Simulated dataset
generate_example_data <- function(n = 10) {
  data.frame(
    # Identifiers
    HHID = sample(100000:999999, n, replace = TRUE),   # Random household ID
    PN = sample(1:99, n, replace = TRUE),              # Random person number

    # THESE ARE THE VARIABLES USED IN THE LW CLASSIFICATIONS
    # Immediate word recall (10 items)
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

    # Delayed word recall (10 items)
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
    SD129 = sample(0:1, n, replace = TRUE),  # Success on second try (1 = success, 0 = fail)

    # RANDOM VARIABLES NOT USED IN LW CLASSIFICATIONS
    # Speed Test (Mouse clicking)
    SD237WA = sample(c(0, 1, -8, -9), n, replace = TRUE),
    SD237WC = sample(c(1:20), n, replace = TRUE),
    SD237WT = sample(c(1:60), n, replace = TRUE),
    SD238WA = sample(c(0, 1, -8, -9), n, replace = TRUE),
    SD238WC = sample(c(1:20), n, replace = TRUE),
    SD238WT = sample(c(1:60), n, replace = TRUE)
  )
}

# Generate a dataset of 10 observations
cog_data <- generate_example_data()

# Scoring dataset
cog_data_score <- cog_data |>
  lwc2022::extract() |>
  lwc2022::score()

# Use these as example dataset
usethis::use_data(cog_data, overwrite = TRUE)
usethis::use_data(cog_data_score, overwrite = TRUE)
