import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometryWebsCanonicalLaneLean

structure ParallelTransportPackage {M : Type} [TopologicalSpace M]
    {G : RiemannianCurvaturePackage M} {W : WebConnectionPackage M G} where
  parallelTransportMap : Type
  geodesicFlow : Type
  exponentialMap : Type
  normalCoordinates : Type
  jacobiFields : Type
  conjugatePoints : Type
  parallelTransportPreserved : Prop
  geodesicEnergyMinimizing : Prop
  curvatureViaJacobi : Prop

structure ParallelTransportEvidence {M : Type} [TopologicalSpace M]
    {G : RiemannianCurvaturePackage M} {W : WebConnectionPackage M G}
    (P : ParallelTransportPackage W) where
  parallelTransportPreservedClosed : P.parallelTransportPreserved
  geodesicEnergyMinimizingClosed : P.geodesicEnergyMinimizing
  curvatureViaJacobiClosed : P.curvatureViaJacobi

def ParallelTransportClosed {M : Type} [TopologicalSpace M]
    {G : RiemannianCurvaturePackage M} {W : WebConnectionPackage M G}
    (P : ParallelTransportPackage W) : Prop :=
  P.parallelTransportPreserved ∧ P.geodesicEnergyMinimizing ∧ P.curvatureViaJacobi

theorem parallel_transport_closed_from_evidence {M : Type} [TopologicalSpace M]
    {G : RiemannianCurvaturePackage M} {W : WebConnectionPackage M G}
    (P : ParallelTransportPackage W) (E : ParallelTransportEvidence P) : ParallelTransportClosed P := by
  exact And.intro E.parallelTransportPreservedClosed (And.intro E.geodesicEnergyMinimizingClosed E.curvatureViaJacobiClosed)

end DifferentialGeometryWebsCanonicalLaneLean
end HautevilleHouse
