! This file was automatically generated by SWIG (http://www.swig.org).
! Version 4.0.2
!
! Do not make changes to this file unless you know what you are doing--modify
! the SWIG interface file instead.

! STRUMPACK -- STRUctured Matrices PACKage, Copyright (c) 2014, The
! Regents of the University of California, through Lawrence Berkeley
! National Laboratory (subject to receipt of any required approvals
! from the U.S. Dept. of Energy).  All rights reserved.
!
! If you have questions about your rights to use or distribute this
! software, please contact Berkeley Lab's Technology Transfer
! Department at TTD@lbl.gov.
!
! NOTICE. This software is owned by the U.S. Department of Energy. As
! such, the U.S. Government has been granted for itself and others
! acting on its behalf a paid-up, nonexclusive, irrevocable,
! worldwide license in the Software to reproduce, prepare derivative
! works, and perform publicly and display publicly.  Beginning five
! (5) years after the date permission to assert copyright is obtained
! from the U.S. Department of Energy, and subject to any subsequent
! five (5) year renewals, the U.S. Government is granted for itself
! and others acting on its behalf a paid-up, nonexclusive,
! irrevocable, worldwide license in the Software to reproduce,
! prepare derivative works, distribute copies to the public, perform
! publicly and display publicly, and to permit others to do so.
!
! Developers: Pieter Ghysels, Francois-Henry Rouet, Xiaoye S. Li.
!             (Lawrence Berkeley National Lab, Computational Research
!             Division).

module strumpack
 use, intrinsic :: ISO_C_BINDING
 implicit none
 private

 ! DECLARATION CONSTRUCTS
 ! typedef enum STRUMPACK_PRECISION
 enum, bind(c)
  enumerator :: STRUMPACK_FLOAT
  enumerator :: STRUMPACK_DOUBLE
  enumerator :: STRUMPACK_FLOATCOMPLEX
  enumerator :: STRUMPACK_DOUBLECOMPLEX
  enumerator :: STRUMPACK_FLOAT_64
  enumerator :: STRUMPACK_DOUBLE_64
  enumerator :: STRUMPACK_FLOATCOMPLEX_64
  enumerator :: STRUMPACK_DOUBLECOMPLEX_64
 end enum
 integer, parameter, public :: STRUMPACK_PRECISION = kind(STRUMPACK_FLOAT)
 public :: STRUMPACK_FLOAT, STRUMPACK_DOUBLE, STRUMPACK_FLOATCOMPLEX, STRUMPACK_DOUBLECOMPLEX, STRUMPACK_FLOAT_64, &
    STRUMPACK_DOUBLE_64, STRUMPACK_FLOATCOMPLEX_64, STRUMPACK_DOUBLECOMPLEX_64
 ! typedef enum STRUMPACK_INTERFACE
 enum, bind(c)
  enumerator :: STRUMPACK_MT
  enumerator :: STRUMPACK_MPI_DIST
 end enum
 integer, parameter, public :: STRUMPACK_INTERFACE = kind(STRUMPACK_MT)
 public :: STRUMPACK_MT, STRUMPACK_MPI_DIST
 ! struct STRUMPACK_SparseSolver
 type, bind(C), public :: STRUMPACK_SparseSolver
  type(C_PTR), public :: solver
  integer(C_INT), public :: precision
  integer(C_INT), public :: interface
 end type STRUMPACK_SparseSolver
 ! typedef enum STRUMPACK_COMPRESSION_TYPE
 enum, bind(c)
  enumerator :: STRUMPACK_NONE = 0
  enumerator :: STRUMPACK_HSS = 1
  enumerator :: STRUMPACK_BLR = 2
  enumerator :: STRUMPACK_HODLR = 3
  enumerator :: STRUMPACK_LOSSLESS = 4
  enumerator :: STRUMPACK_LOSSY = 5
 end enum
 integer, parameter, public :: STRUMPACK_COMPRESSION_TYPE = kind(STRUMPACK_NONE)
 public :: STRUMPACK_NONE, STRUMPACK_HSS, STRUMPACK_BLR, STRUMPACK_HODLR, STRUMPACK_LOSSLESS, STRUMPACK_LOSSY
 ! typedef enum STRUMPACK_MATCHING_JOB
 enum, bind(c)
  enumerator :: STRUMPACK_MATCHING_NONE = 0
  enumerator :: STRUMPACK_MATCHING_MAX_CARDINALITY = 1
  enumerator :: STRUMPACK_MATCHING_MAX_SMALLEST_DIAGONAL = 2
  enumerator :: STRUMPACK_MATCHING_MAX_SMALLEST_DIAGONAL_2 = 3
  enumerator :: STRUMPACK_MATCHING_MAX_DIAGONAL_SUM = 4
  enumerator :: STRUMPACK_MATCHING_MAX_DIAGONAL_PRODUCT_SCALING = 5
  enumerator :: STRUMPACK_MATCHING_COMBBLAS = 6
 end enum
 integer, parameter, public :: STRUMPACK_MATCHING_JOB = kind(STRUMPACK_MATCHING_NONE)
 public :: STRUMPACK_MATCHING_NONE, STRUMPACK_MATCHING_MAX_CARDINALITY, STRUMPACK_MATCHING_MAX_SMALLEST_DIAGONAL, &
    STRUMPACK_MATCHING_MAX_SMALLEST_DIAGONAL_2, STRUMPACK_MATCHING_MAX_DIAGONAL_SUM, &
    STRUMPACK_MATCHING_MAX_DIAGONAL_PRODUCT_SCALING, STRUMPACK_MATCHING_COMBBLAS
 ! typedef enum STRUMPACK_REORDERING_STRATEGY
 enum, bind(c)
  enumerator :: STRUMPACK_NATURAL = 0
  enumerator :: STRUMPACK_METIS = 1
  enumerator :: STRUMPACK_PARMETIS = 2
  enumerator :: STRUMPACK_SCOTCH = 3
  enumerator :: STRUMPACK_PTSCOTCH = 4
  enumerator :: STRUMPACK_RCM = 5
  enumerator :: STRUMPACK_GEOMETRIC = 6
 end enum
 integer, parameter, public :: STRUMPACK_REORDERING_STRATEGY = kind(STRUMPACK_NATURAL)
 public :: STRUMPACK_NATURAL, STRUMPACK_METIS, STRUMPACK_PARMETIS, STRUMPACK_SCOTCH, STRUMPACK_PTSCOTCH, STRUMPACK_RCM, &
    STRUMPACK_GEOMETRIC
 ! typedef enum STRUMPACK_GRAM_SCHMIDT_TYPE
 enum, bind(c)
  enumerator :: STRUMPACK_CLASSICAL = 0
  enumerator :: STRUMPACK_MODIFIED = 1
 end enum
 integer, parameter, public :: STRUMPACK_GRAM_SCHMIDT_TYPE = kind(STRUMPACK_CLASSICAL)
 public :: STRUMPACK_CLASSICAL, STRUMPACK_MODIFIED
 ! typedef enum STRUMPACK_RANDOM_DISTRIBUTION
 enum, bind(c)
  enumerator :: STRUMPACK_NORMAL = 0
  enumerator :: STRUMPACK_UNIFORM = 1
 end enum
 integer, parameter, public :: STRUMPACK_RANDOM_DISTRIBUTION = kind(STRUMPACK_NORMAL)
 public :: STRUMPACK_NORMAL, STRUMPACK_UNIFORM
 ! typedef enum STRUMPACK_RANDOM_ENGINE
 enum, bind(c)
  enumerator :: STRUMPACK_LINEAR = 0
  enumerator :: STRUMPACK_MERSENNE = 1
 end enum
 integer, parameter, public :: STRUMPACK_RANDOM_ENGINE = kind(STRUMPACK_LINEAR)
 public :: STRUMPACK_LINEAR, STRUMPACK_MERSENNE
 ! typedef enum STRUMPACK_KRYLOV_SOLVER
 enum, bind(c)
  enumerator :: STRUMPACK_AUTO = 0
  enumerator :: STRUMPACK_DIRECT = 1
  enumerator :: STRUMPACK_REFINE = 2
  enumerator :: STRUMPACK_PREC_GMRES = 3
  enumerator :: STRUMPACK_GMRES = 4
  enumerator :: STRUMPACK_PREC_BICGSTAB = 5
  enumerator :: STRUMPACK_BICGSTAB = 6
 end enum
 integer, parameter, public :: STRUMPACK_KRYLOV_SOLVER = kind(STRUMPACK_AUTO)
 public :: STRUMPACK_AUTO, STRUMPACK_DIRECT, STRUMPACK_REFINE, STRUMPACK_PREC_GMRES, STRUMPACK_GMRES, STRUMPACK_PREC_BICGSTAB, &
    STRUMPACK_BICGSTAB
 ! typedef enum STRUMPACK_RETURN_CODE
 enum, bind(c)
  enumerator :: STRUMPACK_SUCCESS = 0
  enumerator :: STRUMPACK_MATRIX_NOT_SET = 1
  enumerator :: STRUMPACK_REORDERING_ERROR = 2
 end enum
 integer, parameter, public :: STRUMPACK_RETURN_CODE = kind(STRUMPACK_SUCCESS)
 public :: STRUMPACK_SUCCESS, STRUMPACK_MATRIX_NOT_SET, STRUMPACK_REORDERING_ERROR
 public :: STRUMPACK_init_mt
 public :: STRUMPACK_destroy
 public :: STRUMPACK_set_csr_matrix
 public :: STRUMPACK_update_csr_matrix_values
 public :: STRUMPACK_solve
 public :: STRUMPACK_set_from_options
 public :: STRUMPACK_reorder
 public :: STRUMPACK_reorder_regular
 public :: STRUMPACK_factor
 public :: STRUMPACK_move_to_gpu
 public :: STRUMPACK_remove_from_gpu
 public :: STRUMPACK_delete_factors
 public :: STRUMPACK_set_verbose
 public :: STRUMPACK_set_maxit
 public :: STRUMPACK_set_gmres_restart
 public :: STRUMPACK_set_rel_tol
 public :: STRUMPACK_set_abs_tol
 public :: STRUMPACK_set_nd_param
 public :: STRUMPACK_set_reordering_method
 public :: STRUMPACK_set_GramSchmidt_type
 public :: STRUMPACK_set_matching
 public :: STRUMPACK_set_Krylov_solver
 public :: STRUMPACK_enable_gpu
 public :: STRUMPACK_disable_gpu
 public :: STRUMPACK_set_compression
 public :: STRUMPACK_set_compression_min_sep_size
 public :: STRUMPACK_set_compression_min_front_size
 public :: STRUMPACK_set_compression_leaf_size
 public :: STRUMPACK_set_compression_rel_tol
 public :: STRUMPACK_set_compression_abs_tol
 public :: STRUMPACK_set_compression_butterfly_levels
 public :: STRUMPACK_verbose
 public :: STRUMPACK_maxit
 public :: STRUMPACK_get_gmres_restart
 public :: STRUMPACK_rel_tol
 public :: STRUMPACK_abs_tol
 public :: STRUMPACK_nd_param
 public :: STRUMPACK_reordering_method
 public :: STRUMPACK_GramSchmidt_type
 public :: STRUMPACK_matching
 public :: get_STRUMPACK_Krylov_solver
 public :: STRUMPACK_use_gpu
 public :: STRUMPACK_compression
 public :: STRUMPACK_compression_min_sep_size
 public :: STRUMPACK_compression_min_front_size
 public :: STRUMPACK_compression_leaf_size
 public :: STRUMPACK_compression_rel_tol
 public :: STRUMPACK_compression_abs_tol
 public :: STRUMPACK_compression_butterfly_levels
 public :: STRUMPACK_its
 public :: STRUMPACK_rank
 public :: STRUMPACK_factor_nonzeros
 public :: STRUMPACK_factor_memory
 public :: STRUMPACK_set_mc64job
 public :: STRUMPACK_mc64job
 public :: STRUMPACK_enable_HSS
 public :: STRUMPACK_disable_HSS
 public :: STRUMPACK_set_HSS_min_front_size
 public :: STRUMPACK_set_HSS_min_sep_size
 public :: STRUMPACK_set_HSS_max_rank
 public :: STRUMPACK_set_HSS_leaf_size
 public :: STRUMPACK_set_HSS_rel_tol
 public :: STRUMPACK_set_HSS_abs_tol
 public :: use_HSS
 public :: STRUMPACK_HSS_min_front_size
 public :: STRUMPACK_HSS_min_sep_size
 public :: STRUMPACK_HSS_max_rank
 public :: STRUMPACK_HSS_leaf_size
 public :: STRUMPACK_HSS_rel_tol
 public :: STRUMPACK_HSS_abs_tol

! WRAPPER DECLARATIONS
interface
subroutine STRUMPACK_init_mt(s, precision, interface, argc, argv, verbose) &
bind(C, name="STRUMPACK_init_mt")
use, intrinsic :: ISO_C_BINDING
import :: strumpack_sparsesolver
type(STRUMPACK_SparseSolver) :: s
integer(C_INT), intent(in), value :: precision
integer(C_INT), intent(in), value :: interface
integer(C_INT), intent(in), value :: argc
type(C_PTR), value :: argv
integer(C_INT), intent(in), value :: verbose
end subroutine

subroutine STRUMPACK_destroy(s) &
bind(C, name="STRUMPACK_destroy")
use, intrinsic :: ISO_C_BINDING
import :: strumpack_sparsesolver
type(STRUMPACK_SparseSolver) :: s
end subroutine

subroutine STRUMPACK_set_csr_matrix(s, n, row_ptr, col_ind, values, symmetric_pattern) &
bind(C, name="STRUMPACK_set_csr_matrix")
use, intrinsic :: ISO_C_BINDING
import :: strumpack_sparsesolver
type(STRUMPACK_SparseSolver), intent(in), value :: s
type(C_PTR), intent(in), value :: n
type(C_PTR), intent(in), value :: row_ptr
type(C_PTR), intent(in), value :: col_ind
type(C_PTR), intent(in), value :: values
integer(C_INT), intent(in), value :: symmetric_pattern
end subroutine

subroutine STRUMPACK_update_csr_matrix_values(s, n, row_ptr, col_ind, values, symmetric_pattern) &
bind(C, name="STRUMPACK_update_csr_matrix_values")
use, intrinsic :: ISO_C_BINDING
import :: strumpack_sparsesolver
type(STRUMPACK_SparseSolver), intent(in), value :: s
type(C_PTR), intent(in), value :: n
type(C_PTR), intent(in), value :: row_ptr
type(C_PTR), intent(in), value :: col_ind
type(C_PTR), intent(in), value :: values
integer(C_INT), intent(in), value :: symmetric_pattern
end subroutine

function STRUMPACK_solve(s, b, x, use_initial_guess) &
bind(C, name="STRUMPACK_solve") &
result(fresult)
use, intrinsic :: ISO_C_BINDING
import :: strumpack_sparsesolver
type(STRUMPACK_SparseSolver), intent(in), value :: s
type(C_PTR), intent(in), value :: b
type(C_PTR), intent(in), value :: x
integer(C_INT), intent(in), value :: use_initial_guess
integer(C_INT) :: fresult
end function

subroutine STRUMPACK_set_from_options(s) &
bind(C, name="STRUMPACK_set_from_options")
use, intrinsic :: ISO_C_BINDING
import :: strumpack_sparsesolver
type(STRUMPACK_SparseSolver), intent(in), value :: s
end subroutine

function STRUMPACK_reorder(s) &
bind(C, name="STRUMPACK_reorder") &
result(fresult)
use, intrinsic :: ISO_C_BINDING
import :: strumpack_sparsesolver
type(STRUMPACK_SparseSolver), intent(in), value :: s
integer(C_INT) :: fresult
end function

function STRUMPACK_reorder_regular(s, nx, ny, nz) &
bind(C, name="STRUMPACK_reorder_regular") &
result(fresult)
use, intrinsic :: ISO_C_BINDING
import :: strumpack_sparsesolver
type(STRUMPACK_SparseSolver), intent(in), value :: s
integer(C_INT), intent(in), value :: nx
integer(C_INT), intent(in), value :: ny
integer(C_INT), intent(in), value :: nz
integer(C_INT) :: fresult
end function

function STRUMPACK_factor(s) &
bind(C, name="STRUMPACK_factor") &
result(fresult)
use, intrinsic :: ISO_C_BINDING
import :: strumpack_sparsesolver
type(STRUMPACK_SparseSolver), intent(in), value :: s
integer(C_INT) :: fresult
end function

subroutine STRUMPACK_move_to_gpu(s) &
bind(C, name="STRUMPACK_move_to_gpu")
use, intrinsic :: ISO_C_BINDING
import :: strumpack_sparsesolver
type(STRUMPACK_SparseSolver), intent(in), value :: s
end subroutine

subroutine STRUMPACK_remove_from_gpu(s) &
bind(C, name="STRUMPACK_remove_from_gpu")
use, intrinsic :: ISO_C_BINDING
import :: strumpack_sparsesolver
type(STRUMPACK_SparseSolver), intent(in), value :: s
end subroutine

subroutine STRUMPACK_delete_factors(s) &
bind(C, name="STRUMPACK_delete_factors")
use, intrinsic :: ISO_C_BINDING
import :: strumpack_sparsesolver
type(STRUMPACK_SparseSolver), intent(in), value :: s
end subroutine

subroutine STRUMPACK_set_verbose(s, v) &
bind(C, name="STRUMPACK_set_verbose")
use, intrinsic :: ISO_C_BINDING
import :: strumpack_sparsesolver
type(STRUMPACK_SparseSolver), intent(in), value :: s
integer(C_INT), intent(in), value :: v
end subroutine

subroutine STRUMPACK_set_maxit(s, maxit) &
bind(C, name="STRUMPACK_set_maxit")
use, intrinsic :: ISO_C_BINDING
import :: strumpack_sparsesolver
type(STRUMPACK_SparseSolver), intent(in), value :: s
integer(C_INT), intent(in), value :: maxit
end subroutine

subroutine STRUMPACK_set_gmres_restart(s, m) &
bind(C, name="STRUMPACK_set_gmres_restart")
use, intrinsic :: ISO_C_BINDING
import :: strumpack_sparsesolver
type(STRUMPACK_SparseSolver), intent(in), value :: s
integer(C_INT), intent(in), value :: m
end subroutine

subroutine STRUMPACK_set_rel_tol(s, tol) &
bind(C, name="STRUMPACK_set_rel_tol")
use, intrinsic :: ISO_C_BINDING
import :: strumpack_sparsesolver
type(STRUMPACK_SparseSolver), intent(in), value :: s
real(C_DOUBLE), intent(in), value :: tol
end subroutine

subroutine STRUMPACK_set_abs_tol(s, tol) &
bind(C, name="STRUMPACK_set_abs_tol")
use, intrinsic :: ISO_C_BINDING
import :: strumpack_sparsesolver
type(STRUMPACK_SparseSolver), intent(in), value :: s
real(C_DOUBLE), intent(in), value :: tol
end subroutine

subroutine STRUMPACK_set_nd_param(s, nd_param) &
bind(C, name="STRUMPACK_set_nd_param")
use, intrinsic :: ISO_C_BINDING
import :: strumpack_sparsesolver
type(STRUMPACK_SparseSolver), intent(in), value :: s
integer(C_INT), intent(in), value :: nd_param
end subroutine

subroutine STRUMPACK_set_reordering_method(s, m) &
bind(C, name="STRUMPACK_set_reordering_method")
use, intrinsic :: ISO_C_BINDING
import :: strumpack_sparsesolver
type(STRUMPACK_SparseSolver), intent(in), value :: s
integer(C_INT), intent(in), value :: m
end subroutine

subroutine STRUMPACK_set_GramSchmidt_type(s, t) &
bind(C, name="STRUMPACK_set_GramSchmidt_type")
use, intrinsic :: ISO_C_BINDING
import :: strumpack_sparsesolver
type(STRUMPACK_SparseSolver), intent(in), value :: s
integer(C_INT), intent(in), value :: t
end subroutine

subroutine STRUMPACK_set_matching(s, job) &
bind(C, name="STRUMPACK_set_matching")
use, intrinsic :: ISO_C_BINDING
import :: strumpack_sparsesolver
type(STRUMPACK_SparseSolver), intent(in), value :: s
integer(C_INT), intent(in), value :: job
end subroutine

subroutine STRUMPACK_set_Krylov_solver(s, solver_type) &
bind(C, name="STRUMPACK_set_Krylov_solver")
use, intrinsic :: ISO_C_BINDING
import :: strumpack_sparsesolver
type(STRUMPACK_SparseSolver), intent(in), value :: s
integer(C_INT), intent(in), value :: solver_type
end subroutine

subroutine STRUMPACK_enable_gpu(s) &
bind(C, name="STRUMPACK_enable_gpu")
use, intrinsic :: ISO_C_BINDING
import :: strumpack_sparsesolver
type(STRUMPACK_SparseSolver), intent(in), value :: s
end subroutine

subroutine STRUMPACK_disable_gpu(s) &
bind(C, name="STRUMPACK_disable_gpu")
use, intrinsic :: ISO_C_BINDING
import :: strumpack_sparsesolver
type(STRUMPACK_SparseSolver), intent(in), value :: s
end subroutine

subroutine STRUMPACK_set_compression(s, t) &
bind(C, name="STRUMPACK_set_compression")
use, intrinsic :: ISO_C_BINDING
import :: strumpack_sparsesolver
type(STRUMPACK_SparseSolver), intent(in), value :: s
integer(C_INT), intent(in), value :: t
end subroutine

subroutine STRUMPACK_set_compression_min_sep_size(s, size) &
bind(C, name="STRUMPACK_set_compression_min_sep_size")
use, intrinsic :: ISO_C_BINDING
import :: strumpack_sparsesolver
type(STRUMPACK_SparseSolver), intent(in), value :: s
integer(C_INT), intent(in), value :: size
end subroutine

subroutine STRUMPACK_set_compression_min_front_size(s, size) &
bind(C, name="STRUMPACK_set_compression_min_front_size")
use, intrinsic :: ISO_C_BINDING
import :: strumpack_sparsesolver
type(STRUMPACK_SparseSolver), intent(in), value :: s
integer(C_INT), intent(in), value :: size
end subroutine

subroutine STRUMPACK_set_compression_leaf_size(s, size) &
bind(C, name="STRUMPACK_set_compression_leaf_size")
use, intrinsic :: ISO_C_BINDING
import :: strumpack_sparsesolver
type(STRUMPACK_SparseSolver), intent(in), value :: s
integer(C_INT), intent(in), value :: size
end subroutine

subroutine STRUMPACK_set_compression_rel_tol(s, rctol) &
bind(C, name="STRUMPACK_set_compression_rel_tol")
use, intrinsic :: ISO_C_BINDING
import :: strumpack_sparsesolver
type(STRUMPACK_SparseSolver), intent(in), value :: s
real(C_DOUBLE), intent(in), value :: rctol
end subroutine

subroutine STRUMPACK_set_compression_abs_tol(s, actol) &
bind(C, name="STRUMPACK_set_compression_abs_tol")
use, intrinsic :: ISO_C_BINDING
import :: strumpack_sparsesolver
type(STRUMPACK_SparseSolver), intent(in), value :: s
real(C_DOUBLE), intent(in), value :: actol
end subroutine

subroutine STRUMPACK_set_compression_butterfly_levels(s, l) &
bind(C, name="STRUMPACK_set_compression_butterfly_levels")
use, intrinsic :: ISO_C_BINDING
import :: strumpack_sparsesolver
type(STRUMPACK_SparseSolver), intent(in), value :: s
integer(C_INT), intent(in), value :: l
end subroutine

function STRUMPACK_verbose(s) &
bind(C, name="STRUMPACK_verbose") &
result(fresult)
use, intrinsic :: ISO_C_BINDING
import :: strumpack_sparsesolver
type(STRUMPACK_SparseSolver), intent(in), value :: s
integer(C_INT) :: fresult
end function

function STRUMPACK_maxit(s) &
bind(C, name="STRUMPACK_maxit") &
result(fresult)
use, intrinsic :: ISO_C_BINDING
import :: strumpack_sparsesolver
type(STRUMPACK_SparseSolver), intent(in), value :: s
integer(C_INT) :: fresult
end function

function STRUMPACK_get_gmres_restart(s) &
bind(C, name="STRUMPACK_get_gmres_restart") &
result(fresult)
use, intrinsic :: ISO_C_BINDING
import :: strumpack_sparsesolver
type(STRUMPACK_SparseSolver), intent(in), value :: s
integer(C_INT) :: fresult
end function

function STRUMPACK_rel_tol(s) &
bind(C, name="STRUMPACK_rel_tol") &
result(fresult)
use, intrinsic :: ISO_C_BINDING
import :: strumpack_sparsesolver
type(STRUMPACK_SparseSolver), intent(in), value :: s
real(C_DOUBLE) :: fresult
end function

function STRUMPACK_abs_tol(s) &
bind(C, name="STRUMPACK_abs_tol") &
result(fresult)
use, intrinsic :: ISO_C_BINDING
import :: strumpack_sparsesolver
type(STRUMPACK_SparseSolver), intent(in), value :: s
real(C_DOUBLE) :: fresult
end function

function STRUMPACK_nd_param(s) &
bind(C, name="STRUMPACK_nd_param") &
result(fresult)
use, intrinsic :: ISO_C_BINDING
import :: strumpack_sparsesolver
type(STRUMPACK_SparseSolver), intent(in), value :: s
integer(C_INT) :: fresult
end function

function STRUMPACK_reordering_method(s) &
bind(C, name="STRUMPACK_reordering_method") &
result(fresult)
use, intrinsic :: ISO_C_BINDING
import :: strumpack_sparsesolver
type(STRUMPACK_SparseSolver), intent(in), value :: s
integer(C_INT) :: fresult
end function

function STRUMPACK_GramSchmidt_type(s) &
bind(C, name="STRUMPACK_GramSchmidt_type") &
result(fresult)
use, intrinsic :: ISO_C_BINDING
import :: strumpack_sparsesolver
type(STRUMPACK_SparseSolver), intent(in), value :: s
integer(C_INT) :: fresult
end function

function STRUMPACK_matching(s) &
bind(C, name="STRUMPACK_matching") &
result(fresult)
use, intrinsic :: ISO_C_BINDING
import :: strumpack_sparsesolver
type(STRUMPACK_SparseSolver), intent(in), value :: s
integer(C_INT) :: fresult
end function

function get_STRUMPACK_Krylov_solver(s) &
bind(C, name="STRUMPACK_Krylov_solver") &
result(fresult)
use, intrinsic :: ISO_C_BINDING
import :: strumpack_sparsesolver
type(STRUMPACK_SparseSolver), intent(in), value :: s
integer(C_INT) :: fresult
end function

function STRUMPACK_use_gpu(s) &
bind(C, name="STRUMPACK_use_gpu") &
result(fresult)
use, intrinsic :: ISO_C_BINDING
import :: strumpack_sparsesolver
type(STRUMPACK_SparseSolver), intent(in), value :: s
integer(C_INT) :: fresult
end function

function STRUMPACK_compression(s) &
bind(C, name="STRUMPACK_compression") &
result(fresult)
use, intrinsic :: ISO_C_BINDING
import :: strumpack_sparsesolver
type(STRUMPACK_SparseSolver), intent(in), value :: s
integer(C_INT) :: fresult
end function

function STRUMPACK_compression_min_sep_size(s) &
bind(C, name="STRUMPACK_compression_min_sep_size") &
result(fresult)
use, intrinsic :: ISO_C_BINDING
import :: strumpack_sparsesolver
type(STRUMPACK_SparseSolver), intent(in), value :: s
integer(C_INT) :: fresult
end function

function STRUMPACK_compression_min_front_size(s) &
bind(C, name="STRUMPACK_compression_min_front_size") &
result(fresult)
use, intrinsic :: ISO_C_BINDING
import :: strumpack_sparsesolver
type(STRUMPACK_SparseSolver), intent(in), value :: s
integer(C_INT) :: fresult
end function

function STRUMPACK_compression_leaf_size(s) &
bind(C, name="STRUMPACK_compression_leaf_size") &
result(fresult)
use, intrinsic :: ISO_C_BINDING
import :: strumpack_sparsesolver
type(STRUMPACK_SparseSolver), intent(in), value :: s
integer(C_INT) :: fresult
end function

function STRUMPACK_compression_rel_tol(s) &
bind(C, name="STRUMPACK_compression_rel_tol") &
result(fresult)
use, intrinsic :: ISO_C_BINDING
import :: strumpack_sparsesolver
type(STRUMPACK_SparseSolver), intent(in), value :: s
real(C_DOUBLE) :: fresult
end function

function STRUMPACK_compression_abs_tol(s) &
bind(C, name="STRUMPACK_compression_abs_tol") &
result(fresult)
use, intrinsic :: ISO_C_BINDING
import :: strumpack_sparsesolver
type(STRUMPACK_SparseSolver), intent(in), value :: s
real(C_DOUBLE) :: fresult
end function

function STRUMPACK_compression_butterfly_levels(s) &
bind(C, name="STRUMPACK_compression_butterfly_levels") &
result(fresult)
use, intrinsic :: ISO_C_BINDING
import :: strumpack_sparsesolver
type(STRUMPACK_SparseSolver), intent(in), value :: s
integer(C_INT) :: fresult
end function

function STRUMPACK_its(s) &
bind(C, name="STRUMPACK_its") &
result(fresult)
use, intrinsic :: ISO_C_BINDING
import :: strumpack_sparsesolver
type(STRUMPACK_SparseSolver), intent(in), value :: s
integer(C_INT) :: fresult
end function

function STRUMPACK_rank(s) &
bind(C, name="STRUMPACK_rank") &
result(fresult)
use, intrinsic :: ISO_C_BINDING
import :: strumpack_sparsesolver
type(STRUMPACK_SparseSolver), intent(in), value :: s
integer(C_INT) :: fresult
end function

function STRUMPACK_factor_nonzeros(s) &
bind(C, name="STRUMPACK_factor_nonzeros") &
result(fresult)
use, intrinsic :: ISO_C_BINDING
import :: strumpack_sparsesolver
type(STRUMPACK_SparseSolver), intent(in), value :: s
integer(C_LONG_LONG) :: fresult
end function

function STRUMPACK_factor_memory(s) &
bind(C, name="STRUMPACK_factor_memory") &
result(fresult)
use, intrinsic :: ISO_C_BINDING
import :: strumpack_sparsesolver
type(STRUMPACK_SparseSolver), intent(in), value :: s
integer(C_LONG_LONG) :: fresult
end function

subroutine STRUMPACK_set_mc64job(s, job) &
bind(C, name="STRUMPACK_set_mc64job")
use, intrinsic :: ISO_C_BINDING
import :: strumpack_sparsesolver
type(STRUMPACK_SparseSolver), intent(in), value :: s
integer(C_INT), intent(in), value :: job
end subroutine

function STRUMPACK_mc64job(s) &
bind(C, name="STRUMPACK_mc64job") &
result(fresult)
use, intrinsic :: ISO_C_BINDING
import :: strumpack_sparsesolver
type(STRUMPACK_SparseSolver), intent(in), value :: s
integer(C_INT) :: fresult
end function

subroutine STRUMPACK_enable_HSS(s) &
bind(C, name="STRUMPACK_enable_HSS")
use, intrinsic :: ISO_C_BINDING
import :: strumpack_sparsesolver
type(STRUMPACK_SparseSolver), intent(in), value :: s
end subroutine

subroutine STRUMPACK_disable_HSS(s) &
bind(C, name="STRUMPACK_disable_HSS")
use, intrinsic :: ISO_C_BINDING
import :: strumpack_sparsesolver
type(STRUMPACK_SparseSolver), intent(in), value :: s
end subroutine

subroutine STRUMPACK_set_HSS_min_front_size(s, size) &
bind(C, name="STRUMPACK_set_HSS_min_front_size")
use, intrinsic :: ISO_C_BINDING
import :: strumpack_sparsesolver
type(STRUMPACK_SparseSolver), intent(in), value :: s
integer(C_INT), intent(in), value :: size
end subroutine

subroutine STRUMPACK_set_HSS_min_sep_size(s, size) &
bind(C, name="STRUMPACK_set_HSS_min_sep_size")
use, intrinsic :: ISO_C_BINDING
import :: strumpack_sparsesolver
type(STRUMPACK_SparseSolver), intent(in), value :: s
integer(C_INT), intent(in), value :: size
end subroutine

subroutine STRUMPACK_set_HSS_max_rank(s, max_rank) &
bind(C, name="STRUMPACK_set_HSS_max_rank")
use, intrinsic :: ISO_C_BINDING
import :: strumpack_sparsesolver
type(STRUMPACK_SparseSolver), intent(in), value :: s
integer(C_INT), intent(in), value :: max_rank
end subroutine

subroutine STRUMPACK_set_HSS_leaf_size(s, leaf_size) &
bind(C, name="STRUMPACK_set_HSS_leaf_size")
use, intrinsic :: ISO_C_BINDING
import :: strumpack_sparsesolver
type(STRUMPACK_SparseSolver), intent(in), value :: s
integer(C_INT), intent(in), value :: leaf_size
end subroutine

subroutine STRUMPACK_set_HSS_rel_tol(s, rctol) &
bind(C, name="STRUMPACK_set_HSS_rel_tol")
use, intrinsic :: ISO_C_BINDING
import :: strumpack_sparsesolver
type(STRUMPACK_SparseSolver), intent(in), value :: s
real(C_DOUBLE), intent(in), value :: rctol
end subroutine

subroutine STRUMPACK_set_HSS_abs_tol(s, actol) &
bind(C, name="STRUMPACK_set_HSS_abs_tol")
use, intrinsic :: ISO_C_BINDING
import :: strumpack_sparsesolver
type(STRUMPACK_SparseSolver), intent(in), value :: s
real(C_DOUBLE), intent(in), value :: actol
end subroutine

function use_HSS(s) &
bind(C, name="use_HSS") &
result(fresult)
use, intrinsic :: ISO_C_BINDING
import :: strumpack_sparsesolver
type(STRUMPACK_SparseSolver), intent(in), value :: s
integer(C_INT) :: fresult
end function

function STRUMPACK_HSS_min_front_size(s) &
bind(C, name="STRUMPACK_HSS_min_front_size") &
result(fresult)
use, intrinsic :: ISO_C_BINDING
import :: strumpack_sparsesolver
type(STRUMPACK_SparseSolver), intent(in), value :: s
integer(C_INT) :: fresult
end function

function STRUMPACK_HSS_min_sep_size(s) &
bind(C, name="STRUMPACK_HSS_min_sep_size") &
result(fresult)
use, intrinsic :: ISO_C_BINDING
import :: strumpack_sparsesolver
type(STRUMPACK_SparseSolver), intent(in), value :: s
integer(C_INT) :: fresult
end function

function STRUMPACK_HSS_max_rank(s) &
bind(C, name="STRUMPACK_HSS_max_rank") &
result(fresult)
use, intrinsic :: ISO_C_BINDING
import :: strumpack_sparsesolver
type(STRUMPACK_SparseSolver), intent(in), value :: s
integer(C_INT) :: fresult
end function

function STRUMPACK_HSS_leaf_size(s) &
bind(C, name="STRUMPACK_HSS_leaf_size") &
result(fresult)
use, intrinsic :: ISO_C_BINDING
import :: strumpack_sparsesolver
type(STRUMPACK_SparseSolver), intent(in), value :: s
integer(C_INT) :: fresult
end function

function STRUMPACK_HSS_rel_tol(s) &
bind(C, name="STRUMPACK_HSS_rel_tol") &
result(fresult)
use, intrinsic :: ISO_C_BINDING
import :: strumpack_sparsesolver
type(STRUMPACK_SparseSolver), intent(in), value :: s
real(C_DOUBLE) :: fresult
end function

function STRUMPACK_HSS_abs_tol(s) &
bind(C, name="STRUMPACK_HSS_abs_tol") &
result(fresult)
use, intrinsic :: ISO_C_BINDING
import :: strumpack_sparsesolver
type(STRUMPACK_SparseSolver), intent(in), value :: s
real(C_DOUBLE) :: fresult
end function

end interface


end module
