import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ConvexFunctionsConvexProgramsConvexCanonicalLaneLean.ConvexProgram

namespace HautevilleHouse
namespace ConvexFunctionsConvexProgramsConvexCanonicalLaneLean

def ConstrainedConvexClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_convex_endgame (A : AdmissibleClass) : ConstrainedConvexClosure A :=
  And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end ConvexFunctionsConvexProgramsConvexCanonicalLaneLean
end HautevilleHouse