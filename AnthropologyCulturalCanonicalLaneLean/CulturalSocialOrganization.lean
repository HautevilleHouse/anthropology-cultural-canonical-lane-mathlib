import HautevilleHouse.AnthropologyCulturalCanonicalLaneLean.CulturalAdmissibleClass

namespace HautevilleHouse
namespace AnthropologyCulturalCanonicalLaneLean

structure SocialOrganizationPackage where
  hierarchy : Prop
  divisionOfLabor : Prop
  governance : Prop
  kinshipIntegration : Prop

structure SocialOrganizationEvidence (S : SocialOrganizationPackage) where
  hierarchyClosed : S.hierarchy
  divisionOfLaborClosed : S.divisionOfLabor
  governanceClosed : S.governance
  kinshipIntegrationClosed : S.kinshipIntegration

def SocialOrganizationClosed (S : SocialOrganizationPackage) : Prop :=
  S.hierarchy ∧ S.divisionOfLabor ∧ S.governance ∧ S.kinshipIntegration

theorem social_organization_closed_from_evidence (S : SocialOrganizationPackage) (E : SocialOrganizationEvidence S) :
    SocialOrganizationClosed S := by
  exact And.intro E.hierarchyClosed (And.intro E.divisionOfLaborClosed (And.intro E.governanceClosed E.kinshipIntegrationClosed))

end AnthropologyCulturalCanonicalLaneLean
end HautevilleHouse