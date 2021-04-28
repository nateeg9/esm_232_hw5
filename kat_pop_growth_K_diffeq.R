#'  Kat population growth w/ carrying capacity as a diff eq
#' @param P0 initial population
#' @param r intrinsic growth rate
#' @param K maximum pop (carrying capacity)
#' @return instantaneous change in population (growth/decline)
#' @param T  period of growth (years)
#'
kat_pop_growth_K_diffeq = function(T, P0,parms=c(r, K)) {
  # calculation of instantaneous change in population
    dPdT = r*P0*(1-P0/K)
  # check to see if greater than carrying capacity
    if (P0 > K) {
      P0 = K
    }
  # return the instantaneous change
    return(list(dPdT))
}


