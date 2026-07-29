import DiophantineInequalities11d79CongruencesManyFoundationCanonicalLaneLean.CongruenceGateLemmas

namespace HautevilleHouse
namespace DiophantineInequalities11d79CongruencesManyFoundationCanonicalLaneLean

structure CongruenceSystemPackage where
  modulus : ℕ
  equationSet : Prop
  solutionCount : ℕ
  consistency : Prop

structure CongruenceSystemEvidence (C : CongruenceSystemPackage) where
  equationSetClosed : C.equationSet
  consistencyClosed : C.consistency

def CongruenceSystemClosed (C : CongruenceSystemPackage) : Prop :=
  C.equationSet ∧ C.consistency

theorem congruence_system_closed_from_evidence
    (C : CongruenceSystemPackage) (E : CongruenceSystemEvidence C) :
    CongruenceSystemClosed C := by
  exact And.intro E.equationSetClosed E.consistencyClosed

structure InequalityBoundsPackage where
  boundType : Prop
  inequalityForm : Prop
  sharpness : Prop

structure InequalityBoundsEvidence (I : InequalityBoundsPackage) where
  boundTypeClosed : I.boundType
  inequalityFormClosed : I.inequalityForm
  sharpnessClosed : I.sharpness

def InequalityBoundsClosed (I : InequalityBoundsPackage) : Prop :=
  I.boundType ∧ I.inequalityForm ∧ I.sharpness

theorem inequality_bounds_closed_from_evidence
    (I : InequalityBoundsPackage) (E : InequalityBoundsEvidence I) :
    InequalityBoundsClosed I := by
  exact And.intro E.boundTypeClosed (And.intro E.inequalityFormClosed E.sharpnessClosed)

structure CongruenceAnalyticFoundation where
  congruence : CongruenceSystemPackage
  congruenceEvidence : CongruenceSystemEvidence congruence
  inequalities : InequalityBoundsPackage
  inequalitiesEvidence : InequalityBoundsEvidence inequalities

def CongruenceAnalyticFoundationClosed (A : CongruenceAnalyticFoundation) : Prop :=
  CongruenceSystemClosed A.congruence ∧ InequalityBoundsClosed A.inequalities

theorem congruence_analytic_foundation_closed_from_evidence
    (A : CongruenceAnalyticFoundation) :
    CongruenceAnalyticFoundationClosed A := by
  exact And.intro
    (congruence_system_closed_from_evidence A.congruence A.congruenceEvidence)
    (inequality_bounds_closed_from_evidence A.inequalities A.inequalitiesEvidence)

end DiophantineInequalities11d79CongruencesManyFoundationCanonicalLaneLean
end HautevilleHouse