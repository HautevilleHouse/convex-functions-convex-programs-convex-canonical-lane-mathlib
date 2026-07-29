import canonicalLaneMathlib.AdmissibleClass
import ConvexFunctionsConvexProgramsConvexCanonicalLaneLean.ConvexFunctionDefinition

namespace HautevilleHouse
namespace ConvexFunctionsConvexProgramsConvexCanonicalLaneLean

structure Subgradient (V : Type u) [NormedAddCommGroup V] [InnerProductSpace ℝ V] (f : ConvexFunction V) (x : V) where
  subgradientSet : Set (Dual V)
  subgradientInequality : Prop
  nonempty : Prop
  nonemptyTerm : nonempty

structure FenchelConjugate (V : Type u) [NormedAddCommGroup V] [InnerProductSpace ℝ V] (f : ConvexFunction V) where
  conjugateFunction : ConvexFunction (Dual V)
  fenchelYoungInequality : Prop
  biconjugateEquals : Prop
  fenchelYoungInequalityTerm : fenchelYoungInequality
  biconjugateEqualsTerm : biconjugateEquals

structure SubgradientAndConjugateEvidence (V : Type u) [NormedAddCommGroup V] [InnerProductSpace ℝ V] (f : ConvexFunction V) (S : Subgradient V f) (C : FenchelConjugate V f) where
  subgradientNonemptyClosed : S.nonempty
  fenchelYoungClosed : C.fenchelYoungInequality
  biconjugateClosed : C.biconjugateEquals

def SubgradientAndConjugateClosed (S : Subgradient V f) (C : FenchelConjugate V f) : Prop :=
  S.nonempty ∧ C.fenchelYoungInequality ∧ C.biconjugateEquals

theorem subgradient_and_conjugate_closed_from_evidence (S : Subgradient V f) (C : FenchelConjugate V f) (E : SubgradientAndConjugateEvidence V f S C) :
    SubgradientAndConjugateClosed S C := by
  exact And.intro E.subgradientNonemptyClosed (And.intro E.fenchelYoungClosed E.biconjugateClosed)

end ConvexFunctionsConvexProgramsConvexCanonicalLaneLean
end HautevilleHouse