// ignore_for_file: unused_element, unnecessary_cast

import 'system_data_response.dart';

/// Result data returned by getWorkspaceManagerConfiguration.
class GetWorkspaceManagerConfigurationResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Resource Etag.
  final String etag;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;
  /// The current mode of the workspace manager configuration
  final String mode;
  /// The name of the resource
  final String name;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetWorkspaceManagerConfigurationResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [etag] Resource Etag.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [mode] The current mode of the workspace manager configuration
  /// [name] The name of the resource
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  const GetWorkspaceManagerConfigurationResult({
    required this.azureApiVersion,
    required this.etag,
    required this.id,
    required this.mode,
    required this.name,
    required this.systemData,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'etag': etag,
      'id': id,
      'mode': mode,
      'name': name,
      'systemData': systemData.toMap(),
      'type': type,
    };
  }

  factory GetWorkspaceManagerConfigurationResult.fromMap(Map<String, dynamic> map) {
    return GetWorkspaceManagerConfigurationResult(
      azureApiVersion: map['azureApiVersion'] as String,
      etag: map['etag'] as String,
      id: map['id'] as String,
      mode: map['mode'] as String,
      name: map['name'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}
