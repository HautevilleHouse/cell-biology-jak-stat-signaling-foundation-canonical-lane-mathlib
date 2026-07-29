import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyJakStatSignalingFoundationCanonicalLaneLean

structure StatDimerizationPackage where
  phosphotyrosineBinding : Type u
  sh2Domain : Type v
  dimerFormation : Prop
  nuclearImport : Prop
  dnaBinding : Prop
  transcriptionalRegulation : Prop

structure StatDimerizationEvidence (S : StatDimerizationPackage) where
  dimerFormationClosed : S.dimerFormation
  nuclearImportClosed : S.nuclearImport
  dnaBindingClosed : S.dnaBinding
  transcriptionalRegulationClosed : S.transcriptionalRegulation

def StatDimerizationClosed (S : StatDimerizationPackage) : Prop :=
  S.dimerFormation ∧ S.nuclearImport ∧ S.dnaBinding ∧ S.transcriptionalRegulation

theorem stat_dimerization_closed_from_evidence (S : StatDimerizationPackage)
    (E : StatDimerizationEvidence S) : StatDimerizationClosed S := by
  exact And.intro E.dimerFormationClosed
    (And.intro E.nuclearImportClosed
      (And.intro E.dnaBindingClosed E.transcriptionalRegulationClosed))

end CellBiologyJakStatSignalingFoundationCanonicalLaneLean
end HautevilleHouse