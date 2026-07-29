import HautevilleHouse.ElectricalVlsiCanonicalLaneLean.BridgeLemmas
import HautevilleHouse.ElectricalVlsiCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace ElectricalVlsiCanonicalLaneLean

def ConstrainedVLSIClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_vlsi_endgame (A : AdmissibleClass) :
    ConstrainedVLSIClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end ElectricalVlsiCanonicalLaneLean
end HautevilleHouse