import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyJakStatSignalingFoundationCanonicalLaneLean

structure GeneTranscriptionPackage where
  dnaBindingDomain : Type u
  interferonStimulatedResponseElement : Prop
  gammaActivatedSequence : Prop
  transcriptionalActivationDomain : Prop
  targetGeneExpression : Prop

structure GeneTranscriptionEvidence (G : GeneTranscriptionPackage) where
  interferonStimulatedResponseElementClosed : G.interferonStimulatedResponseElement
  gammaActivatedSequenceClosed : G.gammaActivatedSequence
  transcriptionalActivationDomainClosed : G.transcriptionalActivationDomain
  targetGeneExpressionClosed : G.targetGeneExpression

def GeneTranscriptionClosed (G : GeneTranscriptionPackage) : Prop :=
  G.interferonStimulatedResponseElement ∧ G.gammaActivatedSequence ∧
  G.transcriptionalActivationDomain ∧ G.targetGeneExpression

theorem gene_transcription_closed_from_evidence (G : GeneTranscriptionPackage)
    (E : GeneTranscriptionEvidence G) : GeneTranscriptionClosed G := by
  exact And.intro E.interferonStimulatedResponseElementClosed
    (And.intro E.gammaActivatedSequenceClosed
      (And.intro E.transcriptionalActivationDomainClosed E.targetGeneExpressionClosed))

end CellBiologyJakStatSignalingFoundationCanonicalLaneLean
end HautevilleHouse