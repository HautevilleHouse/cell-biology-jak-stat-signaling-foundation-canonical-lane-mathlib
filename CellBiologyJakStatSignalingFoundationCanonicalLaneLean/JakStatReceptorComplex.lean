import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyJakStatSignalingFoundationCanonicalLaneLean

structure JakStatReceptorComplex where
  cytokineReceptor : Type u
  jakKinase : Type v
  receptorActivation : Prop
  jakBinding : Prop
  activationEvidence : receptorActivation
  bindingEvidence : jakBinding

structure ReceptorActivationEvidence (R : JakStatReceptorComplex) where
  ligandBindingInducesDimerization : Prop
  transphosphorylationOfJaks : Prop
  activationComplexFormed : Prop
  receptorActivationClosed : R.receptorActivation

def ReceptorActivationClosed (R : JakStatReceptorComplex) : Prop :=
  R.receptorActivation ∧ R.jakBinding

theorem receptor_activation_closed_from_evidence (R : JakStatReceptorComplex)
    (E : ReceptorActivationEvidence R) : ReceptorActivationClosed R := by
  exact And.intro E.receptorActivationClosed R.bindingEvidence

end CellBiologyJakStatSignalingFoundationCanonicalLaneLean
end HautevilleHouse