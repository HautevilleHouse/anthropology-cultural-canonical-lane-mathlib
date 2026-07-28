import canonicalLaneMathlib.AdmissibleClass

/-!
# Symbolic Classification Package
-/

namespace HautevilleHouse
namespace AnthropologyCulturalCanonicalLaneLean

structure SymbolicClassificationPackage where
  classificationSystem : String
  binaryOpposition : Prop
  analogicReasoning : Prop
  cosmologicalOrder : Prop

structure SymbolicClassificationEvidence (S : SymbolicClassificationPackage) where
  classificationSystemClosed : S.classificationSystem = "totemic" ∨ S.classificationSystem = "hierarchical" ∨ S.classificationSystem = "conceptual"
  binaryOppositionClosed : S.binaryOpposition
  analogicReasoningClosed : S.analogicReasoning
  cosmologicalOrderClosed : S.cosmologicalOrder

def SymbolicClassificationClosed (S : SymbolicClassificationPackage) : Prop :=
  (S.classificationSystem = "totemic" ∨ S.classificationSystem = "hierarchical" ∨ S.classificationSystem = "conceptual") ∧
  S.binaryOpposition ∧ S.analogicReasoning ∧ S.cosmologicalOrder

theorem symbolic_classification_closed_from_evidence (S : SymbolicClassificationPackage) (E : SymbolicClassificationEvidence S) :
    SymbolicClassificationClosed S := by
  exact And.intro E.classificationSystemClosed (And.intro E.binaryOppositionClosed (And.intro E.analogicReasoningClosed E.cosmologicalOrderClosed))

end AnthropologyCulturalCanonicalLaneLean
end HautevilleHouse