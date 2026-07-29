import canonicalLaneMathlib.AdmissibleClass
import DiophantineInequalities11d79CongruencesManyFoundationCanonicalLaneLean.ManyCongruenceAdmissibleClass

namespace HautevilleHouse
namespace DiophantineInequalities11d79CongruencesManyFoundationCanonicalLaneLean

def bridgeClosed (A : ManyCongruenceAdmissibleClass) : Prop :=
  ManyCongruenceWitnessClosed A.object

theorem bridge_from_admissible_class (A : ManyCongruenceAdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end DiophantineInequalities11d79CongruencesManyFoundationCanonicalLaneLean
end HautevilleHouse
