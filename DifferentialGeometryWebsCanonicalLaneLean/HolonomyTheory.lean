import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometryWebsCanonicalLaneLean

structure HolonomyPackage {M : Type} [TopologicalSpace M]
    {G : RiemannianCurvaturePackage M} (W : WebConnectionPackage M G) where
  holonomyGroup : Type
  holonomyRepresentation : Type
  restrictedHolonomy : Type
  holonomyLieAlgebra : Type
  holonomyInvariant : Prop
  ambrosioSingerTheorem : Prop
  deRhamDecomposition : Prop

structure HolonomyEvidence {M : Type} [TopologicalSpace M]
    {G : RiemannianCurvaturePackage M} {W : WebConnectionPackage M G}
    (H : HolonomyPackage W) where
  holonomyInvariantClosed : H.holonomyInvariant
  ambrosioSingerTheoremClosed : H.ambrosioSingerTheorem
  deRhamDecompositionClosed : H.deRhamDecomposition

def HolonomyClosed {M : Type} [TopologicalSpace M]
    {G : RiemannianCurvaturePackage M} {W : WebConnectionPackage M G}
    (H : HolonomyPackage W) : Prop :=
  H.holonomyInvariant ∧ H.ambrosioSingerTheorem ∧ H.deRhamDecomposition

theorem holonomy_closed_from_evidence {M : Type} [TopologicalSpace M]
    {G : RiemannianCurvaturePackage M} {W : WebConnectionPackage M G}
    (H : HolonomyPackage W) (E : HolonomyEvidence H) : HolonomyClosed H := by
  exact And.intro E.holonomyInvariantClosed (And.intro E.ambrosioSingerTheoremClosed E.deRhamDecompositionClosed)

end DifferentialGeometryWebsCanonicalLaneLean
end HautevilleHouse
