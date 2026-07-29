import canonicalLaneMathlib.AdmissibleClass
import DifferentialGeometryWebsCanonicalLaneLean.CurvatureInvariants

namespace HautevilleHouse
namespace DifferentialGeometryWebsCanonicalLaneLean

structure ConnectionCurvaturePackage where
  connection : Type
  curvatureForm : Type
  torsion : Type
  connectionMetricCompatible : Prop
  curvatureBianchi : Prop
  torsionFree : Prop

structure ConnectionCurvatureEvidence (P : ConnectionCurvaturePackage) where
  connectionMetricCompatibleClosed : P.connectionMetricCompatible
  curvatureBianchiClosed : P.curvatureBianchi
  torsionFreeClosed : P.torsionFree

def ConnectionCurvatureClosed (P : ConnectionCurvaturePackage) : Prop :=
  P.connectionMetricCompatible ∧ P.curvatureBianchi ∧ P.torsionFree

theorem connection_curvature_closed_from_evidence
    (P : ConnectionCurvaturePackage) (E : ConnectionCurvatureEvidence P) :
    ConnectionCurvatureClosed P := by
  exact And.intro E.connectionMetricCompatibleClosed
    (And.intro E.curvatureBianchiClosed E.torsionFreeClosed)

end DifferentialGeometryWebsCanonicalLaneLean
end HautevilleHouse
