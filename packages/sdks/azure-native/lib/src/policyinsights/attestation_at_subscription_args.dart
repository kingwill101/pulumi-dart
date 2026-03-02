// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'attestation_evidence.dart';

/// {@template pulumi_policyinsights_attestation_at_subscription_args_doc}
/// The set of arguments for AttestationAtSubscription.
/// {@endtemplate}
/// {@macro pulumi_policyinsights_attestation_at_subscription_args_doc}
class AttestationAtSubscriptionArgs {
  /// The time the evidence was assessed
  final pulumi.Input<String>? assessmentDate;
  /// The name of the attestation.
  final pulumi.Input<String>? attestationName;
  /// Comments describing why this attestation was created.
  final pulumi.Input<String>? comments;
  /// The compliance state that should be set on the resource.
  final pulumi.Input<String>? complianceState;
  /// The evidence supporting the compliance state set in this attestation.
  final pulumi.Input<List<AttestationEvidence>>? evidence;
  /// The time the compliance state should expire.
  final pulumi.Input<String>? expiresOn;
  /// Additional metadata for this attestation
  final pulumi.Input<dynamic>? metadata;
  /// The person responsible for setting the state of the resource. This value is typically an Azure Active Directory object ID.
  final pulumi.Input<String>? owner;
  /// The resource ID of the policy assignment that the attestation is setting the state for.
  final pulumi.Input<String> policyAssignmentId;
  /// The policy definition reference ID from a policy set definition that the attestation is setting the state for. If the policy assignment assigns a policy set definition the attestation can choose a definition within the set definition with this property or omit this and set the state for the entire set definition.
  final pulumi.Input<String>? policyDefinitionReferenceId;

  /// Creates a new [AttestationAtSubscriptionArgs].
  /// [assessmentDate] The time the evidence was assessed
  /// [attestationName] The name of the attestation.
  /// [comments] Comments describing why this attestation was created.
  /// [complianceState] The compliance state that should be set on the resource.
  /// [evidence] The evidence supporting the compliance state set in this attestation.
  /// [expiresOn] The time the compliance state should expire.
  /// [metadata] Additional metadata for this attestation
  /// [owner] The person responsible for setting the state of the resource. This value is typically an Azure Active Directory object ID.
  /// [policyAssignmentId] The resource ID of the policy assignment that the attestation is setting the state for.
  /// [policyDefinitionReferenceId] The policy definition reference ID from a policy set definition that the attestation is setting the state for. If the policy assignment assigns a policy set definition the attestation can choose a definition within the set definition with this property or omit this and set the state for the entire set definition.
  AttestationAtSubscriptionArgs({
    this.assessmentDate,
    this.attestationName,
    this.comments,
    this.complianceState,
    this.evidence,
    this.expiresOn,
    this.metadata,
    this.owner,
    required this.policyAssignmentId,
    this.policyDefinitionReferenceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assessmentDate': ?assessmentDate,
      'attestationName': ?attestationName,
      'comments': ?comments,
      'complianceState': ?complianceState,
      'evidence': ?pulumi.Input.mapOptionalInputValue<List<AttestationEvidence>, List<Map<String, dynamic>>>(evidence, (value) => pulumi.Input.encodeList<AttestationEvidence, Map<String, dynamic>>(value, (value) => value.toMap())),
      'expiresOn': ?expiresOn,
      'metadata': ?metadata,
      'owner': ?owner,
      'policyAssignmentId': policyAssignmentId,
      'policyDefinitionReferenceId': ?policyDefinitionReferenceId,
    };
  }

  factory AttestationAtSubscriptionArgs.fromMap(Map<String, dynamic> map) {
    return AttestationAtSubscriptionArgs(
      assessmentDate: map['assessmentDate'] == null ? null : (map['assessmentDate']! as String).input(),
      attestationName: map['attestationName'] == null ? null : (map['attestationName']! as String).input(),
      comments: map['comments'] == null ? null : (map['comments']! as String).input(),
      complianceState: map['complianceState'] == null ? null : (map['complianceState']! as String).input(),
      evidence: map['evidence'] == null ? null : (pulumi.Input.decodeList<AttestationEvidence>(map['evidence']!, (value) => AttestationEvidence.fromMap((value as Map).cast<String, dynamic>()))).input(),
      expiresOn: map['expiresOn'] == null ? null : (map['expiresOn']! as String).input(),
      metadata: map['metadata'] == null ? null : (map['metadata']!).input(),
      owner: map['owner'] == null ? null : (map['owner']! as String).input(),
      policyAssignmentId: (map['policyAssignmentId'] as String).input(),
      policyDefinitionReferenceId: map['policyDefinitionReferenceId'] == null ? null : (map['policyDefinitionReferenceId']! as String).input(),
    );
  }
}

