import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvexFunctionsConvexProgramsConvexCanonicalLaneLean

structure ConvexFunction (V : Type u) [AddCommMonoid V] [SMul ℝ V] where
  domain : Set V
  epigraph : Set (V × ℝ)
  convexDomain : Convex ℝ domain
  convexEpigraph : Convex ℝ epigraph
  proper : Prop
  lowerSemicontinuous : Prop
  properTerm : proper
  lowerSemicontinuousTerm : lowerSemicontinuous

structure ConvexFunctionEvidence (f : ConvexFunction V) where
  convexDomainClosed : f.convexDomain
  convexEpigraphClosed : f.convexEpigraph
  properClosed : f.proper
  lowerSemicontinuousClosed : f.lowerSemicontinuous

def ConvexFunctionClosed (f : ConvexFunction V) : Prop :=
  f.convexDomain ∧ f.convexEpigraph ∧ f.proper ∧ f.lowerSemicontinuous

theorem convex_function_closed_from_evidence (f : ConvexFunction V) (E : ConvexFunctionEvidence f) :
    ConvexFunctionClosed f := by
  exact And.intro E.convexDomainClosed
    (And.intro E.convexEpigraphClosed
      (And.intro E.properClosed E.lowerSemicontinuousClosed))

end ConvexFunctionsConvexProgramsConvexCanonicalLaneLean
end HautevilleHouse