import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiophantineInequalities11d79CongruencesManyFoundationCanonicalLaneLean

structure SievingSystem where
  modulusSet : Finset ℕ
  sievingFunction : ℕ → ℕ → ℕ
  remainderEstimate : ℕ → ℕ
  largeSieveInequality : Prop
  optimalBound : ℕ → ℕ

structure SievingEvidence (S : SievingSystem) where
  remainderEstimateClosed : ∀ n : ℕ, S.remainderEstimate n ≤ S.optimalBound n
  largeSieveInequalityClosed : S.largeSieveInequality

def SievingClosed (S : SievingSystem) : Prop :=
  S.largeSieveInequality ∧ (∀ n : ℕ, S.remainderEstimate n ≤ S.optimalBound n)

theorem sieving_closed_from_evidence (S : SievingSystem) (E : SievingEvidence S) : SievingClosed S := by
  exact And.intro E.largeSieveInequalityClosed E.remainderEstimateClosed

end DiophantineInequalities11d79CongruencesManyFoundationCanonicalLaneLean
end HautevilleHouse