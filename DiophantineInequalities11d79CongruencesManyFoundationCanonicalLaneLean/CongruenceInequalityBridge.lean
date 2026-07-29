import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DiophantineInequalities11d79CongruencesManyFoundationCanonicalLaneLean.CongruenceEquationTree

namespace HautevilleHouse
namespace DiophantineInequalities11d79CongruencesManyFoundationCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  ∃ (C : CongruenceEquationTree), CongruenceEquationTreeClosed C

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A :=
  by
    exact Exists.intro (by
      let obj := A.object
      have h : CongruenceEquationTree := obj
      exact h) (by
      let h := A.endpointSatisfied
      exact h)

end DiophantineInequalities11d79CongruencesManyFoundationCanonicalLaneLean
end HautevilleHouse