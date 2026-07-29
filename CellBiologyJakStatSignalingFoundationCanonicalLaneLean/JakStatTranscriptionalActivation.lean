import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyJakStatSignalingFoundationCanonicalLaneLean

structure JakStatTranscriptionalActivation where
  promoterElement : Type u
  statBindingElement : Type v
  transcriptionalActivity : Prop
  geneExpressionInduced : Prop
  dnaBindingAffinity : Prop
  promoterBindingEvidence : dnaBindingAffinity
  transcriptionEvidence : transcriptionalActivity
  geneExpressionEvidence : geneExpressionInduced

structure TranscriptionalActivationEvidence
    (T : JakStatTranscriptionalActivation) where
  statDimerBindsPromoter : Prop
  recruitmentOfCoactivators : Prop
  rnapIIEngagement : Prop

def JakStatTranscriptionalActivationClosed (T : JakStatTranscriptionalActivation) : Prop :=
  T.dnaBindingAffinity ∧ T.transcriptionalActivity ∧ T.geneExpressionInduced

theorem jak_stat_transcriptional_activation_closed_from_evidence
    (T : JakStatTranscriptionalActivation)
    (E : TranscriptionalActivationEvidence T) :
    JakStatTranscriptionalActivationClosed T := by
  exact And.intro T.promoterBindingEvidence
    (And.intro T.transcriptionEvidence T.geneExpressionEvidence)

end CellBiologyJakStatSignalingFoundationCanonicalLaneLean
end HautevilleHouse