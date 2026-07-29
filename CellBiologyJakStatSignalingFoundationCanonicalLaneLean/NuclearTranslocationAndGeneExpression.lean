import CellBiologyJakStatSignalingFoundationCanonicalLaneLean.StatPhosphorylationAndDimerization

namespace HautevilleHouse
namespace CellBiologyJakStatSignalingFoundationCanonicalLaneLean

structure NuclearTranslocationGeneExpressionPackage
    {R : ReceptorActivationPackage}
    {S : StatPhosphorylationDimerizationPackage R} where
  nuclearImport : Prop
  dimerTranslocation : Prop
  dnaBinding : Prop
  targetGeneActivation : Prop

structure NuclearTranslocationGeneExpressionEvidence
    {R : ReceptorActivationPackage}
    {S : StatPhosphorylationDimerizationPackage R}
    (N : NuclearTranslocationGeneExpressionPackage S) where
  nuclearImportClosed : N.nuclearImport
  dimerTranslocationClosed : N.dimerTranslocation
  dnaBindingClosed : N.dnaBinding
  targetGeneActivationClosed : N.targetGeneActivation

def NuclearTranslocationGeneExpressionClosed
    {R : ReceptorActivationPackage}
    {S : StatPhosphorylationDimerizationPackage R}
    (N : NuclearTranslocationGeneExpressionPackage S) : Prop :=
  N.nuclearImport ∧ N.dimerTranslocation ∧ N.dnaBinding ∧ N.targetGeneActivation

theorem nuclear_translocation_gene_expression_closed_from_evidence
    {R : ReceptorActivationPackage}
    {S : StatPhosphorylationDimerizationPackage R}
    (N : NuclearTranslocationGeneExpressionPackage S)
    (E : NuclearTranslocationGeneExpressionEvidence N) :
    NuclearTranslocationGeneExpressionClosed N := by
  exact And.intro E.nuclearImportClosed
    (And.intro E.dimerTranslocationClosed
      (And.intro E.dnaBindingClosed E.targetGeneActivationClosed))

end CellBiologyJakStatSignalingFoundationCanonicalLaneLean
end HautevilleHouse