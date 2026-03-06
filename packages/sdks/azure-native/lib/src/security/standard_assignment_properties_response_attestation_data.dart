// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'assigned_assessment_item_response.dart';
import 'attestation_evidence_response.dart';

/// Additional data about assignment that has Attest effect
class StandardAssignmentPropertiesResponseAttestationData {
  /// Component item with key as applied to this standard assignment over the given scope
  final pulumi.Input<AssignedAssessmentItemResponse>? assignedAssessment;
  /// Attestation compliance date
  final pulumi.Input<String> complianceDate;
  /// Attest category of this assignment
  final pulumi.Input<String>? complianceState;
  /// Array of links to attestation evidence
  final pulumi.Input<List<AttestationEvidenceResponse>>? evidence;

  /// Creates a new [StandardAssignmentPropertiesResponseAttestationData].
  /// [assignedAssessment] Component item with key as applied to this standard assignment over the given scope
  /// [complianceDate] Attestation compliance date
  /// [complianceState] Attest category of this assignment
  /// [evidence] Array of links to attestation evidence
  const StandardAssignmentPropertiesResponseAttestationData({
    this.assignedAssessment,
    required this.complianceDate,
    this.complianceState,
    this.evidence,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assignedAssessment': ?pulumi.Input.mapOptionalInputValue<AssignedAssessmentItemResponse, Map<String, dynamic>>(assignedAssessment, (value) => value.toMap()),
      'complianceDate': complianceDate,
      'complianceState': ?complianceState,
      'evidence': ?pulumi.Input.mapOptionalInputValue<List<AttestationEvidenceResponse>, List<Map<String, dynamic>>>(evidence, (value) => pulumi.Input.encodeList<AttestationEvidenceResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory StandardAssignmentPropertiesResponseAttestationData.fromMap(Map<String, dynamic> map) {
    return StandardAssignmentPropertiesResponseAttestationData(
      assignedAssessment: (() { final guardedValue = map['assignedAssessment']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AssignedAssessmentItemResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      complianceDate: pulumi.Input.fromValue(map['complianceDate'] as String),
      complianceState: (() { final guardedValue = map['complianceState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      evidence: (() { final guardedValue = map['evidence']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AttestationEvidenceResponse>(guardedValue, (value) => AttestationEvidenceResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

