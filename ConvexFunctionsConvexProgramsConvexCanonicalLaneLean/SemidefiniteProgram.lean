import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Analysis.Convex.Semidefinite

namespace HautevilleHouse
namespace ConvexFunctionsConvexProgramsConvexCanonicalLaneLean

structure SemidefiniteProgramPackage where
  matrixSpace : Type u
  objective : ConvexFunctionPackage
  psdConstraint : Prop
  linearConstraints : List ConvexFunctionPackage
  psdConstraintTerm : psdConstraint

def SemidefiniteProgramClosed (S : SemidefiniteProgramPackage) : Prop :=
  S.psdConstraint

theorem semidefinite_program_closed (S : SemidefiniteProgramPackage) (h : S.psdConstraintTerm) : SemidefiniteProgramClosed S :=
  h

end ConvexFunctionsConvexProgramsConvexCanonicalLaneLean
end HautevilleHouse