import canonicalLaneMathlib.AdmissibleClass
import DifferentialGeometryWebsCanonicalLaneLean.CurvatureInvariants

namespace HautevilleHouse
namespace DifferentialGeometryWebsCanonicalLaneLean

structure IndexTheoremPackage {I : CurvatureInvariantsPackage} where
  ellipticOperator : Type
  index : ℤ
  topologicalIndexComputed : Prop
  analyticIndexComputed : Prop

structure IndexTheoremEvidence {I : CurvatureInvariantsPackage} (P : IndexTheoremPackage I) where
  topologicalIndexComputedClosed : P.topologicalIndexComputed
  analyticIndexComputedClosed : P.analyticIndexComputed

def IndexTheoremClosed {I : CurvatureInvariantsPackage} (P : IndexTheoremPackage I) : Prop :=
  P.topologicalIndexComputed ∧ P.analyticIndexComputed

theorem index_theorem_closed_from_evidence
    {I : CurvatureInvariantsPackage} (P : IndexTheoremPackage I) (E : IndexTheoremEvidence P) :
    IndexTheoremClosed P := by
  exact And.intro E.topologicalIndexComputedClosed E.analyticIndexComputedClosed

end DifferentialGeometryWebsCanonicalLaneLean
end HautevilleHouse
