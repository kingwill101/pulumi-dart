// ignore_for_file: unused_element, unnecessary_cast

import 'managed_integration_runtime_response.dart';

/// Result data returned by getIntegrationRuntime.
class GetIntegrationRuntimeResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Resource Etag.
  final String etag;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String id;
  /// The name of the resource
  final String name;
  /// Integration runtime properties.
  final ManagedIntegrationRuntimeResponse properties;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetIntegrationRuntimeResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [etag] Resource Etag.
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [name] The name of the resource
  /// [properties] Integration runtime properties.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  const GetIntegrationRuntimeResult({
    required this.azureApiVersion,
    required this.etag,
    required this.id,
    required this.name,
    required this.properties,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'etag': etag,
      'id': id,
      'name': name,
      'properties': properties.toMap(),
      'type': type,
    };
  }

  factory GetIntegrationRuntimeResult.fromMap(Map<String, dynamic> map) {
    return GetIntegrationRuntimeResult(
      azureApiVersion: map['azureApiVersion'] as String,
      etag: map['etag'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      properties: ManagedIntegrationRuntimeResponse.fromMap((map['properties']! as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}
