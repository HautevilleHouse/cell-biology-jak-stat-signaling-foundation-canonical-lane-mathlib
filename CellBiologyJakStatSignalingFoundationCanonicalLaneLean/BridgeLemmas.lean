import HautevilleHouse.CellBiologyJakStatSignalingFoundationCanonicalLaneLean.JakStatAdmissibleClass

namespace HautevilleHouse
namespace CellBiologyJakStatSignalingFoundationCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.object.conclusion

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end CellBiologyJakStatSignalingFoundationCanonicalLaneLean
end HautevilleHouse
