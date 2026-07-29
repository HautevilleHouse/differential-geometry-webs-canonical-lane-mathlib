import canonicalLaneMathlib.AdmissibleClass
import DifferentialGeometryWebsCanonicalLaneLean.ConnectionCurvature

namespace HautevilleHouse
namespace DifferentialGeometryWebsCanonicalLaneLean

structure HolonomyPackage {C : ConnectionCurvaturePackage} where
  holonomyGroup : Type
  holonomyAlgebra : Type
  holonomyInvariantSubspace : Prop
  holonomyReduction : Prop

structure HolonomyEvidence {C : ConnectionCurvaturePackage} (P : HolonomyPackage C) where
  holonomyInvariantSubspaceClosed : P.holonomyInvariantSubspace
  holonomyReductionClosed : P.holonomyReduction

def HolonomyClosed {C : ConnectionCurvaturePackage} (P : HolonomyPackage C) : Prop :=
  P.holonomyInvariantSubspace ∧ P.holonomyReduction

theorem holonomy_closed_from_evidence
    {C : ConnectionCurvaturePackage} (P : HolonomyPackage C) (E : HolonomyEvidence P) :
    HolonomyClosed P := by
  exact And.intro E.holonomyInvariantSubspaceClosed E.holonomyReductionClosed

end DifferentialGeometryWebsCanonicalLaneLean
end HautevilleHouse
