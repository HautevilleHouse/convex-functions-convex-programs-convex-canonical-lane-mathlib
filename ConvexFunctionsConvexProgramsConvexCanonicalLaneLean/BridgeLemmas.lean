import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvexFunctionsConvexProgramsConvexCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  ConvexWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end ConvexFunctionsConvexProgramsConvexCanonicalLaneLean
end HautevilleHouse