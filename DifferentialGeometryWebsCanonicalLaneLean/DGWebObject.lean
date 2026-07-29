import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometryWebsCanonicalLaneLean

structure DGWebObject where
  manifold : Type
  topology : TopologicalSpace manifold
  web : Type
  webDimension : ℕ
  webIntegrability : Prop
  conclusion : webIntegrability

def DGWitnessClosed (O : DGWebObject) : Prop :=
  O.webIntegrability

end DifferentialGeometryWebsCanonicalLaneLean
end HautevilleHouse
