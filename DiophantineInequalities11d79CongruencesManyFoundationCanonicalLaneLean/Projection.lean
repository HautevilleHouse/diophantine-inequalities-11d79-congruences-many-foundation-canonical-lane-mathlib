import DiophantineInequalities11d79CongruencesManyFoundationCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace DiophantineInequalities11d79CongruencesManyFoundationCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure DiophantineEndgameState where
  object : DiophantineAdmittedObject

def diophantineProjection : Projection DiophantineEndgameState := {
  toFun := fun x => x,
  idempotent := by intro x; rfl
}

theorem diophantine_projection_idempotent (x : DiophantineEndgameState) :
    diophantineProjection.toFun (diophantineProjection.toFun x) = diophantineProjection.toFun x := by
  exact diophantineProjection.idempotent x

end DiophantineInequalities11d79CongruencesManyFoundationCanonicalLaneLean
end HautevilleHouse