function bounds = alphaboundaries(family);
%
%   FUNCTION BOUNDS, FUNC = ALPHABOUNDARIES(FAMILY)
%
%   Return limits of the parameter domain spanned by a given copula
%   family.
% 
%   INPUT
%       FAMILY: One from {'AMH' 'Arch12' 'Arch14' 'Clayton' 'FGM' 'Frank'
%               'Gaussian' 'Gumbel' 't'}
%
%   OUTPUT
%       BOUNDS: [alpha_min, alpha_max]
%               Domain spanned by copula parameter for FAMILY.
%

%   D. Huard, Nov. 2006
%   Pourquoi tau_max de amh etait a .3269 au lieu de 1/3 ?

taubounds = tauboundaries(family);
bounds = copulaparam(family, taubounds);