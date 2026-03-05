// ignore_for_file: unused_element, unnecessary_cast

import 'management_policy_schema_response.dart';

/// Result data returned by getManagementPolicy.
class GetManagementPolicyResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String id;
  /// Returns the date and time the ManagementPolicies was last modified.
  final String lastModifiedTime;
  /// The name of the resource
  final String name;
  /// The Storage Account ManagementPolicy, in JSON format. See more details in: https://learn.microsoft.com/azure/storage/blobs/lifecycle-management-overview.
  final ManagementPolicySchemaResponse policy;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetManagementPolicyResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [lastModifiedTime] Returns the date and time the ManagementPolicies was last modified.
  /// [name] The name of the resource
  /// [policy] The Storage Account ManagementPolicy, in JSON format. See more details in: https://learn.microsoft.com/azure/storage/blobs/lifecycle-management-overview.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  GetManagementPolicyResult({
    required this.azureApiVersion,
    required this.id,
    required this.lastModifiedTime,
    required this.name,
    required this.policy,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'id': id,
      'lastModifiedTime': lastModifiedTime,
      'name': name,
      'policy': policy.toMap(),
      'type': type,
    };
  }

  factory GetManagementPolicyResult.fromMap(Map<String, dynamic> map) {
    return GetManagementPolicyResult(
      azureApiVersion: map['azureApiVersion'] as String,
      id: map['id'] as String,
      lastModifiedTime: map['lastModifiedTime'] as String,
      name: map['name'] as String,
      policy: ManagementPolicySchemaResponse.fromMap((map['policy']! as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}

