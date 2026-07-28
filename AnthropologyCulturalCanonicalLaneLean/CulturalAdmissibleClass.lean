import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AnthropologyCulturalCanonicalLaneLean

structure CulturalAdmittedObject where
  objectType : String
  culturalTraits : List String
  conclusion : Prop

structure AdmissibleClass where
  object : CulturalAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end AnthropologyCulturalCanonicalLaneLean
end HautevilleHouse