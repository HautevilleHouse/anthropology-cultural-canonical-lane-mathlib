import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AnthropologyCulturalCanonicalLaneLean

structure CulturalRitualPackage where
  ritualStructure : Prop
  symbolism : Prop
  socialFunction : Prop
  temporalRecurrence : Prop

structure CulturalRitualEvidence (R : CulturalRitualPackage) where
  ritualStructureClosed : R.ritualStructure
  symbolismClosed : R.symbolism
  socialFunctionClosed : R.socialFunction
  temporalRecurrenceClosed : R.temporalRecurrence

def CulturalRitualClosed (R : CulturalRitualPackage) : Prop :=
  R.ritualStructure ∧ R.symbolism ∧ R.socialFunction ∧ R.temporalRecurrence

theorem cultural_ritual_closed_from_evidence (R : CulturalRitualPackage) (E : CulturalRitualEvidence R) :
    CulturalRitualClosed R := by
  exact And.intro E.ritualStructureClosed
    (And.intro E.symbolismClosed
      (And.intro E.socialFunctionClosed E.temporalRecurrenceClosed))

end AnthropologyCulturalCanonicalLaneLean
end HautevilleHouse