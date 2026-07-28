import AnthropologyCulturalCanonicalLaneLean.CulturalTransmission

namespace HautevilleHouse
namespace AnthropologyCulturalCanonicalLaneLean

structure CulturalAnalyticCertificate (K : KinshipSystemPackage) (T : CulturalTransmissionPackage K) where
  descentConclusion : Prop
  marriageConclusion : Prop
  transmissionConclusion : Prop
  descentConclusionClosed : descentConclusion
  marriageConclusionClosed : marriageConclusion
  transmissionConclusionClosed : transmissionConclusion
  kinshipEvidence : KinshipSystemEvidence K
  transmissionEvidence : CulturalTransmissionEvidence T

def CulturalAnalyticCertificateClosed {K : KinshipSystemPackage} {T : CulturalTransmissionPackage K}
    (C : CulturalAnalyticCertificate K T) : Prop :=
  C.descentConclusion ∧ C.marriageConclusion ∧ C.transmissionConclusion ∧
  KinshipSystemClosed K ∧ CulturalTransmissionClosed T

theorem cultural_analytic_certificate_closed
    {K : KinshipSystemPackage} {T : CulturalTransmissionPackage K}
    (C : CulturalAnalyticCertificate K T) : CulturalAnalyticCertificateClosed C := by
  refine And.intro C.descentConclusionClosed (And.intro C.marriageConclusionClosed 
    (And.intro C.transmissionConclusionClosed 
      (And.intro (kinship_system_closed_from_evidence K C.kinshipEvidence)
        (cultural_transmission_closed_from_evidence T C.transmissionEvidence))))

end AnthropologyCulturalCanonicalLaneLean
end HautevilleHouse
