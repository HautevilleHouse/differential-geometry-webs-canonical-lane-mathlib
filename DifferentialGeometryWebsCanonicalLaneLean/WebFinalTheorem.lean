import canonicalLaneMathlib.AdmissibleClass
import DifferentialGeometryWebsCanonicalLaneLean.WebGateLemmas

namespace HautevilleHouse
namespace DifferentialGeometryWebsCanonicalLaneLean

def ConstrainedWebClosure (A : WebAdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_web_endgame (A : WebAdmissibleClass) :
    ConstrainedWebClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end DifferentialGeometryWebsCanonicalLaneLean
end HautevilleHouse
