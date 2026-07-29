import canonicalLaneMathlib.AdmissibleClass
import ConvexFunctionsConvexProgramsConvexCanonicalLaneLean.ConvexFunctionDefinition

namespace HautevilleHouse
namespace ConvexFunctionsConvexProgramsConvexCanonicalLaneLean

structure ProximalOperator (V : Type u) [NormedAddCommGroup V] [InnerProductSpace ℝ V] (f : ConvexFunction V) where
  proximalMap : ℝ → V → V
  resolventIdentity : Prop
  firmlyNonexpansive : Prop
  resolventIdentityTerm : resolventIdentity
  firmlyNonexpansiveTerm : firmlyNonexpansive

structure ProximalEvidence (P : ProximalOperator V f) where
  resolventIdentityClosed : P.resolventIdentity
  firmlyNonexpansiveClosed : P.firmlyNonexpansive

def ProximalClosed (P : ProximalOperator V f) : Prop :=
  P.resolventIdentity ∧ P.firmlyNonexpansive

theorem proximal_closed_from_evidence (P : ProximalOperator V f) (E : ProximalEvidence P) :
    ProximalClosed P := by
  exact And.intro E.resolventIdentityClosed E.firmlyNonexpansiveClosed

end ConvexFunctionsConvexProgramsConvexCanonicalLaneLean
end HautevilleHouse