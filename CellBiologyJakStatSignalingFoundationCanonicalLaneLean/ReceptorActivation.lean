import CellBiologyJakStatSignalingFoundationCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyJakStatSignalingFoundationCanonicalLaneLean

structure ReceptorActivationPackage where
  ligandBinding : Prop
  receptorDimerization : Prop
  jakActivation : Prop
  phosphoTyrosineSites : Prop

structure ReceptorActivationEvidence (R : ReceptorActivationPackage) where
  ligandBindingClosed : R.ligandBinding
  receptorDimerizationClosed : R.receptorDimerization
  jakActivationClosed : R.jakActivation
  phosphoTyrosineSitesClosed : R.phosphoTyrosineSites

def ReceptorActivationClosed (R : ReceptorActivationPackage) : Prop :=
  R.ligandBinding ∧ R.receptorDimerization ∧ R.jakActivation ∧ R.phosphoTyrosineSites

theorem receptor_activation_closed_from_evidence
    (R : ReceptorActivationPackage) (E : ReceptorActivationEvidence R) :
    ReceptorActivationClosed R := by
  exact And.intro E.ligandBindingClosed
    (And.intro E.receptorDimerizationClosed
      (And.intro E.jakActivationClosed E.phosphoTyrosineSitesClosed))

end CellBiologyJakStatSignalingFoundationCanonicalLaneLean
end HautevilleHouse