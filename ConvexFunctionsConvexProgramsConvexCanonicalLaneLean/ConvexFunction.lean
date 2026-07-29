import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvexFunctionsConvexProgramsConvexCanonicalLaneLean

structure ConvexFunctionPackage where
  domain : Type u
  codomain : Type v
  domainConvexSet : Prop
  functionDefined : domain → codomain
  convexInequality : Prop

structure ConvexFunctionEvidence (C : ConvexFunctionPackage) where
  domainConvexSetClosed : C.domainConvexSet
  convexInequalityClosed : C.convexInequality

def ConvexFunctionClosed (C : ConvexFunctionPackage) : Prop :=
  C.domainConvexSet ∧ C.convexInequality

theorem convex_function_closed_from_evidence (C : ConvexFunctionPackage) (E : ConvexFunctionEvidence C) :
    ConvexFunctionClosed C := by
  exact And.intro E.domainConvexSetClosed E.convexInequalityClosed

end ConvexFunctionsConvexProgramsConvexCanonicalLaneLean
end HautevilleHouse