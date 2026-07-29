import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyJakStatSignalingFoundationCanonicalLaneLean

structure JAKPhosphorylationPackage where
  kinaseDomain : Prop
  transPhosphorylation : Prop
  activationLoopPhosphorylation : Prop
  kinaseCompetence : kinaseDomain ∧ transPhosphorylation ∧ activationLoopPhosphorylation

structure JAKPhosphorylationEvidence (J : JAKPhosphorylationPackage) where
  kinaseDomainClosed : J.kinaseDomain
  transPhosphorylationClosed : J.transPhosphorylation
  activationLoopPhosphorylationClosed : J.activationLoopPhosphorylation

def JAKPhosphorylationClosed (J : JAKPhosphorylationPackage) : Prop :=
  J.kinaseDomain ∧ J.transPhosphorylation ∧ J.activationLoopPhosphorylation

theorem jak_phosphorylation_closed_from_evidence (J : JAKPhosphorylationPackage)
    (E : JAKPhosphorylationEvidence J) : JAKPhosphorylationClosed J := by
  exact And.intro E.kinaseDomainClosed (And.intro E.transPhosphorylationClosed E.activationLoopPhosphorylationClosed)

end CellBiologyJakStatSignalingFoundationCanonicalLaneLean
end HautevilleHouse
