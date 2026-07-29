import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyJakStatSignalingFoundationCanonicalLaneLean

structure STATRecruitmentPackage where
  srcHomology2Domain : Prop
  phosphotyrosineBinding : Prop
  recruitmentCompetence : srcHomology2Domain ∧ phosphotyrosineBinding

structure STATRecruitmentEvidence (S : STATRecruitmentPackage) where
  srcHomology2DomainClosed : S.srcHomology2Domain
  phosphotyrosineBindingClosed : S.phosphotyrosineBinding

def STATRecruitmentClosed (S : STATRecruitmentPackage) : Prop :=
  S.srcHomology2Domain ∧ S.phosphotyrosineBinding

theorem stat_recruitment_closed_from_evidence (S : STATRecruitmentPackage)
    (E : STATRecruitmentEvidence S) : STATRecruitmentClosed S := by
  exact And.intro E.srcHomology2DomainClosed E.phosphotyrosineBindingClosed

end CellBiologyJakStatSignalingFoundationCanonicalLaneLean
end HautevilleHouse
