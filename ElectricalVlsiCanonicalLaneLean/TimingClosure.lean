import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ElectricalVlsiCanonicalLaneLean

structure TimingClosurePackage where
  setupTimingMet : Prop
  holdTimingMet : Prop
  clockSkewAccounted : Prop
  transitionTimeWithinBounds : Prop
  signalIntegrityPreserved : Prop

structure TimingClosureEvidence (T : TimingClosurePackage) where
  setupTimingMetClosed : T.setupTimingMet
  holdTimingMetClosed : T.holdTimingMet
  clockSkewAccountedClosed : T.clockSkewAccounted
  transitionTimeWithinBoundsClosed : T.transitionTimeWithinBounds
  signalIntegrityPreservedClosed : T.signalIntegrityPreserved

def TimingClosureClosed (T : TimingClosurePackage) : Prop :=
  T.setupTimingMet ∧ T.holdTimingMet ∧ T.clockSkewAccounted ∧ T.transitionTimeWithinBounds ∧ T.signalIntegrityPreserved

theorem timing_closure_closed_from_evidence (T : TimingClosurePackage) (E : TimingClosureEvidence T) : TimingClosureClosed T := by
  exact And.intro E.setupTimingMetClosed (And.intro E.holdTimingMetClosed (And.intro E.clockSkewAccountedClosed (And.intro E.transitionTimeWithinBoundsClosed E.signalIntegrityPreservedClosed)))

end ElectricalVlsiCanonicalLaneLean
end HautevilleHouse