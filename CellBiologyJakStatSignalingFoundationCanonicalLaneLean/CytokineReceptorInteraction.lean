import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyJakStatSignalingFoundationCanonicalLaneLean

structure CytokineReceptorPackage where
  cytokineType : Type u
  receptorType : Type v
  bindingAffinity : Prop
  conformationalChange : Prop
  receptorDimerization : Prop
  signalInitiation : Prop

structure CytokineReceptorEvidence (C : CytokineReceptorPackage) where
  bindingAffinityClosed : C.bindingAffinity
  conformationalChangeClosed : C.conformationalChange
  receptorDimerizationClosed : C.receptorDimerization
  signalInitiationClosed : C.signalInitiation

def CytokineReceptorClosed (C : CytokineReceptorPackage) : Prop :=
  C.bindingAffinity ∧ C.conformationalChange ∧ C.receptorDimerization ∧ C.signalInitiation

theorem cytokine_receptor_closed_from_evidence (C : CytokineReceptorPackage)
    (E : CytokineReceptorEvidence C) : CytokineReceptorClosed C := by
  exact And.intro E.bindingAffinityClosed
    (And.intro E.conformationalChangeClosed
      (And.intro E.receptorDimerizationClosed E.signalInitiationClosed))

end CellBiologyJakStatSignalingFoundationCanonicalLaneLean
end HautevilleHouse