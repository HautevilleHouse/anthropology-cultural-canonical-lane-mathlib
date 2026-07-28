import HautevilleHouse.AnthropologyCulturalCanonicalLaneLean.CulturalAdmissibleClass

namespace HautevilleHouse
namespace AnthropologyCulturalCanonicalLaneLean

structure TransmissionPackage where
  mechanism : String
  fidelity : Prop
  bias : Prop
  innovationRate : Prop

structure TransmissionEvidence (T : TransmissionPackage) where
  fidelityClosed : T.fidelity
  biasClosed : T.bias
  innovationRateClosed : T.innovationRate

def TransmissionClosed (T : TransmissionPackage) : Prop :=
  T.fidelity ∧ T.bias ∧ T.innovationRate

theorem transmission_closed_from_evidence (T : TransmissionPackage) (E : TransmissionEvidence T) :
    TransmissionClosed T := by
  exact And.intro E.fidelityClosed (And.intro E.biasClosed E.innovationRateClosed)

end AnthropologyCulturalCanonicalLaneLean
end HautevilleHouse