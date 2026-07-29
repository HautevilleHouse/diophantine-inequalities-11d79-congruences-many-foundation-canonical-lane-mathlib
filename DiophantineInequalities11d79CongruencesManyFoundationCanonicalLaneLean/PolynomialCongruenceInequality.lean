import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiophantineInequalities11d79CongruencesManyFoundationCanonicalLaneLean

structure PolynomialCongruenceFamily where
  baseField : Type u
  modulus : ℕ
  polyFamily : ℕ → (ℕ→ ℕ)
  degreeBound : ℕ → ℕ
  congruenceCondition : ℕ → Prop
  inequalitySystem : ℕ → Prop

structure PolynomialCongruenceEvidence (P : PolynomialCongruenceFamily) where
  degreeBoundClosed : ∀ n : ℕ, P.degreeBound n ≤ 3
  congruenceConditionClosed : ∀ n : ℕ, P.congruenceCondition n
  inequalitySystemClosed : ∀ n : ℕ, P.inequalitySystem n

def PolynomialCongruenceClosed (P : PolynomialCongruenceFamily) : Prop :=
  (∀ n : ℕ, P.congruenceCondition n) ∧ (∀ n : ℕ, P.inequalitySystem n)

theorem polynomial_congruence_closed_from_evidence (P : PolynomialCongruenceFamily) (E : PolynomialCongruenceEvidence P) : PolynomialCongruenceClosed P := by
  exact And.intro E.congruenceConditionClosed E.inequalitySystemClosed

end DiophantineInequalities11d79CongruencesManyFoundationCanonicalLaneLean
end HautevilleHouse