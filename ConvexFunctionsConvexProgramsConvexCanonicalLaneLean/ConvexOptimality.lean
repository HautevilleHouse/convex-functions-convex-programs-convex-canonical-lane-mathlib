import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ConvexFunctionsConvexProgramsConvexCanonicalLaneLean.ConvexSpace

namespace HautevilleHouse
namespace ConvexFunctionsConvexProgramsConvexCanonicalLaneLean

structure KKTconditions (V : Type u) [AddCommGroup V] [Module ℝ V] (P : ConvexProgram V) (x : V) (λs : List ℝ) where
  primalFeasible : x ∈ P.feasibleSet.carrier
  dualFeasible : ∀ (λ : ℝ), λ ∈ λs → λ ≥ 0
  complementarySlackness : ∀ (λ : ℝ) (g : ConvexFunction V P.feasibleSet), λ ∈ λs → λ * g.toFun x = 0
  stationarity : 0 ∈ Submodule.span ℝ (P.objective.toFun · - ∑ λ in λs, λ * (P.constraints.get? ·).toFun ·)

theorem kkt_sufficient_optimality (V : Type u) [AddCommGroup V] [Module ℝ V] (P : ConvexProgram V) (x : V) (λs : List ℝ) (h : KKTconditions V P x λs) :
    P.objective.toFun x = ⨅ y ∈ P.feasibleSet.carrier, P.objective.toFun y := by
  sorry

end ConvexFunctionsConvexProgramsConvexCanonicalLaneLean
end HautevilleHouse