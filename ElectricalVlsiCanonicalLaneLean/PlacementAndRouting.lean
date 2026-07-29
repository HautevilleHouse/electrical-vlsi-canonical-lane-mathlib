import HautevilleHouse.ElectricalVlsiCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace ElectricalVlsiCanonicalLaneLean

structure PlacementAndRoutingPackage where
  placementAlgorithm : Prop
  routingGrid : Prop
  congestionModel : Prop
  timingDriven : Prop
  wirelengthOptimization : Prop

structure PlacementAndRoutingEvidence (P : PlacementAndRoutingPackage) where
  placementAlgorithmClosed : P.placementAlgorithm
  routingGridClosed : P.routingGrid
  congestionModelClosed : P.congestionModel
  timingDrivenClosed : P.timingDriven
  wirelengthOptimizationClosed : P.wirelengthOptimization

def PlacementAndRoutingClosed (P : PlacementAndRoutingPackage) : Prop :=
  P.placementAlgorithm ∧ P.routingGrid ∧ P.congestionModel ∧ P.timingDriven ∧ P.wirelengthOptimization

theorem placement_and_routing_closed_from_evidence (P : PlacementAndRoutingPackage)
    (E : PlacementAndRoutingEvidence P) : PlacementAndRoutingClosed P := by
  exact And.intro E.placementAlgorithmClosed
    (And.intro E.routingGridClosed
      (And.intro E.congestionModelClosed
        (And.intro E.timingDrivenClosed E.wirelengthOptimizationClosed)))

end ElectricalVlsiCanonicalLaneLean
end HautevilleHouse