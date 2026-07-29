import canonicalLaneMathlib.AdmissibleClass
import DifferentialGeometryWebsCanonicalLaneLean.WebHolonomyPackage

namespace HautevilleHouse
namespace DifferentialGeometryWebsCanonicalLaneLean

structure WebIndexPackage {G : WebCurvaturePackage}
    {H : WebHolonomyPackage G} where
  indexForm : Type u
  signatureTheorem : Prop
  rhoInvariant : Prop
  analyticIndexComputed : Prop
  topologicalIndexComputed : Prop

structure WebIndexEvidence {G : WebCurvaturePackage}
    {H : WebHolonomyPackage G} (I : WebIndexPackage H) where
  signatureTheoremClosed : I.signatureTheorem
  rhoInvariantClosed : I.rhoInvariant
  analyticIndexComputedClosed : I.analyticIndexComputed
  topologicalIndexComputedClosed : I.topologicalIndexComputed

def WebIndexClosed {G : WebCurvaturePackage}
    {H : WebHolonomyPackage G} (I : WebIndexPackage H) : Prop :=
  I.signatureTheorem ∧ I.rhoInvariant ∧
  I.analyticIndexComputed ∧ I.topologicalIndexComputed

theorem web_index_closed_from_evidence
    {G : WebCurvaturePackage} {H : WebHolonomyPackage G}
    (I : WebIndexPackage H) (E : WebIndexEvidence I) :
    WebIndexClosed I := by
  exact And.intro E.signatureTheoremClosed
    (And.intro E.rhoInvariantClosed
      (And.intro E.analyticIndexComputedClosed E.topologicalIndexComputedClosed))

end DifferentialGeometryWebsCanonicalLaneLean
end HautevilleHouse
