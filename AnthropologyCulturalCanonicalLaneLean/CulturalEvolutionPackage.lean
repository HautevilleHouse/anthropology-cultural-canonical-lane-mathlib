import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AnthropologyCulturalCanonicalLaneLean

structure CulturalEvolutionPackage (O : CulturalObject) where
  culturalTransmission : Prop
  innovationRate : Prop
  selectivePressure : Prop
  phylogeneticTree : Prop
  culturalTransmissionClosed : culturalTransmission
  innovationRateClosed : innovationRate
  selectivePressureClosed : selectivePressure
  phylogeneticTreeClosed : phylogeneticTree

structure CulturalEvolutionEvidence (O : CulturalObject) (E : CulturalEvolutionPackage O) where
  culturalTransmissionClosed : E.culturalTransmission
  innovationRateClosed : E.innovationRate
  selectivePressureClosed : E.selectivePressure
  phylogeneticTreeClosed : E.phylogeneticTree

def CulturalEvolutionClosed (O : CulturalObject) (E : CulturalEvolutionPackage O) : Prop :=
  E.culturalTransmission ∧ E.innovationRate ∧ E.selectivePressure ∧ E.phylogeneticTree

theorem cultural_evolution_closed_from_evidence (O : CulturalObject)
    (E : CulturalEvolutionPackage O) (Ev : CulturalEvolutionEvidence O E) :
    CulturalEvolutionClosed O E := by
  exact And.intro Ev.culturalTransmissionClosed
    (And.intro Ev.innovationRateClosed
      (And.intro Ev.selectivePressureClosed Ev.phylogeneticTreeClosed))

end AnthropologyCulturalCanonicalLaneLean
end HautevilleHouse