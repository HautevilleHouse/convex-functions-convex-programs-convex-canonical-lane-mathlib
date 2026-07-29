import canonicalLaneMathlib.AdmissibleClass
import ConvexFunctionsConvexProgramsConvexCanonicalLaneLean.ConvexFunctionDefinition

namespace HautevilleHouse
namespace ConvexFunctionsConvexProgramsConvexCanonicalLaneLean

structure ConvexProgram (V : Type u) [AddCommMonoid V] [SMul ℝ V] where
  objective : ConvexFunction V
  constraints : List (ConvexFunction V)
  feasibleSet : Set V
  optimalValue : ℝ
  existenceOfSolution : Prop
  strongDualityHolds : Prop
  existenceOfSolutionTerm : existenceOfSolution
  strongDualityHoldsTerm : strongDualityHolds

structure ConvexProgramEvidence (P : ConvexProgram V) where
  feasibleSetClosed : P.feasibleSet = ⋂ f ∈ P.constraints, f.domain
  objectiveClosed : ConvexFunctionClosed P.objective
  constraintsClosed : ∀ f ∈ P.constraints, ConvexFunctionClosed f
  existenceOfSolutionClosed : P.existenceOfSolution
  strongDualityHoldsClosed : P.strongDualityHolds

def ConvexProgramClosed (P : ConvexProgram V) : Prop :=
  ConvexFunctionClosed P.objective ∧
  (∀ f ∈ P.constraints, ConvexFunctionClosed f) ∧
  P.existenceOfSolution ∧ P.strongDualityHolds

theorem convex_program_closed_from_evidence (P : ConvexProgram V) (E : ConvexProgramEvidence P) :
    ConvexProgramClosed P := by
  refine And.intro E.objectiveClosed ?_
  refine And.intro ?_ (And.intro E.existenceOfSolutionClosed E.strongDualityHoldsClosed)
  intro f hf
  exact E.constraintsClosed f hf

end ConvexFunctionsConvexProgramsConvexCanonicalLaneLean
end HautevilleHouse