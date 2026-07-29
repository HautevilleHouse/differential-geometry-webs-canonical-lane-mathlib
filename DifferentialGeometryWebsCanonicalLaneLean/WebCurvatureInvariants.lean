import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometryWebsCanonicalLaneLean

structure WebCurvatureInvariantsPackage {M : Type} [TopologicalSpace M]
    {G : RiemannianCurvaturePackage M} {W : WebConnectionPackage M G} where
  sectionalCurvature : Type
  ricciCurvature : Type
  scalarCurvature : Type
  weylTensor : Type
  cottonTensor : Type
  curvatureInvariant : Prop
  einsteinCondition : Prop
  conformallyFlat : Prop

structure WebCurvatureInvariantsEvidence {M : Type} [TopologicalSpace M]
    {G : RiemannianCurvaturePackage M} {W : WebConnectionPackage M G}
    (C : WebCurvatureInvariantsPackage W) where
  curvatureInvariantClosed : C.curvatureInvariant
  einsteinConditionClosed : C.einsteinCondition
  conformallyFlatClosed : C.conformallyFlat

def WebCurvatureInvariantsClosed {M : Type} [TopologicalSpace M]
    {G : RiemannianCurvaturePackage M} {W : WebConnectionPackage M G}
    (C : WebCurvatureInvariantsPackage W) : Prop :=
  C.curvatureInvariant ∧ C.einsteinCondition ∧ C.conformallyFlat

theorem web_curvature_invariants_closed_from_evidence {M : Type} [TopologicalSpace M]
    {G : RiemannianCurvaturePackage M} {W : WebConnectionPackage M G}
    (C : WebCurvatureInvariantsPackage W) (E : WebCurvatureInvariantsEvidence C) : WebCurvatureInvariantsClosed C := by
  exact And.intro E.curvatureInvariantClosed (And.intro E.einsteinConditionClosed E.conformallyFlatClosed)

end DifferentialGeometryWebsCanonicalLaneLean
end HautevilleHouse
