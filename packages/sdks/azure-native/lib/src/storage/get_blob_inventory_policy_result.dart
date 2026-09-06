// ignore_for_file: unused_element, unnecessary_cast

import 'blob_inventory_policy_schema_response.dart';
import 'system_data_response.dart';

/// Result data returned by getBlobInventoryPolicy.
class GetBlobInventoryPolicyResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String? id;
  /// Returns the last modified date and time of the blob inventory policy.
  final String? lastModifiedTime;
  /// The name of the resource
  final String? name;
  /// The storage account blob inventory policy object. It is composed of policy rules.
  final BlobInventoryPolicySchemaResponse? policy;
  /// Metadata pertaining to creation and last modification of the resource.
  final SystemDataResponse? systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;

  /// Creates a new [GetBlobInventoryPolicyResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [lastModifiedTime] Returns the last modified date and time of the blob inventory policy.
  /// [name] The name of the resource
  /// [policy] The storage account blob inventory policy object. It is composed of policy rules.
  /// [systemData] Metadata pertaining to creation and last modification of the resource.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  const GetBlobInventoryPolicyResult({
    this.azureApiVersion,
    this.id,
    this.lastModifiedTime,
    this.name,
    this.policy,
    this.systemData,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'id': ?id,
      'lastModifiedTime': ?lastModifiedTime,
      'name': ?name,
      'policy': ?policy?.toMap(),
      'systemData': ?systemData?.toMap(),
      'type': ?type,
    };
  }

  factory GetBlobInventoryPolicyResult.fromMap(Map<String, dynamic> map) {
    return GetBlobInventoryPolicyResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      lastModifiedTime: (() { final guardedValue = map['lastModifiedTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      policy: (() { final guardedValue = map['policy']; if (guardedValue == null) return null; return BlobInventoryPolicySchemaResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
