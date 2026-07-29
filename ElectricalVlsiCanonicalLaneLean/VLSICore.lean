import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ElectricalVlsiCanonicalLaneLean

structure VLSIDesignSpace where
  carrier : Type
  hierarchy : Type

structure VLSIAdmittedObject where
  designSpace : VLSIDesignSpace
  netlistComplete : Prop
  layoutGenerated : Prop
  timingClosed : Prop
  conclusion : netlistComplete ∧ layoutGenerated ∧ timingClosed

def VLSIWitnessClosed (O : VLSIAdmittedObject) : Prop :=
  O.netlistComplete ∧ O.layoutGenerated ∧ O.timingClosed

end ElectricalVlsiCanonicalLaneLean
end HautevilleHouse