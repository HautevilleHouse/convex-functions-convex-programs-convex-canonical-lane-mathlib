import HautevilleHouse.ConvexFunctionsConvexProgramsConvexCanonicalLaneLean.ConvexAdmissibleClass

namespace HautevilleHouse
namespace ConvexFunctionsConvexProgramsConvexCanonicalLaneLean

def ConstrainedConvexClosure (A : ConvexAdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_convex_endgame (A : ConvexAdmissibleClass) : ConstrainedConvexClosure A :=
  And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end ConvexFunctionsConvexProgramsConvexCanonicalLaneLean
end HautevilleHouse