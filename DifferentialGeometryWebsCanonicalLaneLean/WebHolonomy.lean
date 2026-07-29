import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometryWebsCanonicalLaneLean

structure WebHolonomyPackage where
  manifold : Type u
  topology : TopologicalSpace manifold
  foliationCodimension : Nat
  webStructure : Prop
  connectionDefined : Prop
  holonomyRepresentation : Prop
  holonomyInvariant : Prop

def webHolonomyPackageDefault : WebHolonomyPackage :=
  { manifold := Unit
    topology := inferInstance
    foliationCodimension := 2
    webStructure := True
    connectionDefined := True
    holonomyRepresentation := True
    holonomyInvariant := True }

structure WebHolonomyEvidence (W : WebHolonomyPackage) where
  webStructureClosed : W.webStructure
  connectionDefinedClosed : W.connectionDefined
  holonomyRepresentationClosed : W.holonomyRepresentation
  holonomyInvariantClosed : W.holonomyInvariant

def WebHolonomyClosed (W : WebHolonomyPackage) : Prop :=
  W.webStructure ∧ W.connectionDefined ∧ W.holonomyRepresentation ∧ W.holonomyInvariant

theorem web_holonomy_closed_from_evidence (W : WebHolonomyPackage)
    (E : WebHolonomyEvidence W) : WebHolonomyClosed W := by
  exact And.intro E.webStructureClosed
    (And.intro E.connectionDefinedClosed
      (And.intro E.holonomyRepresentationClosed E.holonomyInvariantClosed))

end DifferentialGeometryWebsCanonicalLaneLean
end HautevilleHouse