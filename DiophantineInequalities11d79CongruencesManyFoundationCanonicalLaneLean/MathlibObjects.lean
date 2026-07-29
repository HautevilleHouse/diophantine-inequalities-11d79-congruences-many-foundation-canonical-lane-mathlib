import DiophantineInequalities11d79CongruencesManyFoundationCanonicalLaneLean.CongruencePackage

namespace HautevilleHouse
namespace DiophantineInequalities11d79CongruencesManyFoundationCanonicalLaneLean

structure DiophantineSpace where
  carrier : Type
  ringStructure : Ring carrier

structure DiophantineAdmittedObject where
  space : DiophantineSpace
  diophantineEquation : carrier → Prop
  boundedSolutionSet : Prop
  finiteSolutionSet : Prop
  conclusion : finiteSolutionSet

def DiophantineWitnessClosed (O : DiophantineAdmittedObject) : Prop :=
  O.finiteSolutionSet

end DiophantineInequalities11d79CongruencesManyFoundationCanonicalLaneLean
end HautevilleHouse