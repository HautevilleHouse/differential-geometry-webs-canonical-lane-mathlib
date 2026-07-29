import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometryWebsCanonicalLaneLean

structure WebAdmissibleObject where
  webManifold : Type
  webTopology : TopologicalSpace webManifold
  webDistribution : Type
  webCodistribution : Type
  webIntegrability : Prop
  webCurvatureInvariant : Prop
  conclusion : webCurvatureInvariant

structure WebAdmissibleClass where
  object : WebAdmissibleObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : WebAdmissibleClass) : Prop :=
  WebWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

def WebWitnessClosed (O : WebAdmissibleObject) : Prop :=
  O.conclusion

end DifferentialGeometryWebsCanonicalLaneLean
end HautevilleHouse
