!> \file
!> $Id$
!> \author Chris Bradley
!> \brief This module handles all constants shared across equations set routines.
!>
!> \section LICENSE
!>
!> Version: MPL 1.1/GPL 2.0/LGPL 2.1
!>
!> The contents of this file are subject to the Mozilla Public License
!> Version 1.1 (the "License"); you may not use this file except in
!> compliance with the License. You may obtain a copy of the License at
!> http://www.mozilla.org/MPL/
!>
!> Software distributed under the License is distributed on an "AS IS"
!> basis, WITHOUT WARRANTY OF ANY KIND, either express or implied. See the
!> License for the specific language governing rights and limitations
!> under the License.
!>
!> The Original Code is OpenCMISS
!>
!> The Initial Developer of the Original Code is University of Auckland,
!> Auckland, New Zealand and University of Oxford, Oxford, United
!> Kingdom. Portions created by the University of Auckland and University
!> of Oxford are Copyright (C) 2007 by the University of Auckland and
!> the University of Oxford. All Rights Reserved.
!>
!> Contributor(s):
!>
!> Alternatively, the contents of this file may be used under the terms of
!> either the GNU General Public License Version 2 or later (the "GPL"), or
!> the GNU Lesser General Public License Version 2.1 or later (the "LGPL"),
!> in which case the provisions of the GPL or the LGPL are applicable instead
!> of those above. If you wish to allow use of your version of this file only
!> under the terms of either the GPL or the LGPL, and not to allow others to
!> use your version of this file under the terms of the MPL, indicate your
!> decision by deleting the provisions above and replace them with the notice
!> and other provisions required by the GPL or the LGPL. If you do not delete
!> the provisions above, a recipient may use your version of this file under
!> the terms of any one of the MPL, the GPL or the LGPL.
!>

