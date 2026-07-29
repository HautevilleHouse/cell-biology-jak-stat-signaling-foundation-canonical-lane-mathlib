import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyJakStatSignalingFoundationCanonicalLaneLean

structure NegativeRegulationPackage where
  socsProtein : Type u
  piphosphatase : Type v
  proteinInhibitorOfActivatedStat : Prop
  ubiquitinProteasomeDegradation : Prop
  dephosphorylation : Prop

structure NegativeRegulationEvidence (N : NegativeRegulationPackage) where
  socsProteinClosed : N.socsProtein
  piphosphataseClosed : N.piphosphatase
  proteinInhibitorOfActivatedStatClosed : N.proteinInhibitorOfActivatedStat
  ubiquitinProteasomeDegradationClosed : N.ubiquitinProteasomeDegradation
  dephosphorylationClosed : N.dephosphorylation

def NegativeRegulationClosed (N : NegativeRegulationPackage) : Prop :=
  N.socsProtein ∧ N.piphosphatase ∧ N.proteinInhibitorOfActivatedStat ∧
  N.ubiquitinProteasomeDegradation ∧ N.dephosphorylation

theorem negative_regulation_closed_from_evidence (N : NegativeRegulationPackage)
    (E : NegativeRegulationEvidence N) : NegativeRegulationClosed N := by
  exact And.intro E.socsProteinClosed
    (And.intro E.piphosphataseClosed
      (And.intro E.proteinInhibitorOfActivatedStatClosed
        (And.intro E.ubiquitinProteasomeDegradationClosed E.dephosphorylationClosed)))

end CellBiologyJakStatSignalingFoundationCanonicalLaneLean
end HautevilleHouse