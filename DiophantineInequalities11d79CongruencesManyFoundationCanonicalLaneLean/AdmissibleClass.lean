import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiophantineInequalities11d79CongruencesManyFoundationCanonicalLaneLean

structure DiophantineAdmittedObject where
  modulus : ℕ
  congruenceSystem : Prop
  solutionCountUpperBound : ℕ
  conclusion : solutionCountUpperBound < modulus

structure AdmissibleClass where
  object : DiophantineAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  DiophantineWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

def DiophantineWitnessClosed (O : DiophantineAdmittedObject) : Prop :=
  O.conclusion

end DiophantineInequalities11d79CongruencesManyFoundationCanonicalLaneLean
end HautevilleHouse
