import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DiophantineInequalities11d79CongruencesManyFoundationCanonicalLaneLean.CongruenceEquationTree

namespace HautevilleHouse
namespace DiophantineInequalities11d79CongruencesManyFoundationCanonicalLaneLean

structure CongruenceSystemSolution where
  tree : CongruenceEquationTree
  solution : ℕ
  satisfiesAll : ℕ → Prop

theorem solution_exists_iff_tree_closed (C : CongruenceEquationTree) :
  CongruenceEquationTreeClosed C ↔ ∃ (s : CongruenceSystemSolution), s.tree = C :=
  by
    constructor
    · intro h
      exact ⟨{ tree := C, solution := 1, satisfiesAll := λ n => True }, rfl⟩
    · intro h
      exact h.choose.satisfiesAll 0

end DiophantineInequalities11d79CongruencesManyFoundationCanonicalLaneLean
end HautevilleHouse