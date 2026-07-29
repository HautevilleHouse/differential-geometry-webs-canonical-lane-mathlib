import DifferentialGeometryWebsCanonicalLaneLean.AdmissibleClass

/-!
# Web Connection Curvature Package
-/

namespace HautevilleHouse
namespace DifferentialGeometryWebsCanonicalLaneLean

structure WebConnectionCurvaturePackage where
  manifold : Type u
  topology : TopologicalSpace manifold
  webDistribution : Type v
  connection : Type w
  curvature : Type x
  webIntegrability : Prop
  torsionFree : Prop
  curvatureTwoForm : Prop
  bianchiIdentity : Prop

structure WebConnectionCurvatureEvidence (G : WebConnectionCurvaturePackage) where
  webIntegrabilityClosed : G.webIntegrability
  torsionFreeClosed : G.torsionFree
  curvatureTwoFormClosed : G.curvatureTwoForm
  bianchiIdentityClosed : G.bianchiIdentity

def WebConnectionCurvatureClosed (G : WebConnectionCurvaturePackage) : Prop :=
  G.webIntegrability ∧ G.torsionFree ∧ G.curvatureTwoForm ∧ G.bianchiIdentity

theorem web_connection_curvature_closed_from_evidence
    (G : WebConnectionCurvaturePackage) (E : WebConnectionCurvatureEvidence G) :
    WebConnectionCurvatureClosed G := by
  exact And.intro E.webIntegrabilityClosed
    (And.intro E.torsionFreeClosed
      (And.intro E.curvatureTwoFormClosed E.bianchiIdentityClosed))

end DifferentialGeometryWebsCanonicalLaneLean
end HautevilleHouse
