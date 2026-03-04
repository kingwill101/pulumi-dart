// ignore_for_file: unused_element, unnecessary_cast

import 'blob_inventory_policy_schema_response.dart';
import 'system_data_response.dart';

/// Result data returned by getBlobInventoryPolicy.
class GetBlobInventoryPolicyResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;

  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String id;

  /// Returns the last modified date and time of the blob inventory policy.
  final String lastModifiedTime;

  /// The name of the resource
  final String name;

  /// The storage account blob inventory policy object. It is composed of policy rules.
  final BlobInventoryPolicySchemaResponse policy;

  /// Metadata pertaining to creation and last modification of the resource.
  final SystemDataResponse systemData;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetBlobInventoryPolicyResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [lastModifiedTime] Returns the last modified date and time of the blob inventory policy.
  /// [name] The name of the resource
  /// [policy] The storage account blob inventory policy object. It is composed of policy rules.
  /// [systemData] Metadata pertaining to creation and last modification of the resource.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  GetBlobInventoryPolicyResult({
    required this.azureApiVersion,
    required this.id,
    required this.lastModifiedTime,
    required this.name,
    required this.policy,
    required this.systemData,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'id': id,
      'lastModifiedTime': lastModifiedTime,
      'name': name,
      'policy': policy.toMap(),
      'systemData': systemData.toMap(),
      'type': type,
    };
  }

  factory GetBlobInventoryPolicyResult.fromMap(Map<String, dynamic> map) {
    return GetBlobInventoryPolicyResult(
      azureApiVersion: map['azureApiVersion'] as String,
      id: map['id'] as String,
      lastModifiedTime: map['lastModifiedTime'] as String,
      name: map['name'] as String,
      policy: BlobInventoryPolicySchemaResponse.fromMap(
        (map['policy']! as Map).cast<String, dynamic>(),
      ),
      systemData: SystemDataResponse.fromMap(
        (map['systemData']! as Map).cast<String, dynamic>(),
      ),
      type: map['type'] as String,
    );
  }
}
