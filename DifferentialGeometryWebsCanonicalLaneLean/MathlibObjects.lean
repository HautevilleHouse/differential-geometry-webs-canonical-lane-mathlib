import DifferentialGeometryWebsCanonicalLaneLean.TheoremStatement
import canonicalLaneMathlibCore
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace DifferentialGeometryWebsCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure DGWebSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure DGWebAdmittedObject where
  space : DGWebSpace
  webStructure : Prop
  curvatureInvariants : Prop
  connectionFlat : Prop
  holonomyGroup : Type
  holonomyTopology : TopologicalSpace holonomyGroup
  holonomyDiscrete : Prop
  conclusion : holonomyDiscrete

structure DGWebEndgameState where
  object : DGWebAdmittedObject

def DGWebWitnessClosed (O : DGWebAdmittedObject) : Prop :=
  O.holonomyDiscrete

end DifferentialGeometryWebsCanonicalLaneLean
end HautevilleHouse