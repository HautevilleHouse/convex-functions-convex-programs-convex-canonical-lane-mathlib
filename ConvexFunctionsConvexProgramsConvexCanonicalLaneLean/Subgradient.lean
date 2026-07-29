import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ConvexFunctionsConvexProgramsConvexCanonicalLaneLean.ConvexFunction

namespace HautevilleHouse
namespace ConvexFunctionsConvexProgramsConvexCanonicalLaneLean

structure Subgradient (C : ConvexFunction) (x : C.domain) where
  g : C.domain → C.codomain
  subgradientInequality : ∀ (y : C.domain), y ∈ C.convexSet → C.f y ≥ C.f x + g (y - x)

structure SubgradientSet (C : ConvexFunction) (x : C.domain) where
  subgradients : Set (Subgradient C x)
  nonempty : Subgradient C x ∈ subgradients

def subgradientClosed (C : ConvexFunction) (x : C.domain) (S : SubgradientSet C x) : Prop :=
  S.nonempty

end ConvexFunctionsConvexProgramsConvexCanonicalLaneLean
end HautevilleHouse