import canonicalLaneMathlib.AdmissibleClass
import ConvexFunctionsConvexProgramsConvexCanonicalLaneLean.ConvexProgramDefinition
import ConvexFunctionsConvexProgramsConvexCanonicalLaneLean.SubgradientAndConjugate

namespace HautevilleHouse
namespace ConvexFunctionsConvexProgramsConvexCanonicalLaneLean

structure KKT_OptimalityConditions (V : Type u) [NormedAddCommGroup V] [InnerProductSpace ℝ V] (P : ConvexProgram V) where
  primalSolution : V
  dualVariables : List (Dual V)
  stationarity : Prop
  complementarySlackness : Prop
  primalFeasibility : Prop
  dualFeasibility : Prop
  stationarityTerm : stationarity
  complementarySlacknessTerm : complementarySlackness
  primalFeasibilityTerm : primalFeasibility
  dualFeasibilityTerm : dualFeasibility

structure OptimalityConditionsEvidence (KKT : KKT_OptimalityConditions V P) where
  stationarityClosed : KKT.stationarity
  complementarySlacknessClosed : KKT.complementarySlackness
  primalFeasibilityClosed : KKT.primalFeasibility
  dualFeasibilityClosed : KKT.dualFeasibility

def OptimalityConditionsClosed (KKT : KKT_OptimalityConditions V P) : Prop :=
  KKT.stationarity ∧ KKT.complementarySlackness ∧ KKT.primalFeasibility ∧ KKT.dualFeasibility

theorem optimality_conditions_closed_from_evidence (KKT : KKT_OptimalityConditions V P) (E : OptimalityConditionsEvidence KKT) :
    OptimalityConditionsClosed KKT := by
  exact And.intro E.stationarityClosed (And.intro E.complementarySlacknessClosed (And.intro E.primalFeasibilityClosed E.dualFeasibilityClosed))

end ConvexFunctionsConvexProgramsConvexCanonicalLaneLean
end HautevilleHouse