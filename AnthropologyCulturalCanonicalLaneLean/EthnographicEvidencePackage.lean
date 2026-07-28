import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AnthropologyCulturalCanonicalLaneLean

structure EthnographicEvidencePackage (O : CulturalObject) where
  fieldDataCollected : Prop
  participantObservation : Prop
  genealogicalRecords : Prop
  culturalArtifactsDocumented : Prop
  fieldDataCollectedClosed : fieldDataCollected
  participantObservationClosed : participantObservation
  genealogicalRecordsClosed : genealogicalRecords
  culturalArtifactsDocumentedClosed : culturalArtifactsDocumented

structure EthnographicEvidence (O : CulturalObject) (E : EthnographicEvidencePackage O) where
  fieldDataCollectedClosed : E.fieldDataCollected
  participantObservationClosed : E.participantObservation
  genealogicalRecordsClosed : E.genealogicalRecords
  culturalArtifactsDocumentedClosed : E.culturalArtifactsDocumented

def EthnographicEvidenceClosed (O : CulturalObject) (E : EthnographicEvidencePackage O) : Prop :=
  E.fieldDataCollected ∧ E.participantObservation ∧ E.genealogicalRecords ∧ E.culturalArtifactsDocumented

theorem ethnographic_evidence_closed_from_evidence (O : CulturalObject)
    (E : EthnographicEvidencePackage O) (Ev : EthnographicEvidence O E) :
    EthnographicEvidenceClosed O E := by
  exact And.intro Ev.fieldDataCollectedClosed
    (And.intro Ev.participantObservationClosed
      (And.intro Ev.genealogicalRecordsClosed Ev.culturalArtifactsDocumentedClosed))

end AnthropologyCulturalCanonicalLaneLean
end HautevilleHouse