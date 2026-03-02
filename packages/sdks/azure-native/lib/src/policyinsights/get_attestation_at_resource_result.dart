// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'attestation_evidence_response.dart';
import 'system_data_response.dart';

/// Result data returned by getAttestationAtResource.
class GetAttestationAtResourceResult {
  /// The time the evidence was assessed
  final String? assessmentDate;
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Comments describing why this attestation was created.
  final String? comments;
  /// The compliance state that should be set on the resource.
  final String? complianceState;
  /// The evidence supporting the compliance state set in this attestation.
  final List<AttestationEvidenceResponse>? evidence;
  /// The time the compliance state should expire.
  final String? expiresOn;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String id;
  /// The time the compliance state was last changed in this attestation.
  final String lastComplianceStateChangeAt;
  /// Additional metadata for this attestation
  final dynamic metadata;
  /// The name of the resource
  final String name;
  /// The person responsible for setting the state of the resource. This value is typically an Azure Active Directory object ID.
  final String? owner;
  /// The resource ID of the policy assignment that the attestation is setting the state for.
  final String policyAssignmentId;
  /// The policy definition reference ID from a policy set definition that the attestation is setting the state for. If the policy assignment assigns a policy set definition the attestation can choose a definition within the set definition with this property or omit this and set the state for the entire set definition.
  final String? policyDefinitionReferenceId;
  /// The status of the attestation.
  final String provisioningState;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetAttestationAtResourceResult].
  /// [assessmentDate] The time the evidence was assessed
  /// [azureApiVersion] The Azure API version of the resource.
  /// [comments] Comments describing why this attestation was created.
  /// [complianceState] The compliance state that should be set on the resource.
  /// [evidence] The evidence supporting the compliance state set in this attestation.
  /// [expiresOn] The time the compliance state should expire.
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [lastComplianceStateChangeAt] The time the compliance state was last changed in this attestation.
  /// [metadata] Additional metadata for this attestation
  /// [name] The name of the resource
  /// [owner] The person responsible for setting the state of the resource. This value is typically an Azure Active Directory object ID.
  /// [policyAssignmentId] The resource ID of the policy assignment that the attestation is setting the state for.
  /// [policyDefinitionReferenceId] The policy definition reference ID from a policy set definition that the attestation is setting the state for. If the policy assignment assigns a policy set definition the attestation can choose a definition within the set definition with this property or omit this and set the state for the entire set definition.
  /// [provisioningState] The status of the attestation.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  GetAttestationAtResourceResult({
    this.assessmentDate,
    required this.azureApiVersion,
    this.comments,
    this.complianceState,
    this.evidence,
    this.expiresOn,
    required this.id,
    required this.lastComplianceStateChangeAt,
    this.metadata,
    required this.name,
    this.owner,
    required this.policyAssignmentId,
    this.policyDefinitionReferenceId,
    required this.provisioningState,
    required this.systemData,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assessmentDate': ?assessmentDate,
      'azureApiVersion': azureApiVersion,
      'comments': ?comments,
      'complianceState': ?complianceState,
      'evidence': ?evidence == null ? null : pulumi.Input.encodeList<AttestationEvidenceResponse, Map<String, dynamic>>(evidence!, (value) => value.toMap()),
      'expiresOn': ?expiresOn,
      'id': id,
      'lastComplianceStateChangeAt': lastComplianceStateChangeAt,
      'metadata': ?metadata,
      'name': name,
      'owner': ?owner,
      'policyAssignmentId': policyAssignmentId,
      'policyDefinitionReferenceId': ?policyDefinitionReferenceId,
      'provisioningState': provisioningState,
      'systemData': systemData.toMap(),
      'type': type,
    };
  }

  factory GetAttestationAtResourceResult.fromMap(Map<String, dynamic> map) {
    return GetAttestationAtResourceResult(
      assessmentDate: map['assessmentDate'] == null ? null : map['assessmentDate']! as String,
      azureApiVersion: map['azureApiVersion'] as String,
      comments: map['comments'] == null ? null : map['comments']! as String,
      complianceState: map['complianceState'] == null ? null : map['complianceState']! as String,
      evidence: map['evidence'] == null ? null : pulumi.Input.decodeList<AttestationEvidenceResponse>(map['evidence']!, (value) => AttestationEvidenceResponse.fromMap((value as Map).cast<String, dynamic>())),
      expiresOn: map['expiresOn'] == null ? null : map['expiresOn']! as String,
      id: map['id'] as String,
      lastComplianceStateChangeAt: map['lastComplianceStateChangeAt'] as String,
      metadata: map['metadata'] == null ? null : map['metadata']!,
      name: map['name'] as String,
      owner: map['owner'] == null ? null : map['owner']! as String,
      policyAssignmentId: map['policyAssignmentId'] as String,
      policyDefinitionReferenceId: map['policyDefinitionReferenceId'] == null ? null : map['policyDefinitionReferenceId']! as String,
      provisioningState: map['provisioningState'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}

