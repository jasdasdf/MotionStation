/* Copyright 1994-2003 The MathWorks, Inc.
 *
 * File: rt_backsubrc_dbl.c     $Revision: 1.4.4.2 $
 *
 * Abstract:
 *      Real-Time Workshop support routine which performs
 *      backward substitution: solving Ux=b
 *
 */

#include "rtlibsrc.h"

/* Function: rt_BackwardSubstitutionRC_Dbl =====================================
 * Abstract: Backward substitution: Solving Ux=b 
 *           U: real, double
 *           b: complex, double
 *           U is an upper (or unit upper) triangular full matrix.
 *           The entries in the lower triangle are ignored.
 *           U is a NxN matrix
 *           X is a NxP matrix
 *           B is a NxP matrix
 */
#ifdef CREAL_T
void rt_BackwardSubstitutionRC_Dbl(real_T    *pU,
                                   creal_T   *pb,
                                   creal_T   *x,
                                   int_T     N,
                                   int_T     P,
                                   boolean_T unit_upper)
{
  int_T i,k;

  for(k=P; k>0; k--) {
    real_T *pUcol = pU;
    for(i=0; i<N; i++) {
      creal_T *xj = x + k*N-1;
      creal_T s = {0.0, 0.0};
      real_T *pUrow = pUcol--;          /* access current row of U */

      {
        int_T j = i;
        while(j-- > 0) {
          s.re += *pUrow * xj->re;
          s.im += *pUrow * (xj--)->im;
          pUrow -= N;
        }
      }

      if (unit_upper) {
        creal_T cb = (*pb--);
        xj->re = cb.re - s.re;
        (xj--)->im = cb.im - s.im;
      } else {
        creal_T cb = (*pb--);
        xj->re = (cb.re - s.re) / *pUrow;
        (xj--)->im = (cb.im - s.im) / *pUrow;
      }
    }
  }
}
#endif
/* [EOF] rt_backsubrc_dbl.c */