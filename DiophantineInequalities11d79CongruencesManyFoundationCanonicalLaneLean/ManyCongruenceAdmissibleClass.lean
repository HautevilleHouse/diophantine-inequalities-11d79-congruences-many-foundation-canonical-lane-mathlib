import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiophantineInequalities11d79CongruencesManyFoundationCanonicalLaneLean

structure ManyCongruenceAdmittedObject where
  modulusFamily : ℕ → ℕ
  congruenceCollection : ℕ → Prop
  solutionSet : ℕ → Set ℕ
  uniformBound : ℕ
  conclusion : uniformBound > 0

structure ManyCongruenceAdmissibleClass where
  object : ManyCongruenceAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def ManyCongruenceWitnessClosed (O : ManyCongruenceAdmittedObject) : Prop :=
  O.conclusion

end DiophantineInequalities11d79CongruencesManyFoundationCanonicalLaneLean
end HautevilleHouse
