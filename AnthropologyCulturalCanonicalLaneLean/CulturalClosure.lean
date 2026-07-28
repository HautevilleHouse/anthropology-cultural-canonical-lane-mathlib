import AnthropologyCulturalCanonicalLaneLean.BridgeLemmas
import AnthropologyCulturalCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace AnthropologyCulturalCanonicalLaneLean

def ConstrainedCulturalClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_cultural_endgame (A : AdmissibleClass) :
    ConstrainedCulturalClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end AnthropologyCulturalCanonicalLaneLean
end HautevilleHouse
