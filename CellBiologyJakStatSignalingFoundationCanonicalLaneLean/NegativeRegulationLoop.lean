import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyJakStatSignalingFoundationCanonicalLaneLean

structure NegativeRegulationLoop where
  phosphatase : Type u
  socsProtein : Type v
  piasProtein : Type w
  jakDephosphorylation : Prop
  socsMediatedInhibition : Prop
  piasSumoylation : Prop
  signalAttenuation : Prop
  dephosphorylationEvidence : jakDephosphorylation
  socsInhibitionEvidence : socsMediatedInhibition
  piasSumoylationEvidence : piasSumoylation
  attenuationEvidence : signalAttenuation

structure NegativeRegulationEvidence (R : NegativeRegulationLoop) where
  phosphataseRecruitedToReceptor : Prop
  socsExpressionInducedByStat : Prop
  piasModulatesStatActivity : Prop
  feedbackLoopClosed : Prop

def NegativeRegulationClosed (R : NegativeRegulationLoop) : Prop :=
  R.jakDephosphorylation ∧ R.socsMediatedInhibition ∧
  R.piasSumoylation ∧ R.signalAttenuation

theorem negative_regulation_closed_from_evidence
    (R : NegativeRegulationLoop) (E : NegativeRegulationEvidence R) :
    NegativeRegulationClosed R := by
  exact And.intro R.dephosphorylationEvidence
    (And.intro R.socsInhibitionEvidence
      (And.intro R.piasSumoylationEvidence R.attenuationEvidence))

end CellBiologyJakStatSignalingFoundationCanonicalLaneLean
end HautevilleHouse