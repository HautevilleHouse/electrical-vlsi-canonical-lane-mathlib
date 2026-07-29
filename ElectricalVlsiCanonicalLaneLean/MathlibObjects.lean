import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ElectricalVlsiCanonicalLaneLean

structure VLSISpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure VLSIAdmittedObject where
  space : VLSISpace
  signalIntegrity : Prop
  timingValid : Prop
  powerConstraints : Prop
  layoutValid : Prop
  conclusion : signalIntegrity ∧ timingValid ∧ powerConstraints ∧ layoutValid

structure VLSIEndgameState where
  object : VLSIAdmittedObject

def VLSIWitnessClosed (O : VLSIAdmittedObject) : Prop :=
  O.signalIntegrity ∧ O.timingValid ∧ O.powerConstraints ∧ O.layoutValid

end ElectricalVlsiCanonicalLaneLean
end HautevilleHouse
