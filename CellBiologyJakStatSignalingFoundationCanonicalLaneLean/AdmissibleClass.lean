import CellBiologyJakStatSignalingFoundationCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace CellBiologyJakStatSignalingFoundationCanonicalLaneLean

structure AdmissibleClass where
  object : JakStatAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  JakStatWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CellBiologyJakStatSignalingFoundationCanonicalLaneLean
end HautevilleHouse