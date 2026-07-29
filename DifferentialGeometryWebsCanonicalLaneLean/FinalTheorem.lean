import DifferentialGeometryWebsCanonicalLaneLean.BridgeLemmas
import DifferentialGeometryWebsCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace DifferentialGeometryWebsCanonicalLaneLean

def ConstrainedDGWebClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_dgweb_endgame (A : AdmissibleClass) :
    ConstrainedDGWebClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end DifferentialGeometryWebsCanonicalLaneLean
end HautevilleHouse
