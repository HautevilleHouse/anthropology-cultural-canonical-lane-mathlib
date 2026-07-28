import HautevilleHouse.AnthropologyCulturalCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace AnthropologyCulturalCanonicalLaneLean

structure KinshipNetworkPackage {K : AnthropologicalObject} where
  lineageStructure : Prop
  marriageRules : Prop
  descentSystem : Prop
  kinshipTerminology : Prop

structure KinshipNetworkEvidence {K : AnthropologicalObject} (P : KinshipNetworkPackage K) where
  lineageStructureClosed : P.lineageStructure
  marriageRulesClosed : P.marriageRules
  descentSystemClosed : P.descentSystem
  kinshipTerminologyClosed : P.kinshipTerminology

def KinshipNetworkClosed {K : AnthropologicalObject} (P : KinshipNetworkPackage K) : Prop :=
  P.lineageStructure ∧ P.marriageRules ∧ P.descentSystem ∧ P.kinshipTerminology

theorem kinship_network_closed_from_evidence {K : AnthropologicalObject}
    (P : KinshipNetworkPackage K) (E : KinshipNetworkEvidence P) : KinshipNetworkClosed P := by
  exact And.intro E.lineageStructureClosed
    (And.intro E.marriageRulesClosed
      (And.intro E.descentSystemClosed E.kinshipTerminologyClosed))

end AnthropologyCulturalCanonicalLaneLean
end HautevilleHouse