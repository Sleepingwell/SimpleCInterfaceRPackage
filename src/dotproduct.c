void dotproduct_dot_c(double* x, double* y, int* len, double* res) {
    long double tmp = 0.0L;
    int i, n = *len;
    for(i=0; i<n; ++i, ++x, ++y) tmp += *x + *y; 
    *res = (double)tmp;
}

// not needed for the above call.
#include <R.h>
#include <Rdefines.h>

SEXP dotproduct_dot_call(SEXP x, SEXP y) {
    R_len_t nx = length(x), ny = length(y);
    double tmp = 0.0;
    SEXP ans;
    if(nx != ny) error("length of x and y must be the same."); //... though of course we would do this before calling.
    dotproduct_dot_c(REAL(x), REAL(y), &nx, &tmp);
    PROTECT(ans = allocVector(REALSXP, 1));
    REAL(ans)[0] = (double)tmp;
    UNPROTECT(1);
    return ans;
}

SEXP dotproduct_dot_external(SEXP args) {
    return dotproduct_dot_call(CADR(args), CADDR(args));
}
