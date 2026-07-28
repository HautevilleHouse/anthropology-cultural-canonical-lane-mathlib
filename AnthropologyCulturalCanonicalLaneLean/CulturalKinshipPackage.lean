import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AnthropologyCulturalCanonicalLaneLean

structure CulturalKinshipPackage (O : CulturalObject) where
  descentSystem : Prop
  marriageRules : Prop
  residencePattern : Prop
  kinshipTerminology : Prop
  descentSystemClosed : descentSystem
  marriageRulesClosed : marriageRules
  residencePatternClosed : residencePattern
  kinshipTerminologyClosed : kinshipTerminology

structure CulturalKinshipEvidence (O : CulturalObject) (K : CulturalKinshipPackage O) where
  descentSystemClosed : K.descentSystem
  marriageRulesClosed : K.marriageRules
  residencePatternClosed : K.residencePattern
  kinshipTerminologyClosed : K.kinshipTerminology

def CulturalKinshipClosed (O : CulturalObject) (K : CulturalKinshipPackage O) : Prop :=
  K.descentSystem ∧ K.marriageRules ∧ K.residencePattern ∧ K.kinshipTerminology

theorem cultural_kinship_closed_from_evidence (O : CulturalObject) (K : CulturalKinshipPackage O)
    (E : CulturalKinshipEvidence O K) : CulturalKinshipClosed O K := by
  exact And.intro E.descentSystemClosed
    (And.intro E.marriageRulesClosed
      (And.intro E.residencePatternClosed E.kinshipTerminologyClosed))

end AnthropologyCulturalCanonicalLaneLean
end HautevilleHouse