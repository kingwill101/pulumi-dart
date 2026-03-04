// ignore_for_file: unused_element, unnecessary_cast

import 'access_policy_assignment_properties_response_user.dart';

/// Result data returned by getAccessPolicyAssignment.
class GetAccessPolicyAssignmentResult {
  /// Name of access policy under specific access policy assignment. Only "default" policy is supported for now.
  final String accessPolicyName;

  /// The Azure API version of the resource.
  final String azureApiVersion;

  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String id;

  /// The name of the resource
  final String name;

  /// Current provisioning status of the access policy assignment.
  final String provisioningState;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// The user associated with the access policy.
  final AccessPolicyAssignmentPropertiesResponseUser user;

  /// Creates a new [GetAccessPolicyAssignmentResult].
  /// [accessPolicyName] Name of access policy under specific access policy assignment. Only "default" policy is supported for now.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [name] The name of the resource
  /// [provisioningState] Current provisioning status of the access policy assignment.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  /// [user] The user associated with the access policy.
  GetAccessPolicyAssignmentResult({
    required this.accessPolicyName,
    required this.azureApiVersion,
    required this.id,
    required this.name,
    required this.provisioningState,
    required this.type,
    required this.user,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessPolicyName': accessPolicyName,
      'azureApiVersion': azureApiVersion,
      'id': id,
      'name': name,
      'provisioningState': provisioningState,
      'type': type,
      'user': user.toMap(),
    };
  }

  factory GetAccessPolicyAssignmentResult.fromMap(Map<String, dynamic> map) {
    return GetAccessPolicyAssignmentResult(
      accessPolicyName: map['accessPolicyName'] as String,
      azureApiVersion: map['azureApiVersion'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      provisioningState: map['provisioningState'] as String,
      type: map['type'] as String,
      user: AccessPolicyAssignmentPropertiesResponseUser.fromMap(
        (map['user']! as Map).cast<String, dynamic>(),
      ),
    );
  }
}
