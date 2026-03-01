// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'assigned_assessment_item_response.dart';
import 'attestation_evidence_response.dart';

/// Additional data about assignment that has Attest effect
class StandardAssignmentPropertiesResponseAttestationData {
  /// Component item with key as applied to this standard assignment over the given scope
  final AssignedAssessmentItemResponse? assignedAssessment;
  /// Attestation compliance date
  final String complianceDate;
  /// Attest category of this assignment
  final String? complianceState;
  /// Array of links to attestation evidence
  final List<AttestationEvidenceResponse>? evidence;

  /// Creates a new [StandardAssignmentPropertiesResponseAttestationData].
  /// [assignedAssessment] Component item with key as applied to this standard assignment over the given scope
  /// [complianceDate] Attestation compliance date
  /// [complianceState] Attest category of this assignment
  /// [evidence] Array of links to attestation evidence
  StandardAssignmentPropertiesResponseAttestationData({
    this.assignedAssessment,
    required this.complianceDate,
    this.complianceState,
    this.evidence,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assignedAssessment': ?assignedAssessment == null ? null : assignedAssessment!.toMap(),
      'complianceDate': complianceDate,
      'complianceState': ?complianceState,
      'evidence': ?evidence == null ? null : pulumi.Input.encodeList<AttestationEvidenceResponse, Map<String, dynamic>>(evidence!, (value) => value.toMap()),
    };
  }

  factory StandardAssignmentPropertiesResponseAttestationData.fromMap(Map<String, dynamic> map) {
    return StandardAssignmentPropertiesResponseAttestationData(
      assignedAssessment: map['assignedAssessment'] == null ? null : AssignedAssessmentItemResponse.fromMap((map['assignedAssessment'] as Map).cast<String, dynamic>()),
      complianceDate: map['complianceDate'] as String,
      complianceState: map['complianceState'] == null ? null : map['complianceState'] as String,
      evidence: map['evidence'] == null ? null : pulumi.Input.decodeList<AttestationEvidenceResponse>(map['evidence'], (value) => AttestationEvidenceResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

