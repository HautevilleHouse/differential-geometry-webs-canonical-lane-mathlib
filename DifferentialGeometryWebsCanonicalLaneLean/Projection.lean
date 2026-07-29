import DifferentialGeometryWebsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometryWebsCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

def dgWebProjection : Projection DGWebEndgameState := {
  toFun := fun x => x,
  idempotent := by intro x; rfl
}

theorem dgWeb_projection_idempotent (x : DGWebEndgameState) :
    dgWebProjection.toFun (dgWebProjection.toFun x) = dgWebProjection.toFun x := by
  exact dgWebProjection.idempotent x

end DifferentialGeometryWebsCanonicalLaneLean
end HautevilleHouse