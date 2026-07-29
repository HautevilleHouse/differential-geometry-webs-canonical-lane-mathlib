import DifferentialGeometryWebsCanonicalLaneLean.WebInvariantTheory

/-!
# Web Deformation Cohomology Package
-/

namespace HautevilleHouse
namespace DifferentialGeometryWebsCanonicalLaneLean

structure WebDeformationCohomologyPackage {G : WebConnectionCurvaturePackage}
    {H : WebHolonomyGroupPackage G} {I : WebInvariantTheoryPackage H} where
  cochainComplex : Type u
  deformationCocycles : Type v
  obstructionClass : Type w
  cohomologyGroups : Type x
  unobstructedDeformation : Prop

structure WebDeformationCohomologyEvidence {G : WebConnectionCurvaturePackage}
    {H : WebHolonomyGroupPackage G} {I : WebInvariantTheoryPackage H}
    (D : WebDeformationCohomologyPackage I) where
  unobstructedDeformationClosed : D.unobstructedDeformation

def WebDeformationCohomologyClosed {G : WebConnectionCurvaturePackage}
    {H : WebHolonomyGroupPackage G} {I : WebInvariantTheoryPackage H}
    (D : WebDeformationCohomologyPackage I) : Prop :=
  D.unobstructedDeformation

theorem web_deformation_cohomology_closed_from_evidence
    {G : WebConnectionCurvaturePackage} {H : WebHolonomyGroupPackage G}
    {I : WebInvariantTheoryPackage H} (D : WebDeformationCohomologyPackage I)
    (E : WebDeformationCohomologyEvidence D) : WebDeformationCohomologyClosed D := by
  exact E.unobstructedDeformationClosed

end DifferentialGeometryWebsCanonicalLaneLean
end HautevilleHouse
