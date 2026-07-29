import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ConvexFunctionsConvexProgramsConvexCanonicalLaneLean.ConvexProgram

namespace HautevilleHouse
namespace ConvexFunctionsConvexProgramsConvexCanonicalLaneLean

structure KKTMultipliers (P : ConvexProgram) where
  lagrangeMultipliers : List (P.objective.domain → ℝ)
  complementarySlackness : Prop
  stationarity : Prop
  primalFeasibility : Prop
  dualFeasibility : Prop

structure KKTCertificate (P : ConvexProgram) (K : KKTMultipliers P) where
  complementarySlacknessClosed : K.complementarySlackness
  stationarityClosed : K.stationarity
  primalFeasibilityClosed : K.primalFeasibility
  dualFeasibilityClosed : K.dualFeasibility

def kktClosed (P : ConvexProgram) (K : KKTMultipliers P) : Prop :=
  K.complementarySlackness ∧ K.stationarity ∧ K.primalFeasibility ∧ K.dualFeasibility

end ConvexFunctionsConvexProgramsConvexCanonicalLaneLean
end HautevilleHouse