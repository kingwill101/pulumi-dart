// ignore_for_file: unused_element, unnecessary_cast

import 'system_data_response.dart';

/// Result data returned by getWorkspaceManagerMember.
class GetWorkspaceManagerMemberResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Resource Etag.
  final String? etag;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String? id;
  /// The name of the resource
  final String? name;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  /// Fully qualified resource ID of the target Sentinel workspace joining the given Sentinel workspace manager
  final String? targetWorkspaceResourceId;
  /// Tenant id of the target Sentinel workspace joining the given Sentinel workspace manager
  final String? targetWorkspaceTenantId;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;

  /// Creates a new [GetWorkspaceManagerMemberResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [etag] Resource Etag.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [name] The name of the resource
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [targetWorkspaceResourceId] Fully qualified resource ID of the target Sentinel workspace joining the given Sentinel workspace manager
  /// [targetWorkspaceTenantId] Tenant id of the target Sentinel workspace joining the given Sentinel workspace manager
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  const GetWorkspaceManagerMemberResult({
    this.azureApiVersion,
    this.etag,
    this.id,
    this.name,
    this.systemData,
    this.targetWorkspaceResourceId,
    this.targetWorkspaceTenantId,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'etag': ?etag,
      'id': ?id,
      'name': ?name,
      'systemData': ?systemData?.toMap(),
      'targetWorkspaceResourceId': ?targetWorkspaceResourceId,
      'targetWorkspaceTenantId': ?targetWorkspaceTenantId,
      'type': ?type,
    };
  }

  factory GetWorkspaceManagerMemberResult.fromMap(Map<String, dynamic> map) {
    return GetWorkspaceManagerMemberResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      targetWorkspaceResourceId: (() { final guardedValue = map['targetWorkspaceResourceId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      targetWorkspaceTenantId: (() { final guardedValue = map['targetWorkspaceTenantId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
