import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Analysis.Convex.Duality

namespace HautevilleHouse
namespace ConvexFunctionsConvexProgramsConvexCanonicalLaneLean

structure DualityPackage where
  primalProgram : ConvexProgramPackage
  dualProgram : ConvexProgramPackage
  strongDuality : Prop
  weakDuality : Prop
  strongDualityTerm : strongDuality
  weakDualityTerm : weakDuality

structure DualityEvidence (D : DualityPackage) where
  strongDualityClosed : D.strongDuality
  weakDualityClosed : D.weakDuality

def DualityClosed (D : DualityPackage) : Prop :=
  D.strongDuality ∧ D.weakDuality

theorem duality_closed_from_evidence (D : DualityPackage) (E : DualityEvidence D) : DualityClosed D :=
  And.intro E.strongDualityClosed E.weakDualityClosed

end ConvexFunctionsConvexProgramsConvexCanonicalLaneLean
end HautevilleHouse