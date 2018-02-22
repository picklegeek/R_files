rep_sample_n <- function(tbl, size, replace = FALSE, reps = 1)
{
    n <- nrow(tbl)
    i <- unlist(replicate(reps, sample.int(n, size, replace = replace), simplify = FALSE))

    rep_tbl <- cbind(replicate = rep(1:reps,rep(size,reps)), tbl[i, , drop=FALSE])

    dplyr::group_by(rep_tbl, replicate)
}
library(tidyverse)
titanic_data <- read.csv("train.csv")
titanic_sex_survived <- titanic_data %>%
rep_sample_n(size= nrow(titanic_data),reps = 1000) %>%
mutate(survive_perm = sample(Survived)) %>%
group_by(replicate,Sex) %>%
summarize(prop_perm = mean(survive_perm), prop = mean(Survived)) %>%
summarize(diff_perm = diff(prop_perm), diff_orig = diff(prop))