!> This module defines all constants shared across equations set routines.
MODULE EQUATIONS_SET_CONSTANTS

  USE KINDS

  IMPLICIT NONE

  !Problem Classes
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_NO_CLASS=0
  
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_ELASTICITY_CLASS=1
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_FLUID_MECHANICS_CLASS=2
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_ELECTROMAGNETICS_CLASS=3
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_CLASSICAL_FIELD_CLASS=4
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_BIOELECTRICS_CLASS=5
  
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_MODAL_CLASS=6
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_FITTING_CLASS=7
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_OPTIMISATION_CLASS=8
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_MULTI_PHYSICS_CLASS=9

  !Problem types
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_NO_TYPE=0
  !Elasticity class
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_LINEAR_ELASTICITY_TYPE=1
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_FINITE_ELASTICITY_TYPE=2
  !Fluid mechanics class
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_STOKES_EQUATION_TYPE=1
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_NAVIER_STOKES_EQUATION_TYPE=2
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_DARCY_EQUATION_TYPE=3
  !Electromagnetics class
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_ELECTROSTATIC_TYPE=1
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_MAGNETOSTATIC_TYPE=2
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_MAXWELLS_EQUATIONS_TYPE=3
  !Classical field class
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_LAPLACE_EQUATION_TYPE=1
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_POISSON_EQUATION_TYPE=2
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_HELMHOLTZ_EQUATION_TYPE=3
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_WAVE_EQUATION_TYPE=4
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_DIFFUSION_EQUATION_TYPE=5
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_ADVECTION_DIFFUSION_EQUATION_TYPE=6
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_REACTION_DIFFUSION_EQUATION_TYPE=7
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_BIHARMONIC_EQUATION_TYPE=8
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_GALERKIN_PROJECTION_EQUATION_TYPE=9
 !Bioelectrics class
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_MONODOMAIN_EQUATION_TYPE=1
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_BIDOMAIN_EQUATION_TYPE=2
  !Modal class
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_LINEAR_ELASTIC_MODAL_TYPE=1
  !Multi physics class
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_FINITE_ELASTICITY_DARCY_TYPE=1
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_FINITE_ELASTICITY_STOKES_TYPE=2
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_FINITE_ELASTICITY_NAVIER_STOKES_TYPE=3
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_DIFFUSION_DIFFUSION_TYPE=4
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_DIFFUSION_ADVECTION_DIFFUSION_TYPE=5

  !Problem subtypes
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_NO_SUBTYPE=0
  !Elasticity class
  !  Linear elasticity
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_THREE_DIMENSIONAL_SUBTYPE=1
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_TWO_DIMENSIONAL_PLANE_STRESS_SUBTYPE=2
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_TWO_DIMENSIONAL_PLANE_STRAIN_SUBTYPE=3
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_ONE_DIMENSIONAL_SUBTYPE=4
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_PLATE_SUBTYPE=5
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_SHELL_SUBTYPE=6
  !  Finite elasticity
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_MOONEY_RIVLIN_SUBTYPE=1
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_ISOTROPIC_EXPONENTIAL_SUBTYPE=2
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_TRANSVERSE_ISOTROPIC_EXPONENTIAL_SUBTYPE=3
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_ORTHOTROPIC_MATERIAL_COSTA_SUBTYPE=4

  !Fluid mechanics class
  !  Stokes equations
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_STATIC_STOKES_SUBTYPE=1
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_LAPLACE_STOKES_SUBTYPE=2
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_TRANSIENT_STOKES_SUBTYPE=3
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_OPTIMISED_STOKES_SUBTYPE=4
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_ALE_STOKES_SUBTYPE=5
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_PGM_STOKES_SUBTYPE=6
  !  Navier-Stokes equations
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_STATIC_NAVIER_STOKES_SUBTYPE=1
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_LAPLACE_NAVIER_STOKES_SUBTYPE=2
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_TRANSIENT_NAVIER_STOKES_SUBTYPE=3
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_OPTIMISED_NAVIER_STOKES_SUBTYPE=4
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_ALE_NAVIER_STOKES_SUBTYPE=5
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_PGM_NAVIER_STOKES_SUBTYPE=6
  !  Darcy equation
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_STANDARD_DARCY_SUBTYPE=1
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_QUASISTATIC_DARCY_SUBTYPE=2
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_ALE_DARCY_SUBTYPE=3
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_TRANSIENT_DARCY_SUBTYPE=4

  !Electromagnetics class
  !Classical field class
  !  Laplace equation
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_STANDARD_LAPLACE_SUBTYPE=1
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_GENERALISED_LAPLACE_SUBTYPE=2
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_MOVING_MESH_LAPLACE_SUBTYPE=3
  !  Poisson equation
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_CONSTANT_SOURCE_POISSON_SUBTYPE=1
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_LINEAR_SOURCE_POISSON_SUBTYPE=2
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_QUADRATIC_SOURCE_POISSON_SUBTYPE=3
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_EXPONENTIAL_SOURCE_POISSON_SUBTYPE=4
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_STOKES_POISSON_SUBTYPE=5
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_NAVIER_STOKES_POISSON_SUBTYPE=6
  !  Helmholtz equation
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_NO_SOURCE_HELMHOLTZ_SUBTYPE=1
  !  Wave equation
  !  Diffusion equation
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_NO_SOURCE_DIFFUSION_SUBTYPE=1
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_CONSTANT_SOURCE_DIFFUSION_SUBTYPE=2
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_LINEAR_SOURCE_DIFFUSION_SUBTYPE=3
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_QUADRATIC_SOURCE_DIFFUSION_SUBTYPE=4
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_EXPONENTIAL_SOURCE_DIFFUSION_SUBTYPE=5
  ! Advection-diffusion equation
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_NO_SOURCE_ADVECTION_DIFFUSION_SUBTYPE=1
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_CONSTANT_SOURCE_ADVECTION_DIFFUSION_SUBTYPE=2
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_LINEAR_SOURCE_ADVECTION_DIFFUSION_SUBTYPE=3
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_QUADRATIC_SOURCE_ADVECTION_DIFFUSION_SUBTYPE=4
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_EXPONENTIAL_SOURCE_ADVECTION_DIFFUSION_SUBTYPE=5
    !Subtypes for steady-state advection-diffusion equation 
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_NO_SOURCE_STATIC_ADVEC_DIFF_SUBTYPE=6
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_CONSTANT_SOURCE_STATIC_ADVEC_DIFF_SUBTYPE=7
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_LINEAR_SOURCE_STATIC_ADVEC_DIFF_SUBTYPE=8
  !Bioelectrics class
  !  Monodomain equation
  !  Bidomain equation
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_FIRST_BIDOMAIN_SUBTYPE=1
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_SECOND_BIDOMAIN_SUBTYPE=2
  !  Galerkin projection
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_STANDARD_GALERKIN_PROJECTION_SUBTYPE=1
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_GENERALISED_GALERKIN_PROJECTION_SUBTYPE=2
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_MAT_PROPERTIES_GALERKIN_PROJECTION_SUBTYPE=3
  !Modal class
  !Multi physics (subtype numbers must be different from Darcy ones)
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_STANDARD_ELASTICITY_DARCY_SUBTYPE=101
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_COUPLED_SOURCE_DIFFUSION_DIFFUSION_SUBTYPE=111
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_COUPLED_SOURCE_DIFFUSION_ADVEC_DIFFUSION_SUBTYPE=121

  !Module parameters
  !> \addtogroup EQUATIONS_SET_CONSTANTS_SetupTypes EQUATIONS_SET_CONSTANTS::SetupTypes
  !> \brief Setup type parameters
  !> \see EQUATIONS_SET_CONSTANTS
  !>@{
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_SETUP_INITIAL_TYPE=1 !<Initial setup. \see EQUATIONS_SET_CONSTANTS_SetupTypes,EQUATIONS_SET_CONSTANTS
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_SETUP_GEOMETRY_TYPE=2 !<Geometry setup. \see EQUATIONS_SET_CONSTANTS_SetupTypes,EQUATIONS_SET_CONSTANTS
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_SETUP_DEPENDENT_TYPE=3 !<Dependent variables. \see EQUATIONS_SET_CONSTANTS_SetupTypes,EQUATIONS_SET_CONSTANTS
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_SETUP_INDEPENDENT_TYPE=4 !<Independent variables. \see EQUATIONS_SET_CONSTANTS_SetupTypes,EQUATIONS_SET_CONSTANTS
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_SETUP_MATERIALS_TYPE=5 !<Materials setup. \see EQUATIONS_SET_CONSTANTS_SetupTypes,EQUATIONS_SET_CONSTANTS
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_SETUP_SOURCE_TYPE=6 !<Source setup. \see EQUATIONS_SET_CONSTANTS_SetupTypes,EQUATIONS_SET_CONSTANTS
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_SETUP_SOURCE_MATERIALS_TYPE=7 !<Source materials setup. \see EQUATIONS_SET_CONSTANTS_SetupTypes,EQUATIONS_SET_CONSTANTS
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_SETUP_ANALYTIC_TYPE=8 !<Analytic setup. \see EQUATIONS_SET_CONSTANTS_SetupTypes,EQUATIONS_SET_CONSTANTS
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_SETUP_EQUATIONS_TYPE=9 !<Equations setup. \see EQUATIONS_SET_CONSTANTS_SetupTypes,EQUATIONS_SET_CONSTANTS
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_SETUP_BOUNDARY_CONDITIONS_TYPE=10 !<Boundary conditions. \see EQUATIONS_SET_CONSTANTS_SetupTypes,EQUATIONS_SET_CONSTANTS
  !>@}
  
  !> \addtogroup EQUATIONS_SET_CONSTANTS_SetupActionTypes EQUATIONS_SET_CONSTANTS::SetupActionTypes
  !> \brief Setup action type parameters
  !> \see EQUATIONS_SET_CONSTANTS
  !>@{
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_SETUP_START_ACTION=1 !<Start setup action. \see EQUATIONS_SET_CONSTANTS_SetupActionTypes,EQUATIONS_SET_CONSTANTS
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_SETUP_FINISH_ACTION=2 !<Finish setup action. \see EQUATIONS_SET_CONSTANTS_SetupActionTypes,EQUATIONS_SET_CONSTANTS
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_SETUP_GENERATE_ACTION=3 !<Generate setup action. \see EQUATIONS_SET_CONSTANTS_SetupActionTypes,EQUATIONS_SET_CONSTANTS
  !>@}

  !> \addtogroup EQUATIONS_SET_CONSTANTS_FixedConditions EQUATIONS_SET_CONSTANTS::FixedConditions
  !> \brief Fixed conditons parameters
  !> \see EQUATIONS_SET_CONSTANTS
  !>@{
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_NOT_FIXED=0 !<The dof is not fixed. \see EQUATIONS_SET_CONSTANTS_FixedConditions,EQUATIONS_SET_CONSTANTS
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_FIXED_BOUNDARY_CONDITION=1 !<The dof is fixed as a boundary condition. \see EQUATIONS_SET_CONSTANTS_FixedConditions,EQUATIONS_SET_CONSTANTS
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_MIXED_BOUNDARY_CONDITION=2 !<The dof is set as a mixed boundary condition. \see EQUATIONS_SET_CONSTANTS_FixedConditions,EQUATIONS_SET_CONSTANTS
  !>@}
  

  !> \addtogroup EQUATIONS_SET_CONSTANTS_SolutionMethods EQUATIONS_SET_CONSTANTS::SolutionMethods
  !> \brief The solution method parameters
  !> \see EQUATIONS_SET_CONSTANTS
  !>@{
  INTEGER(INTG), PARAMETER :: NUMBER_OF_EQUATIONS_SET_SOLUTION_METHODS=7 !<The number of solution methods defined. \see EQUATIONS_SET_CONSTANTS_SolutionMethods,EQUATIONS_SET_CONSTANTS
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_FEM_SOLUTION_METHOD=1 !<Finite Element Method solution method \see EQUATIONS_SET_CONSTANTS_SolutionMethods,EQUATIONS_SET_CONSTANTS
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_BEM_SOLUTION_METHOD=2 !<Boundary Element Method solution method \see EQUATIONS_SET_CONSTANTS_SolutionMethods,EQUATIONS_SET_CONSTANTS
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_FD_SOLUTION_METHOD=3 !<Finite Difference solution method \see EQUATIONS_SET_CONSTANTS_SolutionMethods,EQUATIONS_SET_CONSTANTS
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_FV_SOLUTION_METHOD=4 !<Finite Volume solution method \see EQUATIONS_SET_CONSTANTS_SolutionMethods,EQUATIONS_SET_CONSTANTS
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_GFEM_SOLUTION_METHOD=5 !<Grid-based Finite Element Method solution method \see EQUATIONS_SET_CONSTANTS_SolutionMethods,EQUATIONS_SET_CONSTANTS
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_GFD_SOLUTION_METHOD=6 !<Grid-based Finite Difference Method solution method \see EQUATIONS_SET_CONSTANTS_SolutionMethods,EQUATIONS_SET_CONSTANTS
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_GFV_SOLUTION_METHOD=7 !<Grid-based Finite Volume solution method \see EQUATIONS_SET_CONSTANTS_SolutionMethods,EQUATIONS_SET_CONSTANTS
  !>@}

  !Module parameters

  !> \addtogroup EQUATIONS_SET_CONSTANTS_LinearityTypes EQUATIONS_SET_CONSTANTS::LinearityTypes
  !> \brief The equations linearity types
  !> \see EQUATIONS_SET_CONSTANTS,OPENCMISS_EquationsLinearityTypes
  !>@{
  INTEGER(INTG), PARAMETER :: NUMBER_OF_EQUATIONS_LINEARITY_TYPES=3 !<The number of equations linearity types defined. \see EQUATIONS_SET_CONSTANTS_LinearityTypes,EQUATIONS_SET_CONSTANTS
  INTEGER(INTG), PARAMETER :: EQUATIONS_LINEAR=1 !<The equations are linear. \see EQUATIONS_SET_CONSTANTS_LinearityTypes,EQUATIONS_SET_CONSTANTS
  INTEGER(INTG), PARAMETER :: EQUATIONS_NONLINEAR=2 !<The equations are non-linear. \see EQUATIONS_SET_CONSTANTS_LinearityTypes,EQUATIONS_SET_CONSTANTS
  INTEGER(INTG), PARAMETER :: EQUATIONS_NONLINEAR_BCS=3 !<The equations have non-linear boundary conditions. \see EQUATIONS_SET_CONSTANTS_LinearityTypes,EQUATIONS_SET_CONSTANTS
  !>@}

 
  !> \addtogroup EQUATIONS_SET_CONSTANTS_TimeDepedenceTypes EQUATIONS_SET_CONSTANTS::TimeDepedenceTypes
  !> \brief The equations time dependence type parameters
  !> \see EQUATIONS_SET_CONSTANTS,OPENCMISS_EquationsTimeDependenceTypes
  !>@{
  INTEGER(INTG), PARAMETER :: NUMBER_OF_EQUATIONS_TIME_TYPES=5 !<The number of equations time dependence types defined. \see EQUATIONS_SET_CONSTANTS_TimeDependenceTypes,EQUATIONS_SET_CONSTANTS
  INTEGER(INTG), PARAMETER :: EQUATIONS_STATIC=1 !<The equations are static and have no time dependence. \see EQUATIONS_SET_CONSTANTS_TimeDependenceTypes,EQUATIONS_SET_CONSTANTS
  INTEGER(INTG), PARAMETER :: EQUATIONS_QUASISTATIC=2 !<The equations are quasi-static. \see EQUATIONS_SET_CONSTANTS_TimeDependenceTypes,EQUATIONS_SET_CONSTANTS
  INTEGER(INTG), PARAMETER :: EQUATIONS_FIRST_ORDER_DYNAMIC=3 !<The equations are first order dynamic. \see EQUATIONS_SET_CONSTANTS_TimeDependenceTypes,EQUATIONS_SET_CONSTANTS
  INTEGER(INTG), PARAMETER :: EQUATIONS_SECOND_ORDER_DYNAMIC=4 !<The equations are a second order dynamic. \see EQUATIONS_SET_CONSTANTS_TimeDependenceTypes,EQUATIONS_ROUTINES
  INTEGER(INTG), PARAMETER :: EQUATIONS_TIME_STEPPING=5 !<The equations are for time stepping. \see EQUATIONS_SET_CONSTANTS_TimeDependenceTypes,EQUATIONS_ROUTINES
  !>@}
  
  !> \addtogroup EQUATIONS_SET_CONSTANTS_AnalyticFunctionTypes EQUATIONS_SET_CONSTANTS::AnalyticFunctionTypes
  !> \brief The analytic function types
  !> \see 
  !>@{
  !> \addtogroup EQUATIONS_SET_CONSTANTS_LaplaceAnalyticFunctionTypes EQUATIONS_SET_CONSTANTS:LaplaceAnalyticFunctionTypes
  !> \brief The analytic function types for a Laplace equation
  !>@{  
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_LAPLACE_EQUATION_TWO_DIM_1=1 !<u=x**2+2*x*y-y**2 
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_LAPLACE_EQUATION_TWO_DIM_2=2 !<u=cos(x)cosh(y)
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_LAPLACE_EQUATION_THREE_DIM_1=3 !<u=x**2-2*y**2+z**2
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_LAPLACE_EQUATION_THREE_DIM_2=4 !<u=cos(x)*cosh(y)*z
  !>@}
  !> \addtogroup EQUATIONS_SET_CONSTANTS_PoissonAnalyticFunctionTypes EQUATIONS_SET_CONSTANTS:PoissonAnalyticFunctionTypes
  !> \brief The analytic function types for a Poisson equation
  !>@{  
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_POISSON_EQUATION_TWO_DIM_1=1 !<u=ln(4/(x+y+1^2))
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_POISSON_EQUATION_TWO_DIM_2=2 !<u=tbd
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_POISSON_EQUATION_TWO_DIM_3=3 !<u=tbd
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_POISSON_EQUATION_THREE_DIM_1=4 !<u=ln(6/(x+y+z+1^2))
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_POISSON_EQUATION_THREE_DIM_2=5 !<u=tbd
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_POISSON_EQUATION_THREE_DIM_3=6 !<u=tbd, Pressure Poisson Equation (PPE)
  INTEGER(INTG), PARAMETER :: TEST_CASE_1=7 !<Test case setup to test Neumann Boundary Conditions with Poisson example
  !>@}
  !> \addtogroup EQUATIONS_SET_CONSTANTS_DiffusionAnalyticFunctionTypes EQUATIONS_SET_CONSTANTS:DiffusionAnalyticFunctionTypes
  !> \brief The analytic function types for a diffusion equation
  !>@{  
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_DIFFUSION_EQUATION_TWO_DIM_1=1 !<u=exp(-kt)*sin(sqrt(k)*(x*cos(phi)+y*sin(phi)))
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_LINEAR_SOURCE_DIFFUSION_EQUATION_THREE_DIM_1=2
  !>@}
  !> \addtogroup EQUATIONS_SET_CONSTANTS_AdvectionDiffusionAnalyticFunctionTypes EQUATIONS_SET_CONSTANTS:AdvectionDiffusionAnalyticFunctionTypes
  !> \brief The analytic function types for an advection-diffusion equation
  !>@{  
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_ADVECTION_DIFFUSION_EQUATION_TWO_DIM_1=1 !<u(x,y)=tanh(1 - alpha.(x.tan(Phi) - y)),this is a steady-state solution
  !>@}
  !> \addtogroup EQUATIONS_SET_CONSTANTS_LinearElasticityAnalyticFunctionTypes EQUATIONS_SET_CONSTANTS:LinearElasticityAnalyticFunctionTypes
  !> \brief The analytic function types for a Linear Elasticity equation
  !>@{
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_LINEAR_ELASTICITY_EQUATION_ONE_DIM_1=1
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_LINEAR_ELASTICITY_EQUATION_TWO_DIM_PLANE_STRESS_1=2
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_LINEAR_ELASTICITY_EQUATION_THREE_DIM_1=3
  !>@}
  !> \addtogroup EQUATIONS_SET_CONSTANTS_StokesAnalyticFunctionTypes EQUATIONS_SET_CONSTANTS:StokesAnalyticFunctionTypes
  !> \brief The analytic function types for a Stokes equation
  !>@{  
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_STOKES_EQUATION_TWO_DIM_1=1 !<u=tbd
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_STOKES_EQUATION_TWO_DIM_2=2 !<u=tbd
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_STOKES_EQUATION_TWO_DIM_3=3 !<u=tbd
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_STOKES_EQUATION_THREE_DIM_1=4 !<u=tbd
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_STOKES_EQUATION_THREE_DIM_2=5 !<u=tbd
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_STOKES_EQUATION_THREE_DIM_3=6 !<u=tbd
  !>@}
  !> \addtogroup EQUATIONS_SET_CONSTANTS_NavierStokesAnalyticFunctionTypes EQUATIONS_SET_CONSTANTS:NavierStokesAnalyticFunctionTypes
  !> \brief The analytic function types for a Navier-Stokes equation
  !>@{  
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_NAVIER_STOKES_EQUATION_TWO_DIM_1=1 !<u=tbd
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_NAVIER_STOKES_EQUATION_TWO_DIM_2=2 !<u=tbd
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_NAVIER_STOKES_EQUATION_TWO_DIM_3=3 !<u=tbd
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_NAVIER_STOKES_EQUATION_THREE_DIM_1=4 !<u=tbd
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_NAVIER_STOKES_EQUATION_THREE_DIM_2=5 !<u=tbd
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_NAVIER_STOKES_EQUATION_THREE_DIM_3=6 !<u=tbd
  !>@}
  !> \addtogroup EQUATIONS_SET_CONSTANTS_DarcyAnalyticFunctionTypes EQUATIONS_SET_CONSTANTS:DarcyAnalyticFunctionTypes
  !> \brief The analytic function types for a Darcy equation
  !>@{  
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_DARCY_EQUATION_TWO_DIM_1=1 !<u=tbd
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_DARCY_EQUATION_TWO_DIM_2=2 !<u=tbd
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_DARCY_EQUATION_TWO_DIM_3=3 !<u=tbd
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_DARCY_EQUATION_THREE_DIM_1=4 !<u=tbd
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_DARCY_EQUATION_THREE_DIM_2=5 !<u=tbd
  INTEGER(INTG), PARAMETER :: EQUATIONS_SET_DARCY_EQUATION_THREE_DIM_3=6 !<u=tbd
  !>@}
  !>@}

  
END MODULE EQUATIONS_SET_CONSTANTS

