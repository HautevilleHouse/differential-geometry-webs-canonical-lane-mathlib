import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometryWebsCanonicalLaneLean

structure ConnectionTheoryPackage where
  manifold : Type u
  topology : TopologicalSpace manifold
  fiberBundle : Type v
  connectionType : Type w
  curvatureTwoForm : Type x
  compatibleWithWeb : Prop
  connectionDefined : Prop
  curvatureFormExists : Prop

def connectionTheoryPackageDefault : ConnectionTheoryPackage :=
  { manifold := Unit
    topology := inferInstance
    fiberBundle := Unit
    connectionType := Unit
    curvatureTwoForm := Unit
    compatibleWithWeb := True
    connectionDefined := True
    curvatureFormExists := True }

structure ConnectionTheoryEvidence (C : ConnectionTheoryPackage) where
  compatibleWithWebClosed : C.compatibleWithWeb
  connectionDefinedClosed : C.connectionDefined
  curvatureFormExistsClosed : C.curvatureFormExists

def ConnectionTheoryClosed (C : ConnectionTheoryPackage) : Prop :=
  C.compatibleWithWeb ∧ C.connectionDefined ∧ C.curvatureFormExists

theorem connection_theory_closed_from_evidence (C : ConnectionTheoryPackage)
    (E : ConnectionTheoryEvidence C) : ConnectionTheoryClosed C := by
  exact And.intro E.compatibleWithWebClosed
    (And.intro E.connectionDefinedClosed E.curvatureFormExistsClosed)

end DifferentialGeometryWebsCanonicalLaneLean
end HautevilleHouse