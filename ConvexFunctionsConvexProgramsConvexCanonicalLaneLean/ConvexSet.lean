import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvexFunctionsConvexProgramsConvexCanonicalLaneLean

structure ConvexSet (V : Type u) [AddCommGroup V] [Module ℝ V] where
  carrier : Set V
  convexCombination : ∀ (x y : V) (t : ℝ), t ∈ Set.Ioo (0 : ℝ) (1 : ℝ) → x ∈ carrier → y ∈ carrier → t • x + (1 - t) • y ∈ carrier

def convexSetClosed (V : Type u) [AddCommGroup V] [Module ℝ V] (C : ConvexSet V) : Prop :=
  C.convexCombination

end ConvexFunctionsConvexProgramsConvexCanonicalLaneLean
end HautevilleHouse