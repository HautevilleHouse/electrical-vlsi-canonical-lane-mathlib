import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ElectricalVlsiCanonicalLaneLean

structure TimingAnalysisPackage where
  clockSkewBound : Prop
  setupTimeMet : Prop
  holdTimeMet : Prop
  propagationDelayBound : Prop

structure TimingAnalysisEvidence (T : TimingAnalysisPackage) where
  clockSkewBoundClosed : T.clockSkewBound
  setupTimeMetClosed : T.setupTimeMet
  holdTimeMetClosed : T.holdTimeMet
  propagationDelayBoundClosed : T.propagationDelayBound

def TimingAnalysisClosed (T : TimingAnalysisPackage) : Prop :=
  T.clockSkewBound ∧ T.setupTimeMet ∧ T.holdTimeMet ∧ T.propagationDelayBound

theorem timing_analysis_closed_from_evidence (T : TimingAnalysisPackage)
    (E : TimingAnalysisEvidence T) : TimingAnalysisClosed T := by
  exact And.intro E.clockSkewBoundClosed
    (And.intro E.setupTimeMetClosed
      (And.intro E.holdTimeMetClosed E.propagationDelayBoundClosed))

end ElectricalVlsiCanonicalLaneLean
end HautevilleHouse
