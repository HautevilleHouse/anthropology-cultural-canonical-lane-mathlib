import HautevilleHouse.AnthropologyCulturalCanonicalLaneLean.CulturalEvolution

namespace HautevilleHouse
namespace AnthropologyCulturalCanonicalLaneLean

structure RitualFieldPackage {K : AnthropologicalObject}
    {N : KinshipNetworkPackage K} {E : CulturalEvolutionPackage N} where
  symbolicStructure : Prop
  performanceRules : Prop
  socialFunction : Prop
  variationAcrossGroups : Prop

structure RitualFieldEvidence {K : AnthropologicalObject}
    {N : KinshipNetworkPackage K} {E : CulturalEvolutionPackage N}
    (R : RitualFieldPackage E) where
  symbolicStructureClosed : R.symbolicStructure
  performanceRulesClosed : R.performanceRules
  socialFunctionClosed : R.socialFunction
  variationAcrossGroupsClosed : R.variationAcrossGroups

def RitualFieldClosed {K : AnthropologicalObject}
    {N : KinshipNetworkPackage K} {E : CulturalEvolutionPackage N}
    (R : RitualFieldPackage E) : Prop :=
  R.symbolicStructure ∧ R.performanceRules ∧ R.socialFunction ∧ R.variationAcrossGroups

theorem ritual_field_closed_from_evidence {K : AnthropologicalObject}
    {N : KinshipNetworkPackage K} {E : CulturalEvolutionPackage N}
    (R : RitualFieldPackage E) (Ev : RitualFieldEvidence R) : RitualFieldClosed R := by
  exact And.intro Ev.symbolicStructureClosed
    (And.intro Ev.performanceRulesClosed
      (And.intro Ev.socialFunctionClosed Ev.variationAcrossGroupsClosed))

end AnthropologyCulturalCanonicalLaneLean
end HautevilleHouse