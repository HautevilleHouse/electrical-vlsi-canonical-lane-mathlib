import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ElectricalVlsiCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace ElectricalVlsiCanonicalLaneLean

structure ElectromigrationPackage where
  currentDensityLimit : Prop
  temperatureDependence : Prop
  wireGeometryFactor : Prop
  lifetimeConstraint : Prop

structure ElectromigrationEvidence (E : ElectromigrationPackage) where
  currentDensityLimitClosed : E.currentDensityLimit
  temperatureDependenceClosed : E.temperatureDependence
  wireGeometryFactorClosed : E.wireGeometryFactor
  lifetimeConstraintClosed : E.lifetimeConstraint

def ElectromigrationClosed (E : ElectromigrationPackage) : Prop :=
  E.currentDensityLimit ∧ E.temperatureDependence ∧ E.wireGeometryFactor ∧ E.lifetimeConstraint

theorem electromigration_closed_from_evidence (E : ElectromigrationPackage) (Ev : ElectromigrationEvidence E) : ElectromigrationClosed E := by
  exact And.intro Ev.currentDensityLimitClosed (And.intro Ev.temperatureDependenceClosed (And.intro Ev.wireGeometryFactorClosed Ev.lifetimeConstraintClosed))

end ElectricalVlsiCanonicalLaneLean
end HautevilleHouse