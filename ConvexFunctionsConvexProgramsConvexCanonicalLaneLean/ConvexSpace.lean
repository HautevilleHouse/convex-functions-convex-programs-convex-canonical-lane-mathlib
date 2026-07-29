import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvexFunctionsConvexProgramsConvexCanonicalLaneLean

structure ConvexSpace (V : Type u) [AddCommMonoid V] [Module ℝ V] where
  carrier : Set V
  convex : ∀ (x y : V), x ∈ carrier → y ∈ carrier → ∀ (t : ℝ), t ≥ 0 → t ≤ 1 → t • x + (1 - t) • y ∈ carrier

structure ConvexFunction (V : Type u) [AddCommMonoid V] [Module ℝ V] (Ω : ConvexSpace V) where
  toFun : V → ℝ
  convex : ∀ (x y : V), x ∈ Ω.carrier → y ∈ Ω.carrier → ∀ (t : ℝ), t ≥ 0 → t ≤ 1 →
    toFun (t • x + (1 - t) • y) ≤ t * toFun x + (1 - t) * toFun y

structure ConvexProgram (V : Type u) [AddCommMonoid V] [Module ℝ V] where
  feasibleSet : ConvexSpace V
  objective : ConvexFunction V feasibleSet
  constraints : List (ConvexFunction V feasibleSet)

end ConvexFunctionsConvexProgramsConvexCanonicalLaneLean
end HautevilleHouse