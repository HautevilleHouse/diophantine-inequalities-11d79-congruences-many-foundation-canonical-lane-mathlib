import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiophantineInequalities11d79CongruencesManyFoundationCanonicalLaneLean

structure ManyCongruencePackage where
  congruenceSet : List (ℕ→ ℕ)
  solutionCountBound : ℕ → ℕ
  asymptoticEstimate : Prop
  errorTermBound : ℕ → ℕ
  averageOrder : ℕ → ℕ

structure ManyCongruenceEvidence (M : ManyCongruencePackage) where
  solutionCountBoundClosed : ∀ n : ℕ, M.solutionCountBound n ≥ 0
  asymptoticEstimateClosed : M.asymptoticEstimate
  errorTermBoundClosed : M.errorTermBound = M.averageOrder

def ManyCongruenceClosed (M : ManyCongruencePackage) : Prop :=
  M.asymptoticEstimate ∧ (∀ n : ℕ, M.solutionCountBound n ≥ 0)

theorem many_congruence_closed_from_evidence (M : ManyCongruencePackage) (E : ManyCongruenceEvidence M) : ManyCongruenceClosed M := by
  exact And.intro E.asymptoticEstimateClosed E.solutionCountBoundClosed

end DiophantineInequalities11d79CongruencesManyFoundationCanonicalLaneLean
end HautevilleHouse