import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ElectricalVlsiCanonicalLaneLean

structure RoutingCongestionPackage where
  globalRoutingComplete : Prop
  trackAssignmentFeasible : Prop
  viaCountMinimized : Prop
  shortFreeRouting : Prop
  congestionMapBalanced : Prop

structure RoutingCongestionEvidence (R : RoutingCongestionPackage) where
  globalRoutingCompleteClosed : R.globalRoutingComplete
  trackAssignmentFeasibleClosed : R.trackAssignmentFeasible
  viaCountMinimizedClosed : R.viaCountMinimized
  shortFreeRoutingClosed : R.shortFreeRouting
  congestionMapBalancedClosed : R.congestionMapBalanced

def RoutingCongestionClosed (R : RoutingCongestionPackage) : Prop :=
  R.globalRoutingComplete ∧ R.trackAssignmentFeasible ∧ R.viaCountMinimized ∧ R.shortFreeRouting ∧ R.congestionMapBalanced

theorem routing_congestion_closed_from_evidence (R : RoutingCongestionPackage) (E : RoutingCongestionEvidence R) : RoutingCongestionClosed R := by
  exact And.intro E.globalRoutingCompleteClosed (And.intro E.trackAssignmentFeasibleClosed (And.intro E.viaCountMinimizedClosed (And.intro E.shortFreeRoutingClosed E.congestionMapBalancedClosed)))

end ElectricalVlsiCanonicalLaneLean
end HautevilleHouse