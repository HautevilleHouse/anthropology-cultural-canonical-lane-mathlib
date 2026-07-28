import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AnthropologyCulturalCanonicalLaneLean

structure CulturalKinshipPackage where
  lineageSystem : Prop
  marriageRules : Prop
  descentType : Prop
  kinshipTerminology : Prop

structure CulturalKinshipEvidence (K : CulturalKinshipPackage) where
  lineageSystemClosed : K.lineageSystem
  marriageRulesClosed : K.marriageRules
  descentTypeClosed : K.descentType
  kinshipTerminologyClosed : K.kinshipTerminology

def CulturalKinshipClosed (K : CulturalKinshipPackage) : Prop :=
  K.lineageSystem ∧ K.marriageRules ∧ K.descentType ∧ K.kinshipTerminology

theorem cultural_kinship_closed_from_evidence (K : CulturalKinshipPackage) (E : CulturalKinshipEvidence K) :
    CulturalKinshipClosed K := by
  exact And.intro E.lineageSystemClosed
    (And.intro E.marriageRulesClosed
      (And.intro E.descentTypeClosed E.kinshipTerminologyClosed))

end AnthropologyCulturalCanonicalLaneLean
end HautevilleHouse