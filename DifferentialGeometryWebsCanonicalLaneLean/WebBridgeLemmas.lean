import canonicalLaneMathlib.AdmissibleClass
import DifferentialGeometryWebsCanonicalLaneLean.WebBundleAdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometryWebsCanonicalLaneLean

def bridgeClosed (A : WebAdmissibleClass) : Prop :=
  WebWitnessClosed A.object

theorem bridge_from_admissible_class (A : WebAdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end DifferentialGeometryWebsCanonicalLaneLean
end HautevilleHouse
