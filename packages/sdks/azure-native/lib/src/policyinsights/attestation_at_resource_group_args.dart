// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'attestation_evidence.dart';

/// {@template pulumi_policyinsights_attestation_at_resource_group_args_doc}
/// The set of arguments for AttestationAtResourceGroup.
/// {@endtemplate}
/// {@macro pulumi_policyinsights_attestation_at_resource_group_args_doc}
class AttestationAtResourceGroupArgs {
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

  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [AttestationAtResourceGroupArgs].
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
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  AttestationAtResourceGroupArgs({
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
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assessmentDate': ?assessmentDate,
      'attestationName': ?attestationName,
      'comments': ?comments,
      'complianceState': ?complianceState,
      'evidence':
          ?pulumi.Input.mapOptionalInputValue<
            List<AttestationEvidence>,
            List<Map<String, dynamic>>
          >(
            evidence,
            (value) =>
                pulumi.Input.encodeList<
                  AttestationEvidence,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'expiresOn': ?expiresOn,
      'metadata': ?metadata,
      'owner': ?owner,
      'policyAssignmentId': policyAssignmentId,
      'policyDefinitionReferenceId': ?policyDefinitionReferenceId,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory AttestationAtResourceGroupArgs.fromMap(Map<String, dynamic> map) {
    return AttestationAtResourceGroupArgs(
      assessmentDate: (() {
        final guardedValue = map['assessmentDate'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      attestationName: (() {
        final guardedValue = map['attestationName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      comments: (() {
        final guardedValue = map['comments'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      complianceState: (() {
        final guardedValue = map['complianceState'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      evidence: (() {
        final guardedValue = map['evidence'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<AttestationEvidence>(
            guardedValue,
            (value) => AttestationEvidence.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      expiresOn: (() {
        final guardedValue = map['expiresOn'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      metadata: (() {
        final guardedValue = map['metadata'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue);
      })(),
      owner: (() {
        final guardedValue = map['owner'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      policyAssignmentId: pulumi.Input.fromValue(
        map['policyAssignmentId'] as String,
      ),
      policyDefinitionReferenceId: (() {
        final guardedValue = map['policyDefinitionReferenceId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
    );
  }
}
