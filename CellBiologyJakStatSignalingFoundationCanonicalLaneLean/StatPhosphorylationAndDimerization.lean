import CellBiologyJakStatSignalingFoundationCanonicalLaneLean.ReceptorActivation

namespace HautevilleHouse
namespace CellBiologyJakStatSignalingFoundationCanonicalLaneLean

structure StatPhosphorylationDimerizationPackage
    {R : ReceptorActivationPackage} where
  statRecruitment : Prop
  jakMediatedPhosphorylation : Prop
  statDimerization : Prop
  phosphotyrosineSH2Interaction : Prop

structure StatPhosphorylationDimerizationEvidence
    {R : ReceptorActivationPackage}
    (S : StatPhosphorylationDimerizationPackage R) where
  statRecruitmentClosed : S.statRecruitment
  jakMediatedPhosphorylationClosed : S.jakMediatedPhosphorylation
  statDimerizationClosed : S.statDimerization
  phosphotyrosineSH2InteractionClosed : S.phosphotyrosineSH2Interaction

def StatPhosphorylationDimerizationClosed
    {R : ReceptorActivationPackage}
    (S : StatPhosphorylationDimerizationPackage R) : Prop :=
  S.statRecruitment ∧ S.jakMediatedPhosphorylation ∧ S.statDimerization ∧ S.phosphotyrosineSH2Interaction

theorem stat_phosphorylation_dimerization_closed_from_evidence
    {R : ReceptorActivationPackage}
    (S : StatPhosphorylationDimerizationPackage R)
    (E : StatPhosphorylationDimerizationEvidence S) :
    StatPhosphorylationDimerizationClosed S := by
  exact And.intro E.statRecruitmentClosed
    (And.intro E.jakMediatedPhosphorylationClosed
      (And.intro E.statDimerizationClosed E.phosphotyrosineSH2InteractionClosed))

end CellBiologyJakStatSignalingFoundationCanonicalLaneLean
end HautevilleHouse