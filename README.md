# discrete-mumford-shah



***************************************************************************
* author: Marion Foare                                                    *
* institution: laboratoire de Physique de l'ENS de Lyon                   *
* date: June 8 2018                                                       *
* License CeCILL-B                                                        *
***************************************************************************
*********************************************************
* RECOMMENDATIONS:                                   	*
* This toolbox is designed to work with Matlab 2015.b   *
*********************************************************

------------------------------------------------------------------------------------------------------------------------
DESCRIPTION:
The Mumford-Shah model is a standard model in image segmentation and many approximations have been proposed in order to approximate it. The major interest of this functional is to be able to perform jointly image restoration and contour detection. In this work, we propose a general formulation of the discrete counterpart of the Mumford-Shah functional, adapted to nonsmooth penalizations, fitting the assumptions required by the Proximal Alternating Linearized Minimization (PALM), with convergence guarantees. A second contribution aims to relax some assumptions on the involved functionals and derive a novel Semi-Linearized Proximal Alternated Minimization (SL-PAM) algorithm, with proved convergence. We compare the performances of the algorithm with several nonsmooth penalizations, for Gaussian and Poisson denoising, image restoration and RGB-color denoising. We compare the results with state-of-the-art convex relaxations of the Mumford-Shah functional, and a discrete version of the Ambrosio-Tortorelli functional. We show that the SL-PAM algorithm is faster than the original PALM algorithm, and leads to competitive denoising, restoration and segmentation results. 

------------------------------------------------------------------------------------------------------------------------
SPECIFICATIONS for using MPMP toolbox:

The main function is "dms.m".

Several demo files are provided in examples :
- ex1 : cameraman Gaussian denoising and contour extraction
- ex2 : simulated image Gaussian denoising and contour extraction
- ex3 : color image Gaussian denoising and contour extraction
- ex4 : simulated image Poisson denoising and contour extraction
- ex5 : muscle image Poisson denoising and contour extraction
- ex6 : simulated image Gaussian denoising, debluring and contour extraction
- ex7 : muscle image Gaussian denoising, debluring and contour extraction

------------------------------------------------------------------------------------------------------------------------
RELATED PUBLICATION:

# M. Foare, N. Pustelnik, L. Condat, "Semi-Linearized Proximal 
%   Alternating Minimization for a Discrete Mumford-Shah Model", 
%   submitted to IEEE Transactions on Image Processing, Apr. 2018.

------------------------------------------------------------------------------------------------------------------------
