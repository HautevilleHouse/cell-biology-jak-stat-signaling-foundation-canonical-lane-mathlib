import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyJakStatSignalingFoundationCanonicalLaneLean

structure JakStatSignalingPathway where
  receptor : Type u
  cytokine : Type v
  jakKinase : Type w
  statProtein : Type x
  signalCascade : Prop
  receptorActivation : Prop
  jakPhosphorylation : Prop
  statDimerization : Prop
  nuclearTranslocation : Prop
  geneExpressionRegulation : Prop

structure PathwayEvidence (P : JakStatSignalingPathway) where
  signalCascadeClosed : P.signalCascade
  receptorActivationClosed : P.receptorActivation
  jakPhosphorylationClosed : P.jakPhosphorylation
  statDimerizationClosed : P.statDimerization
  nuclearTranslocationClosed : P.nuclearTranslocation
  geneExpressionRegulationClosed : P.geneExpressionRegulation

def JakStatSignalingClosed (P : JakStatSignalingPathway) : Prop :=
  P.signalCascade ∧ P.receptorActivation ∧ P.jakPhosphorylation ∧
  P.statDimerization ∧ P.nuclearTranslocation ∧ P.geneExpressionRegulation

theorem jak_stat_signaling_closed_from_evidence (P : JakStatSignalingPathway)
    (E : PathwayEvidence P) : JakStatSignalingClosed P := by
  exact And.intro E.signalCascadeClosed
    (And.intro E.receptorActivationClosed
      (And.intro E.jakPhosphorylationClosed
        (And.intro E.statDimerizationClosed
          (And.intro E.nuclearTranslocationClosed
            E.geneExpressionRegulationClosed))))

end CellBiologyJakStatSignalingFoundationCanonicalLaneLean
end HautevilleHouse