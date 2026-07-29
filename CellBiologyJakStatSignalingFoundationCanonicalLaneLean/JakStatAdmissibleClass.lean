import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyJakStatSignalingFoundationCanonicalLaneLean

structure JakStatAdmittedObject where
  receptorDimerization : Prop
  janusKinaseActivation : Prop
  statPhosphorylation : Prop
  nuclearTranslocation : Prop
  conclusion : nuclearTranslocation

structure AdmissibleClass where
  object : JakStatAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  A.object.conclusion ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CellBiologyJakStatSignalingFoundationCanonicalLaneLean
end HautevilleHouse
