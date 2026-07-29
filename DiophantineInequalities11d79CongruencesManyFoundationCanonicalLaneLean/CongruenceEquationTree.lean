import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiophantineInequalities11d79CongruencesManyFoundationCanonicalLaneLean

structure CongruenceEquationTree where
  modulus : ℕ
  variables : ℕ
  equations : List (List ℤ)
  solutionSpace : ℕ → Prop

def CongruenceEquationTreeClosed (C : CongruenceEquationTree) : Prop :=
  C.equations.All (fun eq => eq.All (fun c => c % C.modulus = 0))

end DiophantineInequalities11d79CongruencesManyFoundationCanonicalLaneLean
end HautevilleHouse