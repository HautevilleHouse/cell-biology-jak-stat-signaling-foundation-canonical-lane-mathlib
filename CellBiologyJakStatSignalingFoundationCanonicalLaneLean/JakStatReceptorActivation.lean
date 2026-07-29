import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyJakStatSignalingFoundationCanonicalLaneLean

structure JakStatReceptorPackage where
  receptorType : Type u
  ligandBinding : Prop
  receptorDimerization : Prop
  jakActivation : Prop
  statRecruitment : Prop

structure JakStatReceptorEvidence (R : JakStatReceptorPackage) where
  ligandBindingClosed : R.ligandBinding
  receptorDimerizationClosed : R.receptorDimerization
  jakActivationClosed : R.jakActivation
  statRecruitmentClosed : R.statRecruitment

def JakStatReceptorClosed (R : JakStatReceptorPackage) : Prop :=
  R.ligandBinding ∧ R.receptorDimerization ∧ R.jakActivation ∧ R.statRecruitment

theorem jak_stat_receptor_closed_from_evidence (R : JakStatReceptorPackage) 
    (E : JakStatReceptorEvidence R) : JakStatReceptorClosed R := by
  exact And.intro E.ligandBindingClosed
    (And.intro E.receptorDimerizationClosed
      (And.intro E.jakActivationClosed E.statRecruitmentClosed))

end CellBiologyJakStatSignalingFoundationCanonicalLaneLean
end HautevilleHouse