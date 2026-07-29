import HautevilleHouse.ElectricalVlsiCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace ElectricalVlsiCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  VLSIWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end ElectricalVlsiCanonicalLaneLean
end HautevilleHouse