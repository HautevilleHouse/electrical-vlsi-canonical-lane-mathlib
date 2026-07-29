import ElectricalVlsiCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace ElectricalVlsiCanonicalLaneLean

structure VlsiArchitecturePackage where
  rtlSynthesized : Prop
  floorplanApproved : Prop
  placementRouted : Prop
  clockTreeSynthesized : Prop
  designRuleMet : Prop

structure VlsiArchitectureEvidence (P : VlsiArchitecturePackage) where
  rtlSynthesizedClosed : P.rtlSynthesized
  floorplanApprovedClosed : P.floorplanApproved
  placementRoutedClosed : P.placementRouted
  clockTreeSynthesizedClosed : P.clockTreeSynthesized
  designRuleMetClosed : P.designRuleMet

def VlsiArchitectureClosed (P : VlsiArchitecturePackage) : Prop :=
  P.rtlSynthesized ∧ P.floorplanApproved ∧ P.placementRouted ∧ P.clockTreeSynthesized ∧ P.designRuleMet

theorem vlsi_architecture_closed_from_evidence (P : VlsiArchitecturePackage) (E : VlsiArchitectureEvidence P) : VlsiArchitectureClosed P := by
  exact And.intro E.rtlSynthesizedClosed
    (And.intro E.floorplanApprovedClosed
      (And.intro E.placementRoutedClosed
        (And.intro E.clockTreeSynthesizedClosed E.designRuleMetClosed)))

end ElectricalVlsiCanonicalLaneLean
end HautevilleHouse