import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiophantineInequalities11d79CongruencesManyFoundationCanonicalLaneLean

structure DiophantineAdmittedObject where
  solutionSpace : Type
  congruenceSystem : Prop
  inequalityBounds : Prop
  conclusion : congruenceSystem ∧ inequalityBounds

structure AdmissibleClass where
  object : DiophantineAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  A.object.conclusion ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end DiophantineInequalities11d79CongruencesManyFoundationCanonicalLaneLean
end HautevilleHouse