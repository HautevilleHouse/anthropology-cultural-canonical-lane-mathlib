import AnthropologyCulturalCanonicalLaneLean.CulturalAnalyticProof

namespace HautevilleHouse
namespace AnthropologyCulturalCanonicalLaneLean

structure KinshipEvidenceTerms {K : KinshipSystemPackage} (C : CulturalAnalyticCertificate K T) where
  descentClosed : C.descentConclusion
  marriageClosed : C.marriageConclusion
  kinshipClosed : KinshipSystemClosed K

def CulturalAnalyticCertificate.evidenceTerms {K : KinshipSystemPackage} {T : CulturalTransmissionPackage K}
    (C : CulturalAnalyticCertificate K T) : KinshipEvidenceTerms C :=
  {
    descentClosed := C.descentConclusionClosed
    marriageClosed := C.marriageConclusionClosed
    kinshipClosed := kinship_system_closed_from_evidence K C.kinshipEvidence
  }

structure TransmissionEvidenceTerms {K : KinshipSystemPackage} {T : CulturalTransmissionPackage K}
    (C : CulturalAnalyticCertificate K T) where
  transmissionClosed : C.transmissionConclusion
  culturalTransmissionClosed : CulturalTransmissionClosed T

def CulturalAnalyticCertificate.transmissionEvidenceTerms
    {K : KinshipSystemPackage} {T : CulturalTransmissionPackage K}
    (C : CulturalAnalyticCertificate K T) : TransmissionEvidenceTerms C :=
  {
    transmissionClosed := C.transmissionConclusionClosed
    culturalTransmissionClosed := cultural_transmission_closed_from_evidence T C.transmissionEvidence
  }

end AnthropologyCulturalCanonicalLaneLean
end HautevilleHouse
