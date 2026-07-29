import canonicalLaneMathlib.AdmissibleClass
import DifferentialGeometryWebsCanonicalLaneLean.WebHolonomy
import DifferentialGeometryWebsCanonicalLaneLean.CurvatureInvariants
import DifferentialGeometryWebsCanonicalLaneLean.ConnectionTheory

namespace HautevilleHouse
namespace DifferentialGeometryWebsCanonicalLaneLean

def ConstrainedDifferentialGeometryWebsClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_differential_geometry_webs_endgame (A : AdmissibleClass) :
    ConstrainedDifferentialGeometryWebsClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end DifferentialGeometryWebsCanonicalLaneLean
end HautevilleHouse