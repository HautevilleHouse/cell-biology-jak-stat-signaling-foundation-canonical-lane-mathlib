import CellBiologyJakStatSignalingFoundationCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace CellBiologyJakStatSignalingFoundationCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure JakStatSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure JakStatAdmittedObject where
  space : JakStatSpace
  receptorActivation : Prop
  statPhosphorylation : Prop
  dimerization : Prop
  nuclearTranslocation : Prop
  geneExpression : Prop
  conclusion : geneExpression

structure JakStatEndgameState where
  object : JakStatAdmittedObject

def JakStatWitnessClosed (O : JakStatAdmittedObject) : Prop :=
  O.geneExpression

end CellBiologyJakStatSignalingFoundationCanonicalLaneLean
end HautevilleHouse