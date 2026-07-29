import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ConvexFunctionsConvexProgramsConvexCanonicalLaneLean.ConvexSpace

namespace HautevilleHouse
namespace ConvexFunctionsConvexProgramsConvexCanonicalLaneLean

structure ConvexAdmittedObject where
  space : ConvexSpace ℝ
  program : ConvexProgram ℝ
  optimumAttained : Prop
  optimumValue : ℝ

structure ConvexAdmissibleClass where
  object : ConvexAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def convexWitnessClosed (A : ConvexAdmissibleClass) : Prop :=
  A.object.optimumAttained

def bridgeClosed (A : ConvexAdmissibleClass) : Prop :=
  convexWitnessClosed A

theorem bridge_from_admissible_class (A : ConvexAdmissibleClass) : bridgeClosed A :=
  A.object.optimumAttained

def gateClosed (A : ConvexAdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : ConvexAdmissibleClass) : gateClosed A :=
  A.gateWitness

end ConvexFunctionsConvexProgramsConvexCanonicalLaneLean
end HautevilleHouse