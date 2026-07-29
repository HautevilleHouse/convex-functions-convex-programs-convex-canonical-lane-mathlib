import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvexFunctionsConvexProgramsConvexCanonicalLaneLean

structure FenchelDualityPackage where
  primalProblem : Type
  dualProblem : Type
  strongDualityHolds : Prop
  constraintQualification : Prop
  optimalityConditions : Prop

structure FenchelDualityEvidence (F : FenchelDualityPackage) where
  strongDualityHoldsClosed : F.strongDualityHolds
  constraintQualificationClosed : F.constraintQualification
  optimalityConditionsClosed : F.optimalityConditions

def FenchelDualityClosed (F : FenchelDualityPackage) : Prop :=
  F.strongDualityHolds ∧ F.constraintQualification ∧ F.optimalityConditions

theorem fenchel_duality_closed_from_evidence (F : FenchelDualityPackage)
    (E : FenchelDualityEvidence F) : FenchelDualityClosed F := by
  exact And.intro E.strongDualityHoldsClosed
    (And.intro E.constraintQualificationClosed E.optimalityConditionsClosed)

end ConvexFunctionsConvexProgramsConvexCanonicalLaneLean
end HautevilleHouse