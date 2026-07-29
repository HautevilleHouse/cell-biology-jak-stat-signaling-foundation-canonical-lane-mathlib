import HautevilleHouse.CellBiologyJakStatSignalingFoundationCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace CellBiologyJakStatSignalingFoundationCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end CellBiologyJakStatSignalingFoundationCanonicalLaneLean
end HautevilleHouse
