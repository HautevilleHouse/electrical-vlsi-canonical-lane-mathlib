import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ElectricalVlsiCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace ElectricalVlsiCanonicalLaneLean

structure SignalIntegrityPackage where
  crosstalkNoiseMargin : Prop
  reflectionCoefficient : Prop
  signalRiseTime : Prop
  impedanceMatching : Prop

structure SignalIntegrityEvidence (S : SignalIntegrityPackage) where
  crosstalkNoiseMarginClosed : S.crosstalkNoiseMargin
  reflectionCoefficientClosed : S.reflectionCoefficient
  signalRiseTimeClosed : S.signalRiseTime
  impedanceMatchingClosed : S.impedanceMatching

def SignalIntegrityClosed (S : SignalIntegrityPackage) : Prop :=
  S.crosstalkNoiseMargin ∧ S.reflectionCoefficient ∧ S.signalRiseTime ∧ S.impedanceMatching

theorem signal_integrity_closed_from_evidence (S : SignalIntegrityPackage) (Ev : SignalIntegrityEvidence S) : SignalIntegrityClosed S := by
  exact And.intro Ev.crosstalkNoiseMarginClosed (And.intro Ev.reflectionCoefficientClosed (And.intro Ev.signalRiseTimeClosed Ev.impedanceMatchingClosed))

end ElectricalVlsiCanonicalLaneLean
end HautevilleHouse