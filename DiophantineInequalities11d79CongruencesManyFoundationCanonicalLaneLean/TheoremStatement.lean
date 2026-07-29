import DiophantineInequalities11d79CongruencesManyFoundationCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace DiophantineInequalities11d79CongruencesManyFoundationCanonicalLaneLean

structure DiophantineAdmittedObject where
  congruence : ℕ
  inequality : ℕ
  conclusion : Prop

def DiophantineWitnessClosed (O : DiophantineAdmittedObject) : Prop :=
  O.conclusion

end DiophantineInequalities11d79CongruencesManyFoundationCanonicalLaneLean
end HautevilleHouse