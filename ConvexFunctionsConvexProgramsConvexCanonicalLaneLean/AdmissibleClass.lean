import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvexFunctionsConvexProgramsConvexCanonicalLaneLean

structure AdmissibleClass where
  object : ConvexAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  ConvexWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end ConvexFunctionsConvexProgramsConvexCanonicalLaneLean
end HautevilleHouse