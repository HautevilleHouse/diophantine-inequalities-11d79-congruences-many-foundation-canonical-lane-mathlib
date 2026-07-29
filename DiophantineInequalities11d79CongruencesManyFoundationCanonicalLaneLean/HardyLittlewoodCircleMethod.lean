import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiophantineInequalities11d79CongruencesManyFoundationCanonicalLaneLean

structure HardyLittlewoodCircleMethod where
  exponentialSum : Prop
  majorArcsContribution : Prop
  minorArcsBound : Prop
  asymptoticFormula : Prop

def HardyLittlewoodClosed (H : HardyLittlewoodCircleMethod) : Prop :=
  H.exponentialSum ∧ H.majorArcsContribution ∧ H.minorArcsBound ∧ H.asymptoticFormula

structure HardyLittlewoodEvidence (H : HardyLittlewoodCircleMethod) where
  exponentialSumClosed : H.exponentialSum
  majorArcsContributionClosed : H.majorArcsContribution
  minorArcsBoundClosed : H.minorArcsBound
  asymptoticFormulaClosed : H.asymptoticFormula

theorem hardy_littlewood_closed_from_evidence (H : HardyLittlewoodCircleMethod) (E : HardyLittlewoodEvidence H) :
    HardyLittlewoodClosed H := by
  exact And.intro E.exponentialSumClosed (And.intro E.majorArcsContributionClosed (And.intro E.minorArcsBoundClosed E.asymptoticFormulaClosed))

end DiophantineInequalities11d79CongruencesManyFoundationCanonicalLaneLean
end HautevilleHouse
