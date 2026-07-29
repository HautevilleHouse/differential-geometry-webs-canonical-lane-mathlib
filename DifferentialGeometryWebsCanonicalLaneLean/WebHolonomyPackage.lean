import canonicalLaneMathlib.AdmissibleClass
import DifferentialGeometryWebsCanonicalLaneLean.WebCurvatureStructure

namespace HautevilleHouse
namespace DifferentialGeometryWebsCanonicalLaneLean

structure WebHolonomyPackage {G : WebCurvaturePackage} where
  holonomyGroup : Type u
  holonomyAlgebra : Type v
  reductionTheorem : Prop
  classificationTheorem : Prop

structure WebHolonomyEvidence {G : WebCurvaturePackage}
    (H : WebHolonomyPackage G) where
  reductionTheoremClosed : H.reductionTheorem
  classificationTheoremClosed : H.classificationTheorem

def WebHolonomyClosed {G : WebCurvaturePackage}
    (H : WebHolonomyPackage G) : Prop :=
  H.reductionTheorem ∧ H.classificationTheorem

theorem web_holonomy_closed_from_evidence
    {G : WebCurvaturePackage} (H : WebHolonomyPackage G)
    (E : WebHolonomyEvidence H) : WebHolonomyClosed H := by
  exact And.intro E.reductionTheoremClosed E.classificationTheoremClosed

end DifferentialGeometryWebsCanonicalLaneLean
end HautevilleHouse
