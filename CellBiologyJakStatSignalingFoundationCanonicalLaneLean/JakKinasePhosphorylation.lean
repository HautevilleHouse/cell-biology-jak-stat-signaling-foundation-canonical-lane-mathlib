import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyJakStatSignalingFoundationCanonicalLaneLean

structure JakKinasePhosphorylationPackage where
  kinaseDomain : Type u
  atpBinding : Prop
  catalyticLoop : Prop
  autoPhosphorylation : Prop
  transPhosphorylation : Prop

structure JakKinasePhosphorylationEvidence (K : JakKinasePhosphorylationPackage) where
  atpBindingClosed : K.atpBinding
  catalyticLoopClosed : K.catalyticLoop
  autoPhosphorylationClosed : K.autoPhosphorylation
  transPhosphorylationClosed : K.transPhosphorylation

def JakKinasePhosphorylationClosed (K : JakKinasePhosphorylationPackage) : Prop :=
  K.atpBinding ∧ K.catalyticLoop ∧ K.autoPhosphorylation ∧ K.transPhosphorylation

theorem jak_kinase_phosphorylation_closed_from_evidence (K : JakKinasePhosphorylationPackage)
    (E : JakKinasePhosphorylationEvidence K) : JakKinasePhosphorylationClosed K := by
  exact And.intro E.atpBindingClosed
    (And.intro E.catalyticLoopClosed
      (And.intro E.autoPhosphorylationClosed E.transPhosphorylationClosed))

end CellBiologyJakStatSignalingFoundationCanonicalLaneLean
end HautevilleHouse