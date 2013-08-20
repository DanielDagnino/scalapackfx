include(pblasfx.m4)

!> High level Fortran wrappers for the PBLAS library.
module pblasfx_module
  use scalapackfx_common_module
  use pblas_module
  implicit none
  private

  public :: pblasfx_psyr, pblasfx_pher
  public :: pblasfx_psyrk, pblasfx_pherk
  public :: pblasfx_psymv, pblasfx_phemv


  interface pblasfx_psyr
    module procedure pblasfx_psyr_real, pblasfx_psyr_dreal
  end interface pblasfx_psyr

  interface pblasfx_pher
    module procedure pblasfx_pher_complex, pblasfx_pher_dcomplex
  end interface pblasfx_pher

  interface pblasfx_psyrk
    module procedure pblasfx_psyrk_real, pblasfx_psyrk_dreal
  end interface pblasfx_psyrk

  interface pblasfx_pherk
    module procedure pblasfx_pherk_complex, pblasfx_pherk_dcomplex
  end interface pblasfx_pherk

  interface pblasfx_psymv
    module procedure pblasfx_psymv_real, pblasfx_psymv_dreal
  end interface pblasfx_psymv

  interface pblasfx_phemv
    module procedure pblasfx_phemv_complex, pblasfx_phemv_dcomplex
  end interface pblasfx_phemv

contains

  _subroutine_pblasfx_psyr_pher(psyr_real, real, sp, real, psyr)
  _subroutine_pblasfx_psyr_pher(psyr_dreal, real, dp, real, psyr)
  _subroutine_pblasfx_psyr_pher(pher_complex, complex, sp, cmplx, pher)
  _subroutine_pblasfx_psyr_pher(pher_dcomplex, complex, dp, cmplx, pher)

  _subroutine_pblasfx_psyrk_pherk(psyrk_real, real, sp, real, psyrk)
  _subroutine_pblasfx_psyrk_pherk(psyrk_dreal, real, dp, real, psyrk)
  _subroutine_pblasfx_psyrk_pherk(pherk_complex, complex, sp, cmplx, pherk)
  _subroutine_pblasfx_psyrk_pherk(pherk_dcomplex, complex, dp, cmplx, pherk)

  _subroutine_pblasfx_psymv_phemv(psymv_real, real, sp, real, psymv)
  _subroutine_pblasfx_psymv_phemv(psymv_dreal, real, dp, real, psymv)
  _subroutine_pblasfx_psymv_phemv(phemv_complex, complex, sp, cmplx, phemv)
  _subroutine_pblasfx_psymv_phemv(phemv_dcomplex, complex, dp, cmplx, phemv)
  
end module pblasfx_module