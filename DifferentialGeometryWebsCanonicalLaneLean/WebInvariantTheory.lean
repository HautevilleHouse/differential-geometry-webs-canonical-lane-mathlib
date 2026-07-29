import DifferentialGeometryWebsCanonicalLaneLean.WebHolonomyGroup

/-!
# Web Invariant Theory Package
-/

namespace HautevilleHouse
namespace DifferentialGeometryWebsCanonicalLaneLean

structure WebInvariantTheoryPackage {G : WebConnectionCurvaturePackage}
    {H : WebHolonomyGroupPackage G} where
  invariantFunctionSpace : Type u
  characteristicClasses : Type v
  invariantCompleteness : Prop
  classificationTheorem : Prop

structure WebInvariantTheoryEvidence {G : WebConnectionCurvaturePackage}
    {H : WebHolonomyGroupPackage G} (I : WebInvariantTheoryPackage H) where
  invariantCompletenessClosed : I.invariantCompleteness
  classificationTheoremClosed : I.classificationTheorem

def WebInvariantTheoryClosed {G : WebConnectionCurvaturePackage}
    {H : WebHolonomyGroupPackage G} (I : WebInvariantTheoryPackage H) : Prop :=
  I.invariantCompleteness ∧ I.classificationTheorem

theorem web_invariant_theory_closed_from_evidence
    {G : WebConnectionCurvaturePackage} {H : WebHolonomyGroupPackage G}
    (I : WebInvariantTheoryPackage H) (E : WebInvariantTheoryEvidence I) :
    WebInvariantTheoryClosed I := by
  exact And.intro E.invariantCompletenessClosed E.classificationTheoremClosed

end DifferentialGeometryWebsCanonicalLaneLean
end HautevilleHouse
