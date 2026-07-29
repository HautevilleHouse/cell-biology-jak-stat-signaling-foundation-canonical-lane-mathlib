import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyJakStatSignalingFoundationCanonicalLaneLean

structure JakKinasePackage where
  kinaseDomain : Type u
  activationLoop : Type v
  phosphorylationSites : Type w
  transphosphorylation : Prop
  catalyticActivity : Prop
  statRecruitment : Prop

structure JakKinaseEvidence (J : JakKinasePackage) where
  transphosphorylationClosed : J.transphosphorylation
  catalyticActivityClosed : J.catalyticActivity
  statRecruitmentClosed : J.statRecruitment

def JakKinaseClosed (J : JakKinasePackage) : Prop :=
  J.transphosphorylation ∧ J.catalyticActivity ∧ J.statRecruitment

theorem jak_kinase_closed_from_evidence (J : JakKinasePackage) (E : JakKinaseEvidence J) :
    JakKinaseClosed J := by
  exact And.intro E.transphosphorylationClosed
    (And.intro E.catalyticActivityClosed E.statRecruitmentClosed)

end CellBiologyJakStatSignalingFoundationCanonicalLaneLean
end HautevilleHouse