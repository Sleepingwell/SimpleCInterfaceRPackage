dotproduct <- function(x, y) {
    stopifnot(length(x) == length(y))
    R <- sum(x*y)
    dotC <- .C(dotproduct_dot_c, as.double(x), as.double(y), as.integer(length(x)), double(1))[[4]]
    dotCall <- .Call(dotproduct_dot_call, x, y)
    dotExternal <- .External(dotproduct_dot_external, x, y)
    list(dotC=dotC, dotCall=dotCall, dotExternal=dotExternal)
}
