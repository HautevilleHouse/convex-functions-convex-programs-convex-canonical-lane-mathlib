import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Analysis.Convex.Cone

namespace HautevilleHouse
namespace ConvexFunctionsConvexProgramsConvexCanonicalLaneLean

structure SecondOrderConePackage where
  underlyingSpace : Type u
  coneSet : Set underlyingSpace
  secondOrderConeProperty : Prop
  selfDual : Prop
  secondOrderConePropertyTerm : secondOrderConeProperty
  selfDualTerm : selfDual

structure SecondOrderConeEvidence (S : SecondOrderConePackage) where
  secondOrderConePropertyClosed : S.secondOrderConeProperty
  selfDualClosed : S.selfDual

def SecondOrderConeClosed (S : SecondOrderConePackage) : Prop :=
  S.secondOrderConeProperty ∧ S.selfDual

theorem second_order_cone_closed_from_evidence (S : SecondOrderConePackage) (E : SecondOrderConeEvidence S) : SecondOrderConeClosed S :=
  And.intro E.secondOrderConePropertyClosed E.selfDualClosed

end ConvexFunctionsConvexProgramsConvexCanonicalLaneLean
end HautevilleHouse