import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometryWebsCanonicalLaneLean

structure WebConnectionPackage (M : Type) [TopologicalSpace M] (G : RiemannianCurvaturePackage M) where
  webDistribution : Type
  verticalSubbundle : Type
  horizontalSubbundle : Type
  connectionForm : Type
  curvatureTwoForm : Type
  torsionTwoForm : Type
  webCompatible : Prop
  connectionFlat : Prop
  torsionFree : Prop

structure WebConnectionEvidence {M : Type} [TopologicalSpace M]
    {G : RiemannianCurvaturePackage M} (W : WebConnectionPackage M G) where
  webCompatibleClosed : W.webCompatible
  connectionFlatClosed : W.connectionFlat
  torsionFreeClosed : W.torsionFree

def WebConnectionClosed {M : Type} [TopologicalSpace M]
    {G : RiemannianCurvaturePackage M} (W : WebConnectionPackage M G) : Prop :=
  W.webCompatible ∧ W.connectionFlat ∧ W.torsionFree

theorem web_connection_closed_from_evidence {M : Type} [TopologicalSpace M]
    {G : RiemannianCurvaturePackage M} (W : WebConnectionPackage M G)
    (E : WebConnectionEvidence W) : WebConnectionClosed W := by
  exact And.intro E.webCompatibleClosed (And.intro E.connectionFlatClosed E.torsionFreeClosed)

end DifferentialGeometryWebsCanonicalLaneLean
end HautevilleHouse
