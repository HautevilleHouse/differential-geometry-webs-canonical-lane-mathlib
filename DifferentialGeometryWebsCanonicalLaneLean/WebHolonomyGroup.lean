import DifferentialGeometryWebsCanonicalLaneLean.WebConnectionCurvature

/-!
# Web Holonomy Group Package
-/

namespace HautevilleHouse
namespace DifferentialGeometryWebsCanonicalLaneLean

structure WebHolonomyGroupPackage {G : WebConnectionCurvaturePackage} where
  loopSpace : Type u
  holonomyRepresentation : Type v
  holonomyGroup : Type w
  wellDefined : Prop
  subgroupStructure : Prop
  curvatureHolonomyRelation : Prop

structure WebHolonomyGroupEvidence {G : WebConnectionCurvaturePackage}
    (H : WebHolonomyGroupPackage G) where
  wellDefinedClosed : H.wellDefined
  subgroupStructureClosed : H.subgroupStructure
  curvatureHolonomyRelationClosed : H.curvatureHolonomyRelation

def WebHolonomyGroupClosed {G : WebConnectionCurvaturePackage}
    (H : WebHolonomyGroupPackage G) : Prop :=
  H.wellDefined ∧ H.subgroupStructure ∧ H.curvatureHolonomyRelation

theorem web_holonomy_group_closed_from_evidence
    {G : WebConnectionCurvaturePackage} (H : WebHolonomyGroupPackage G)
    (E : WebHolonomyGroupEvidence H) : WebHolonomyGroupClosed H := by
  exact And.intro E.wellDefinedClosed
    (And.intro E.subgroupStructureClosed E.curvatureHolonomyRelationClosed)

end DifferentialGeometryWebsCanonicalLaneLean
end HautevilleHouse
