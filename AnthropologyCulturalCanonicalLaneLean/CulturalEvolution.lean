import HautevilleHouse.AnthropologyCulturalCanonicalLaneLean.CulturalAdmissibleClass

namespace HautevilleHouse
namespace AnthropologyCulturalCanonicalLaneLean

structure EvolutionPackage where
  selectionPressures : Prop
  driftModel : Prop
  phylogeneticTree : Prop
  convergence : Prop

structure EvolutionEvidence (E : EvolutionPackage) where
  selectionPressuresClosed : E.selectionPressures
  driftModelClosed : E.driftModel
  phylogeneticTreeClosed : E.phylogeneticTree
  convergenceClosed : E.convergence

def EvolutionClosed (E : EvolutionPackage) : Prop :=
  E.selectionPressures ∧ E.driftModel ∧ E.phylogeneticTree ∧ E.convergence

theorem evolution_closed_from_evidence (E : EvolutionPackage) (Ev : EvolutionEvidence E) :
    EvolutionClosed E := by
  exact And.intro Ev.selectionPressuresClosed (And.intro Ev.driftModelClosed (And.intro Ev.phylogeneticTreeClosed Ev.convergenceClosed))

end AnthropologyCulturalCanonicalLaneLean
end HautevilleHouse