import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.AnthropologyCulturalCanonicalLaneLean.CulturalKinship
import HautevilleHouse.AnthropologyCulturalCanonicalLaneLean.CulturalRitual
import HautevilleHouse.AnthropologyCulturalCanonicalLaneLean.CulturalExchange

namespace HautevilleHouse
namespace AnthropologyCulturalCanonicalLaneLean

def ConstrainedAnthropologyClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_anthropology_endgame (A : AdmissibleClass) :
    ConstrainedAnthropologyClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end AnthropologyCulturalCanonicalLaneLean
end HautevilleHouse