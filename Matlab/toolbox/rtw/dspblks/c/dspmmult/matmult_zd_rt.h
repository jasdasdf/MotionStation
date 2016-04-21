/*
 * @(#)matmult_zd_rt.h    generated by: makeheader 4.21  Tue Mar 30 16:43:30 2004
 *
 *		built from:	matmult_zd_rt.c
 */

#ifndef matmult_zd_rt_h
#define matmult_zd_rt_h

#ifdef __cplusplus
    extern "C" {
#endif

EXPORT_FCN void MWDSP_MatMult_ZD(
    creal_T *y,
    const creal_T *A,
    const real_T  *B,
    const int dims[3]);

#ifdef __cplusplus
    }	/* extern "C" */
#endif

#endif /* matmult_zd_rt_h */