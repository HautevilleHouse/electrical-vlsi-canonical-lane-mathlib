import HautevilleHouse.ElectricalVlsiCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace ElectricalVlsiCanonicalLaneLean

structure CircuitFoundationPackage where
  cellLibrary : Type u
  netlist : Type v
  technologyNode : Nat
  operatingConditions : Prop
  supplyVoltage : Float

structure CircuitFoundationEvidence (C : CircuitFoundationPackage) where
  cellLibraryClosed : C.cellLibrary
  netlistClosed : C.netlist
  technologyNodeClosed : C.technologyNode
  operatingConditionsClosed : C.operatingConditions
  supplyVoltageClosed : C.supplyVoltage

def CircuitFoundationClosed (C : CircuitFoundationPackage) : Prop :=
  C.cellLibrary ∧ C.netlist ∧ C.technologyNode ∧ C.operatingConditions ∧ C.supplyVoltage

theorem circuit_foundation_closed_from_evidence (C : CircuitFoundationPackage)
    (E : CircuitFoundationEvidence C) : CircuitFoundationClosed C := by
  exact And.intro E.cellLibraryClosed
    (And.intro E.netlistClosed
      (And.intro E.technologyNodeClosed
        (And.intro E.operatingConditionsClosed E.supplyVoltageClosed)))

end ElectricalVlsiCanonicalLaneLean
end HautevilleHouse