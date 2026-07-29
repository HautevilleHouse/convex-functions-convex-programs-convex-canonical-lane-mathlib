import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvexFunctionsConvexProgramsConvexCanonicalLaneLean

structure ConjugateConvexFunctionsPackage where
  functionType : Type u
  conjugateFunction : functionType → functionType
  fenchelYoungInequality : Prop
  biconjugateRecovery : Prop
  closureUnderConjugation : Prop

structure ConjugateConvexFunctionsEvidence (C : ConjugateConvexFunctionsPackage) where
  fenchelYoungInequalityClosed : C.fenchelYoungInequality
  biconjugateRecoveryClosed : C.biconjugateRecovery
  closureUnderConjugationClosed : C.closureUnderConjugation

def ConjugateConvexFunctionsClosed (C : ConjugateConvexFunctionsPackage) : Prop :=
  C.fenchelYoungInequality ∧ C.biconjugateRecovery ∧ C.closureUnderConjugation

theorem conjugate_convex_functions_closed_from_evidence
    (C : ConjugateConvexFunctionsPackage)
    (E : ConjugateConvexFunctionsEvidence C) : ConjugateConvexFunctionsClosed C := by
  exact And.intro E.fenchelYoungInequalityClosed
    (And.intro E.biconjugateRecoveryClosed E.closureUnderConjugationClosed)

end ConvexFunctionsConvexProgramsConvexCanonicalLaneLean
end HautevilleHouse