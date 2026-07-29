import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiophantineInequalities11d79CongruencesManyFoundationCanonicalLaneLean

structure SieveMethods where
  siftedSet : Prop
  upperBoundEstimate : Prop
  lowerBoundEstimate : Prop
  mainTermDominates : Prop

def SieveClosed (S : SieveMethods) : Prop :=
  S.siftedSet ∧ S.upperBoundEstimate ∧ S.lowerBoundEstimate ∧ S.mainTermDominates

structure SieveEvidence (S : SieveMethods) where
  siftedSetClosed : S.siftedSet
  upperBoundEstimateClosed : S.upperBoundEstimate
  lowerBoundEstimateClosed : S.lowerBoundEstimate
  mainTermDominatesClosed : S.mainTermDominates

theorem sieve_closed_from_evidence (S : SieveMethods) (E : SieveEvidence S) :
    SieveClosed S := by
  exact And.intro E.siftedSetClosed (And.intro E.upperBoundEstimateClosed (And.intro E.lowerBoundEstimateClosed E.mainTermDominatesClosed))

end DiophantineInequalities11d79CongruencesManyFoundationCanonicalLaneLean
end HautevilleHouse
