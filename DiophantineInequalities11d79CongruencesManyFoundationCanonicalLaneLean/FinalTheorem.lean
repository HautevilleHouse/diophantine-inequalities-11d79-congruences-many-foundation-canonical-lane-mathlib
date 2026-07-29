import DiophantineInequalities11d79CongruencesManyFoundationCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace DiophantineInequalities11d79CongruencesManyFoundationCanonicalLaneLean

def ConstrainedCongruenceClosure (A : ManyCongruenceAdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_congruence_endgame (A : ManyCongruenceAdmissibleClass) :
    ConstrainedCongruenceClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end DiophantineInequalities11d79CongruencesManyFoundationCanonicalLaneLean
end HautevilleHouse
