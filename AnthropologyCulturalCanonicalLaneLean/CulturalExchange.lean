import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AnthropologyCulturalCanonicalLaneLean

structure CulturalExchangePackage where
  tradeRoutes : Prop
  culturalDiffusion : Prop
  materialExchange : Prop
  socialIntegration : Prop

structure CulturalExchangeEvidence (E : CulturalExchangePackage) where
  tradeRoutesClosed : E.tradeRoutes
  culturalDiffusionClosed : E.culturalDiffusion
  materialExchangeClosed : E.materialExchange
  socialIntegrationClosed : E.socialIntegration

def CulturalExchangeClosed (E : CulturalExchangePackage) : Prop :=
  E.tradeRoutes ∧ E.culturalDiffusion ∧ E.materialExchange ∧ E.socialIntegration

theorem cultural_exchange_closed_from_evidence (E : CulturalExchangePackage) (Ev : CulturalExchangeEvidence E) :
    CulturalExchangeClosed E := by
  exact And.intro Ev.tradeRoutesClosed
    (And.intro Ev.culturalDiffusionClosed
      (And.intro Ev.materialExchangeClosed Ev.socialIntegrationClosed))

end AnthropologyCulturalCanonicalLaneLean
end HautevilleHouse