import DiophantineInequalities11d79CongruencesManyFoundationCanonicalLaneLean.CongruencePackage

/-!
# Exponential Diophantine Package
-/

namespace HautevilleHouse
namespace DiophantineInequalities11d79CongruencesManyFoundationCanonicalLaneLean

structure ExponentialDiophantinePackage (A : AdmissibleClass) (C : CongruencePackage A) where
  exponentialEquation : ℕ → ℕ
  boundedSolution : Prop
  finiteSolutionSet : Prop

structure ExponentialDiophantineEvidence (A : AdmissibleClass) (C : CongruencePackage A) (E : ExponentialDiophantinePackage A C) where
  boundedSolutionClosed : E.boundedSolution
  finiteSolutionSetClosed : E.finiteSolutionSet

def ExponentialDiophantineClosed (A : AdmissibleClass) (C : CongruencePackage A) (E : ExponentialDiophantinePackage A C) : Prop :=
  E.boundedSolution ∧ E.finiteSolutionSet

theorem exponential_diophantine_closed_from_evidence (A : AdmissibleClass) (C : CongruencePackage A) (E : ExponentialDiophantinePackage A C) (Ev : ExponentialDiophantineEvidence A C E) : ExponentialDiophantineClosed A C E := by
  exact And.intro Ev.boundedSolutionClosed Ev.finiteSolutionSetClosed

end DiophantineInequalities11d79CongruencesManyFoundationCanonicalLaneLean
end HautevilleHouse