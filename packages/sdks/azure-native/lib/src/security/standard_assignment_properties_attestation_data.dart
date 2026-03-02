// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'assigned_assessment_item.dart';
import 'attestation_evidence.dart';

/// Additional data about assignment that has Attest effect
class StandardAssignmentPropertiesAttestationData {
  /// Component item with key as applied to this standard assignment over the given scope
  final pulumi.Input<AssignedAssessmentItem>? assignedAssessment;
  /// Attest category of this assignment
  final pulumi.Input<String>? complianceState;
  /// Array of links to attestation evidence
  final pulumi.Input<List<AttestationEvidence>>? evidence;

  /// Creates a new [StandardAssignmentPropertiesAttestationData].
  /// [assignedAssessment] Component item with key as applied to this standard assignment over the given scope
  /// [complianceState] Attest category of this assignment
  /// [evidence] Array of links to attestation evidence
  StandardAssignmentPropertiesAttestationData({
    this.assignedAssessment,
    this.complianceState,
    this.evidence,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assignedAssessment': ?pulumi.Input.mapOptionalInputValue<AssignedAssessmentItem, Map<String, dynamic>>(assignedAssessment, (value) => value.toMap()),
      'complianceState': ?complianceState,
      'evidence': ?pulumi.Input.mapOptionalInputValue<List<AttestationEvidence>, List<Map<String, dynamic>>>(evidence, (value) => pulumi.Input.encodeList<AttestationEvidence, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory StandardAssignmentPropertiesAttestationData.fromMap(Map<String, dynamic> map) {
    return StandardAssignmentPropertiesAttestationData(
      assignedAssessment: map['assignedAssessment'] == null ? null : (AssignedAssessmentItem.fromMap((map['assignedAssessment'] as Map).cast<String, dynamic>())).input(),
      complianceState: map['complianceState'] == null ? null : (map['complianceState'] as String).input(),
      evidence: map['evidence'] == null ? null : (pulumi.Input.decodeList<AttestationEvidence>(map['evidence'], (value) => AttestationEvidence.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

