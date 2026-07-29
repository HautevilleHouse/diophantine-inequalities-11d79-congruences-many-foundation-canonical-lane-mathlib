import DiophantineInequalities11d79CongruencesManyFoundationCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace DiophantineInequalities11d79CongruencesManyFoundationCanonicalLaneLean

def gateClosed (A : ManyCongruenceAdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : ManyCongruenceAdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end DiophantineInequalities11d79CongruencesManyFoundationCanonicalLaneLean
end HautevilleHouse
