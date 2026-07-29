import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometryWebsCanonicalLaneLean

structure WebCurvaturePackage where
  webManifold : Type u
  webDistribution : Type v
  webConnection : Type w
  webCurvatureTensor : Type x
  webTorsionTensor : Type y
  integrabilityCondition : Prop
  curvatureInvariant : Prop
  torsionInvariant : Prop

structure WebCurvatureEvidence (G : WebCurvaturePackage) where
  integrabilityConditionClosed : G.integrabilityCondition
  curvatureInvariantClosed : G.curvatureInvariant
  torsionInvariantClosed : G.torsionInvariant

def WebCurvatureClosed (G : WebCurvaturePackage) : Prop :=
  G.integrabilityCondition ∧ G.curvatureInvariant ∧ G.torsionInvariant

theorem web_curvature_closed_from_evidence
    (G : WebCurvaturePackage) (E : WebCurvatureEvidence G) :
    WebCurvatureClosed G := by
  exact And.intro E.integrabilityConditionClosed
    (And.intro E.curvatureInvariantClosed E.torsionInvariantClosed)

end DifferentialGeometryWebsCanonicalLaneLean
end HautevilleHouse
