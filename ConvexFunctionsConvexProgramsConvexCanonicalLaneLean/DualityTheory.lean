import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ConvexFunctionsConvexProgramsConvexCanonicalLaneLean.ConvexProgram

namespace HautevilleHouse
namespace ConvexFunctionsConvexProgramsConvexCanonicalLaneLean

structure DualProgram (P : ConvexProgram) where
  dualObjective : (P.objective.domain → ℝ) → ℝ
  dualFeasible : Set (P.objective.domain → ℝ)
  weakDuality : ∀ (λ : P.objective.domain → ℝ), λ ∈ dualFeasible → dualObjective λ ≤ P.optimalValue
  strongDualityHolds : Prop

structure DualityCertificate (P : ConvexProgram) (D : DualProgram P) where
  weakDualityClosed : D.weakDuality
  strongDualityClosed : D.strongDualityHolds

def dualityClosed (P : ConvexProgram) (D : DualProgram P) : Prop :=
  D.weakDuality ∧ D.strongDualityHolds

end ConvexFunctionsConvexProgramsConvexCanonicalLaneLean
end HautevilleHouse