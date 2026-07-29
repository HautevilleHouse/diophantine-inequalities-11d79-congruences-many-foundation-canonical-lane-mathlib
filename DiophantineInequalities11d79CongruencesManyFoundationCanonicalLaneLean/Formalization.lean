import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DiophantineInequalities11d79CongruencesManyFoundationCanonicalLaneLean.CongruenceEquationTree

namespace HautevilleHouse
namespace DiophantineInequalities11d79CongruencesManyFoundationCanonicalLaneLean

inductive FormulaExpr where
  | var (name : String)
  | num (value : Nat)
  | mod (expr : FormulaExpr) (modulus : Nat)
  | add (lhs rhs : FormulaExpr)
  | mul (lhs rhs : FormulaExpr)
  | eq (lhs rhs : FormulaExpr)
deriving Repr, DecidableEq

structure FormulaComponent where
  key : String
  value : String
deriving Repr, DecidableEq

structure SourceFormulaModel where
  group : String
  key : String
  status : String
  formula : String
  expr : FormulaExpr
  parseStatus : String
  sourceSection : String
  notes : String
  validation : String
  componentKeys : List String
  components : List FormulaComponent
deriving Repr, DecidableEq

structure FormalizationCertificate where
  sourceRepo : String
  sourceCheckoutHead : String
  packageLayerTranslated : Bool
  sourceHashesRecorded : Bool
  formulaLayerModeled : Bool
  guardLayerModeled : Bool
  theoremBoundaryOpen : Bool
  sourceConjectureClosureClaimed : Bool
  leanBuildChecked : Bool
deriving Repr, DecidableEq

end DiophantineInequalities11d79CongruencesManyFoundationCanonicalLaneLean
end HautevilleHouse