import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ConvexFunctionsConvexProgramsConvexCanonicalLaneLean.ConvexSpace

namespace HautevilleHouse
namespace ConvexFunctionsConvexProgramsConvexCanonicalLaneLean

structure ConjugatePair (V : Type u) [AddCommGroup V] [Module ℝ V] (f : V → ℝ) where
  conjugate : Module.Dual ℝ V → ℝ
  fenchelInequality : ∀ (x : V) (y : Module.Dual ℝ V), conjugate y + f x ≥ y x
  conjugateClosed : ∀ (y : Module.Dual ℝ V), conjugate y = ⨆ x : V, (y x - f x)

def FenchelDuality (V : Type u) [AddCommGroup V] [Module ℝ V] (f g : V → ℝ) : Prop :=
  ∀ (x : V) (y : Module.Dual ℝ V), f x + g (x - (Module.Dual.eval y).toFun) ≥ y x

structure DualityGap (V : Type u) [AddCommGroup V] [Module ℝ V] (P : ConvexProgram V) (dualVal : ℝ) where
  primalOptimum : ℝ
  dualityGap : primalOptimum - dualVal ≥ 0
  strongDuality : primalOptimum = dualVal

end ConvexFunctionsConvexProgramsConvexCanonicalLaneLean
end HautevilleHouse