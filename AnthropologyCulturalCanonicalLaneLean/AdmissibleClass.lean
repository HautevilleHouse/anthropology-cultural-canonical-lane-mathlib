import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AnthropologyCulturalCanonicalLaneLean

structure CulturalObject where
  society : Type
  ethnographicRecord : Prop
  kinshipStructure : Prop
  culturalTraits : Prop

structure AdmissibleClass where
  object : CulturalObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  CulturalWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end AnthropologyCulturalCanonicalLaneLean
end HautevilleHouse