import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AnthropologyCulturalCanonicalLaneLean

structure CulturalSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure CulturalAdmittedObject where
  space : CulturalSpace
  hasKinshipSystem : Prop
  hasCulturalTransmission : Prop
  conclusion : hasKinshipSystem ∧ hasCulturalTransmission

structure CulturalEndgameState where
  object : CulturalAdmittedObject

def CulturalWitnessClosed (O : CulturalAdmittedObject) : Prop :=
  O.conclusion

end AnthropologyCulturalCanonicalLaneLean
end HautevilleHouse
