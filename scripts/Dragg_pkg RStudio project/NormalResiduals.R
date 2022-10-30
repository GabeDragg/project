crab_stats <- function(crabs){
  fit_crabs <- lm(body_depth ~ carapce_length, data = crabs)
  broom::augment(fit_crabs) -> aug_fit_crabs
  qqnorm(aug_fit_crabs$.resid)
  qqline(aug_fit_crabs$.resid, col = "red")
}

This function will check the assumption of normal residuals with the idea that carapace length predicts the body depth of the crab.