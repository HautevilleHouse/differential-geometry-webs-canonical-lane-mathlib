import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometryWebsCanonicalLaneLean

structure WebHomogeneousSpacePackage {M : Type} [TopologicalSpace M]
    {G : RiemannianCurvaturePackage M} {W : WebConnectionPackage M G} where
  lieGroupAction : Type
  isotropySubgroup : Type
  homogeneousStructure : Prop
  reductiveDecomposition : Prop
  naturallyReductive : Prop
  normalHomogeneous : Prop

structure WebHomogeneousSpaceEvidence {M : Type} [TopologicalSpace M]
    {G : RiemannianCurvaturePackage M} {W : WebConnectionPackage M G}
    (H : WebHomogeneousSpacePackage W) where
  homogeneousStructureClosed : H.homogeneousStructure
  reductiveDecompositionClosed : H.reductiveDecomposition
  naturallyReductiveClosed : H.naturallyReductive
  normalHomogeneousClosed : H.normalHomogeneous

def WebHomogeneousSpaceClosed {M : Type} [TopologicalSpace M]
    {G : RiemannianCurvaturePackage M} {W : WebConnectionPackage M G}
    (H : WebHomogeneousSpacePackage W) : Prop :=
  H.homogeneousStructure ∧ H.reductiveDecomposition ∧ H.naturallyReductive ∧ H.normalHomogeneous

theorem web_homogeneous_space_closed_from_evidence {M : Type} [TopologicalSpace M]
    {G : RiemannianCurvaturePackage M} {W : WebConnectionPackage M G}
    (H : WebHomogeneousSpacePackage W) (E : WebHomogeneousSpaceEvidence H) : WebHomogeneousSpaceClosed H := by
  exact And.intro E.homogeneousStructureClosed
    (And.intro E.reductiveDecompositionClosed
      (And.intro E.naturallyReductiveClosed E.normalHomogeneousClosed))

end DifferentialGeometryWebsCanonicalLaneLean
end HautevilleHouse
