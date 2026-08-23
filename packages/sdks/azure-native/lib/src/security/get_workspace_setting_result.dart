// ignore_for_file: unused_element, unnecessary_cast

import 'system_data_response.dart';

/// Result data returned by getWorkspaceSetting.
class GetWorkspaceSettingResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;
  /// The name of the resource
  final String name;
  /// All the VMs in this scope will send their security data to the mentioned workspace unless overridden by a setting with more specific scope
  final String scope;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;
  /// The full Azure ID of the workspace to save the data in
  final String workspaceId;

  /// Creates a new [GetWorkspaceSettingResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [name] The name of the resource
  /// [scope] All the VMs in this scope will send their security data to the mentioned workspace unless overridden by a setting with more specific scope
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  /// [workspaceId] The full Azure ID of the workspace to save the data in
  const GetWorkspaceSettingResult({
    required this.azureApiVersion,
    required this.id,
    required this.name,
    required this.scope,
    required this.systemData,
    required this.type,
    required this.workspaceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'id': id,
      'name': name,
      'scope': scope,
      'systemData': systemData.toMap(),
      'type': type,
      'workspaceId': workspaceId,
    };
  }

  factory GetWorkspaceSettingResult.fromMap(Map<String, dynamic> map) {
    return GetWorkspaceSettingResult(
      azureApiVersion: map['azureApiVersion'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      scope: map['scope'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      type: map['type'] as String,
      workspaceId: map['workspaceId'] as String,
    );
  }
}
