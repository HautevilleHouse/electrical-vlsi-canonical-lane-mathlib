import HautevilleHouse.ElectricalVlsiCanonicalLaneLean.VLSICore

namespace HautevilleHouse
namespace ElectricalVlsiCanonicalLaneLean

structure AdmissibleClass where
  object : VLSIAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  VLSIWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end ElectricalVlsiCanonicalLaneLean
end HautevilleHouse