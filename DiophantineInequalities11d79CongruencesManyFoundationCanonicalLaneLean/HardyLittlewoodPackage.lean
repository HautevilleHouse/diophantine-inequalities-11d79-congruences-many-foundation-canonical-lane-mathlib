import DiophantineInequalities11d79CongruencesManyFoundationCanonicalLaneLean.ExponentialDiophantinePackage

/-!
# Hardy-Littlewood Circle Method Package
-/

namespace HautevilleHouse
namespace DiophantineInequalities11d79CongruencesManyFoundationCanonicalLaneLean

structure HardyLittlewoodPackage (A : AdmissibleClass) (C : CongruencePackage A) (E : ExponentialDiophantinePackage A C) where
  singularSeries : ℚ
  singularIntegral : ℚ
  asymptoticFormula : Prop

structure HardyLittlewoodEvidence (A : AdmissibleClass) (C : CongruencePackage A) (E : ExponentialDiophantinePackage A C) (H : HardyLittlewoodPackage A C E) where
  asymptoticFormulaClosed : H.asymptoticFormula

def HardyLittlewoodClosed (A : AdmissibleClass) (C : CongruencePackage A) (E : ExponentialDiophantinePackage A C) (H : HardyLittlewoodPackage A C E) : Prop :=
  H.asymptoticFormula

theorem hardy_littlewood_closed_from_evidence (A : AdmissibleClass) (C : CongruencePackage A) (E : ExponentialDiophantinePackage A C) (H : HardyLittlewoodPackage A C E) (Ev : HardyLittlewoodEvidence A C E H) : HardyLittlewoodClosed A C E H := by
  exact Ev.asymptoticFormulaClosed

end DiophantineInequalities11d79CongruencesManyFoundationCanonicalLaneLean
end HautevilleHouse