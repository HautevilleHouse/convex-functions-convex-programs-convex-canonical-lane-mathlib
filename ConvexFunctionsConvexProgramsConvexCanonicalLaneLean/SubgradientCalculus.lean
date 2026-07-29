import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvexFunctionsConvexProgramsConvexCanonicalLaneLean

structure SubgradientCalculusPackage where
  functionSpace : Type u
  subgradientSet : Type v
  nonemptySubgradient : Prop
  subgradientInequality : Prop
  chainRule : Prop

structure SubgradientCalculusEvidence (S : SubgradientCalculusPackage) where
  nonemptySubgradientClosed : S.nonemptySubgradient
  subgradientInequalityClosed : S.subgradientInequality
  chainRuleClosed : S.chainRule

def SubgradientCalculusClosed (S : SubgradientCalculusPackage) : Prop :=
  S.nonemptySubgradient ∧ S.subgradientInequality ∧ S.chainRule

theorem subgradient_calculus_closed_from_evidence (S : SubgradientCalculusPackage)
    (E : SubgradientCalculusEvidence S) : SubgradientCalculusClosed S := by
  exact And.intro E.nonemptySubgradientClosed
    (And.intro E.subgradientInequalityClosed E.chainRuleClosed)

end ConvexFunctionsConvexProgramsConvexCanonicalLaneLean
end HautevilleHouse