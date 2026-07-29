import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvexFunctionsConvexProgramsConvexCanonicalLaneLean

structure ConvexFunctionSpacePackage where
  domainType : Type u
  codomainType : Type v
  vectorSpaceStructure : Prop
  convexCone : Set (domainType → codomainType)
  closureUnderLimits : Prop
  includesIndicators : Prop

structure ConvexFunctionSpaceEvidence (C : ConvexFunctionSpacePackage) where
  vectorSpaceStructureClosed : C.vectorSpaceStructure
  closureUnderLimitsClosed : C.closureUnderLimits
  includesIndicatorsClosed : C.includesIndicators

def ConvexFunctionSpaceClosed (C : ConvexFunctionSpacePackage) : Prop :=
  C.vectorSpaceStructure ∧ C.closureUnderLimits ∧ C.includesIndicators

theorem convex_function_space_closed_from_evidence (C : ConvexFunctionSpacePackage)
    (E : ConvexFunctionSpaceEvidence C) : ConvexFunctionSpaceClosed C := by
  exact And.intro E.vectorSpaceStructureClosed
    (And.intro E.closureUnderLimitsClosed E.includesIndicatorsClosed)

end ConvexFunctionsConvexProgramsConvexCanonicalLaneLean
end HautevilleHouse