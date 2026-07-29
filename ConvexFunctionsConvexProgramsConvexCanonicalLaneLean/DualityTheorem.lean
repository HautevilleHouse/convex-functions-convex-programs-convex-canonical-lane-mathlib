import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvexFunctionsConvexProgramsConvexCanonicalLaneLean

structure DualityTheoremPackage where
  primalProgram : ConvexProgramPackage
  dualProgram : ConvexProgramPackage
  strongDualityHolds : Prop
  zeroDualityGap : Prop

structure DualityTheoremEvidence (D : DualityTheoremPackage) where
  strongDualityHoldsClosed : D.strongDualityHolds
  zeroDualityGapClosed : D.zeroDualityGap

def DualityTheoremClosed (D : DualityTheoremPackage) : Prop :=
  D.strongDualityHolds ∧ D.zeroDualityGap

theorem duality_theorem_closed_from_evidence (D : DualityTheoremPackage) (E : DualityTheoremEvidence D) :
    DualityTheoremClosed D := by
  exact And.intro E.strongDualityHoldsClosed E.zeroDualityGapClosed

end ConvexFunctionsConvexProgramsConvexCanonicalLaneLean
end HautevilleHouse