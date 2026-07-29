import canonicalLaneMathlib.AdmissibleClass
import DifferentialGeometryWebsCanonicalLaneLean.WebBridgeLemmas

namespace HautevilleHouse
namespace DifferentialGeometryWebsCanonicalLaneLean

def gateClosed (A : WebAdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : WebAdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end DifferentialGeometryWebsCanonicalLaneLean
end HautevilleHouse
