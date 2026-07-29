import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ElectricalVlsiCanonicalLaneLean

structure VerificationPackage where
  formalEquivalence : Prop
  simulationCoverage : Prop
  propertyChecked : Prop
  assertionPassed : Prop

structure VerificationEvidence (V : VerificationPackage) where
  formalEquivalenceClosed : V.formalEquivalence
  simulationCoverageClosed : V.simulationCoverage
  propertyCheckedClosed : V.propertyChecked
  assertionPassedClosed : V.assertionPassed

def VerificationClosed (V : VerificationPackage) : Prop :=
  V.formalEquivalence ∧ V.simulationCoverage ∧ V.propertyChecked ∧ V.assertionPassed

theorem verification_closed_from_evidence (V : VerificationPackage)
    (E : VerificationEvidence V) : VerificationClosed V := by
  exact And.intro E.formalEquivalenceClosed
    (And.intro E.simulationCoverageClosed
      (And.intro E.propertyCheckedClosed E.assertionPassedClosed))

end ElectricalVlsiCanonicalLaneLean
end HautevilleHouse
