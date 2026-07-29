import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyJakStatSignalingFoundationCanonicalLaneLean

structure StatDimerizationPackage where
  statIsoform : Type u
  sh2Domain : Prop
  phosphotyrosineBinding : Prop
  dimerizationInterface : Prop
  nuclearTranslocation : Prop

structure StatDimerizationEvidence (S : StatDimerizationPackage) where
  sh2DomainClosed : S.sh2Domain
  phosphotyrosineBindingClosed : S.phosphotyrosineBinding
  dimerizationInterfaceClosed : S.dimerizationInterface
  nuclearTranslocationClosed : S.nuclearTranslocation

def StatDimerizationClosed (S : StatDimerizationPackage) : Prop :=
  S.sh2Domain ∧ S.phosphotyrosineBinding ∧ S.dimerizationInterface ∧ S.nuclearTranslocation

theorem stat_dimerization_closed_from_evidence (S : StatDimerizationPackage)
    (E : StatDimerizationEvidence S) : StatDimerizationClosed S := by
  exact And.intro E.sh2DomainClosed
    (And.intro E.phosphotyrosineBindingClosed
      (And.intro E.dimerizationInterfaceClosed E.nuclearTranslocationClosed))

end CellBiologyJakStatSignalingFoundationCanonicalLaneLean
end HautevilleHouse