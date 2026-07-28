import HautevilleHouse.AnthropologyCulturalCanonicalLaneLean.CulturalAdmissibleClass

namespace HautevilleHouse
namespace AnthropologyCulturalCanonicalLaneLean

structure KinshipPackage where
  kinshipSystem : String
  descentRule : Prop
  allianceRule : Prop
  terminology : Prop

structure KinshipEvidence (K : KinshipPackage) where
  descentRuleClosed : K.descentRule
  allianceRuleClosed : K.allianceRule
  terminologyClosed : K.terminology

def KinshipClosed (K : KinshipPackage) : Prop :=
  K.descentRule ∧ K.allianceRule ∧ K.terminology

theorem kinship_closed_from_evidence (K : KinshipPackage) (E : KinshipEvidence K) :
    KinshipClosed K := by
  exact And.intro E.descentRuleClosed (And.intro E.allianceRuleClosed E.terminologyClosed)

end AnthropologyCulturalCanonicalLaneLean
end HautevilleHouse