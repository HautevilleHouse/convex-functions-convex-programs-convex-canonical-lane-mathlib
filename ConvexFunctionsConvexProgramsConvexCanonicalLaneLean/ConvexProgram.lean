import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvexFunctionsConvexProgramsConvexCanonicalLaneLean

structure ConvexProgramPackage where
  objectiveFunction : Type u → Type v
  constraintFunctions : List (Type u → Type v)
  feasibleSetDefined : Prop
  convexObjective : Prop
  convexConstraints : Prop

structure ConvexProgramEvidence (P : ConvexProgramPackage) where
  feasibleSetDefinedClosed : P.feasibleSetDefined
  convexObjectiveClosed : P.convexObjective
  convexConstraintsClosed : P.convexConstraints

def ConvexProgramClosed (P : ConvexProgramPackage) : Prop :=
  P.feasibleSetDefined ∧ P.convexObjective ∧ P.convexConstraints

theorem convex_program_closed_from_evidence (P : ConvexProgramPackage) (E : ConvexProgramEvidence P) :
    ConvexProgramClosed P := by
  exact And.intro E.feasibleSetDefinedClosed (And.intro E.convexObjectiveClosed E.convexConstraintsClosed)

end ConvexFunctionsConvexProgramsConvexCanonicalLaneLean
end HautevilleHouse