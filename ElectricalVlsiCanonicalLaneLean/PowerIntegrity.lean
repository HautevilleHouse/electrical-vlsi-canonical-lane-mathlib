import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ElectricalVlsiCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace ElectricalVlsiCanonicalLaneLean

structure PowerIntegrityPackage where
  voltageDropLimit : Prop
  currentDensityLimit : Prop
  decouplingCapacitance : Prop
  powerSupplyNoise : Prop

structure PowerIntegrityEvidence (P : PowerIntegrityPackage) where
  voltageDropLimitClosed : P.voltageDropLimit
  currentDensityLimitClosed : P.currentDensityLimit
  decouplingCapacitanceClosed : P.decouplingCapacitance
  powerSupplyNoiseClosed : P.powerSupplyNoise

def PowerIntegrityClosed (P : PowerIntegrityPackage) : Prop :=
  P.voltageDropLimit ∧ P.currentDensityLimit ∧ P.decouplingCapacitance ∧ P.powerSupplyNoise

theorem power_integrity_closed_from_evidence (P : PowerIntegrityPackage) (Ev : PowerIntegrityEvidence P) : PowerIntegrityClosed P := by
  exact And.intro Ev.voltageDropLimitClosed (And.intro Ev.currentDensityLimitClosed (And.intro Ev.decouplingCapacitanceClosed Ev.powerSupplyNoiseClosed))

end ElectricalVlsiCanonicalLaneLean
end HautevilleHouse