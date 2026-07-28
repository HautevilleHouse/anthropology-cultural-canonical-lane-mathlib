import canonicalLaneMathlib.AdmissibleClass

/-!
# Kinship System Package
-/

namespace HautevilleHouse
namespace AnthropologyCulturalCanonicalLaneLean

structure KinshipSystemPackage where
  descentType : String
  marriageRules : Prop
  lineageClassification : Prop
  generationalHierarchy : Prop

structure KinshipSystemEvidence (K : KinshipSystemPackage) where
  descentTypeClosed : K.descentType = "patrilineal" ∨ K.descentType = "matrilineal" ∨ K.descentType = "bilateral"
  marriageRulesClosed : K.marriageRules
  lineageClassificationClosed : K.lineageClassification
  generationalHierarchyClosed : K.generationalHierarchy

def KinshipSystemClosed (K : KinshipSystemPackage) : Prop :=
  (K.descentType = "patrilineal" ∨ K.descentType = "matrilineal" ∨ K.descentType = "bilateral") ∧
  K.marriageRules ∧ K.lineageClassification ∧ K.generationalHierarchy

theorem kinship_system_closed_from_evidence (K : KinshipSystemPackage) (E : KinshipSystemEvidence K) :
    KinshipSystemClosed K := by
  exact And.intro E.descentTypeClosed (And.intro E.marriageRulesClosed (And.intro E.lineageClassificationClosed E.generationalHierarchyClosed))

end AnthropologyCulturalCanonicalLaneLean
end HautevilleHouse