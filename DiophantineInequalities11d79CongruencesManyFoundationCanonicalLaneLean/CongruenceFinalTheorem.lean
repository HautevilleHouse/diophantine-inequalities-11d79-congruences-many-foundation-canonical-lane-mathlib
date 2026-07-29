import DiophantineInequalities11d79CongruencesManyFoundationCanonicalLaneLean.CongruenceGateLemmas

namespace HautevilleHouse
namespace DiophantineInequalities11d79CongruencesManyFoundationCanonicalLaneLean

def ConstrainedCongruenceClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_congruence_endgame (A : AdmissibleClass) :
    ConstrainedCongruenceClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end DiophantineInequalities11d79CongruencesManyFoundationCanonicalLaneLean
end HautevilleHouse