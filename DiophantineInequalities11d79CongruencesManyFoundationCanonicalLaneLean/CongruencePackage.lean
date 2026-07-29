import DiophantineInequalities11d79CongruencesManyFoundationCanonicalLaneLean.AdmissibleClass

/-!
# Congruence Structure Package
-/

namespace HautevilleHouse
namespace DiophantineInequalities11d79CongruencesManyFoundationCanonicalLaneLean

structure CongruencePackage (A : AdmissibleClass) where
  modulus : ℕ
  congruenceClass : ℕ
  polynomial : Polynomial ℤ
  solutionExistence : Prop
  solutionCount : ℕ

structure CongruenceEvidence (A : AdmissibleClass) (C : CongruencePackage A) where
  solutionExistenceClosed : C.solutionExistence
  solutionCountClosed : C.solutionCount > 0

def CongruenceClosed (A : AdmissibleClass) (C : CongruencePackage A) : Prop :=
  C.solutionExistence ∧ C.solutionCount > 0

theorem congruence_closed_from_evidence (A : AdmissibleClass) (C : CongruencePackage A) (E : CongruenceEvidence A C) : CongruenceClosed A C := by
  exact And.intro E.solutionExistenceClosed E.solutionCountClosed

end DiophantineInequalities11d79CongruencesManyFoundationCanonicalLaneLean
end HautevilleHouse