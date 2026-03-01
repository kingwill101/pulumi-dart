// ignore_for_file: unused_element, unnecessary_cast

import 'system_data_response.dart';

/// Result data returned by getWorkspaceManagerMember.
class GetWorkspaceManagerMemberResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Resource Etag.
  final String etag;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;
  /// The name of the resource
  final String name;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// Fully qualified resource ID of the target Sentinel workspace joining the given Sentinel workspace manager
  final String targetWorkspaceResourceId;
  /// Tenant id of the target Sentinel workspace joining the given Sentinel workspace manager
  final String targetWorkspaceTenantId;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetWorkspaceManagerMemberResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [etag] Resource Etag.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [name] The name of the resource
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [targetWorkspaceResourceId] Fully qualified resource ID of the target Sentinel workspace joining the given Sentinel workspace manager
  /// [targetWorkspaceTenantId] Tenant id of the target Sentinel workspace joining the given Sentinel workspace manager
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  GetWorkspaceManagerMemberResult({
    required this.azureApiVersion,
    required this.etag,
    required this.id,
    required this.name,
    required this.systemData,
    required this.targetWorkspaceResourceId,
    required this.targetWorkspaceTenantId,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'etag': etag,
      'id': id,
      'name': name,
      'systemData': systemData.toMap(),
      'targetWorkspaceResourceId': targetWorkspaceResourceId,
      'targetWorkspaceTenantId': targetWorkspaceTenantId,
      'type': type,
    };
  }

  factory GetWorkspaceManagerMemberResult.fromMap(Map<String, dynamic> map) {
    return GetWorkspaceManagerMemberResult(
      azureApiVersion: map['azureApiVersion'] as String,
      etag: map['etag'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      targetWorkspaceResourceId: map['targetWorkspaceResourceId'] as String,
      targetWorkspaceTenantId: map['targetWorkspaceTenantId'] as String,
      type: map['type'] as String,
    );
  }
}

