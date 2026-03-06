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
  const StandardAssignmentPropertiesAttestationData({
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
      assignedAssessment: (() { final guardedValue = map['assignedAssessment']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AssignedAssessmentItem.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      complianceState: (() { final guardedValue = map['complianceState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      evidence: (() { final guardedValue = map['evidence']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AttestationEvidence>(guardedValue, (value) => AttestationEvidence.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

