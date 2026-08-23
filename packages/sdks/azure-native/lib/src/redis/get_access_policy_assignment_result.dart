// ignore_for_file: unused_element, unnecessary_cast

import 'system_data_response.dart';

/// Result data returned by getAccessPolicyAssignment.
class GetAccessPolicyAssignmentResult {
  /// The name of the access policy that is being assigned
  final String accessPolicyName;
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;
  /// The name of the resource
  final String name;
  /// Object Id to assign access policy to
  final String objectId;
  /// User friendly name for object id. Also represents username for token based authentication
  final String objectIdAlias;
  /// Provisioning state of an access policy assignment set
  final String provisioningState;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetAccessPolicyAssignmentResult].
  /// [accessPolicyName] The name of the access policy that is being assigned
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [name] The name of the resource
  /// [objectId] Object Id to assign access policy to
  /// [objectIdAlias] User friendly name for object id. Also represents username for token based authentication
  /// [provisioningState] Provisioning state of an access policy assignment set
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  const GetAccessPolicyAssignmentResult({
    required this.accessPolicyName,
    required this.azureApiVersion,
    required this.id,
    required this.name,
    required this.objectId,
    required this.objectIdAlias,
    required this.provisioningState,
    required this.systemData,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessPolicyName': accessPolicyName,
      'azureApiVersion': azureApiVersion,
      'id': id,
      'name': name,
      'objectId': objectId,
      'objectIdAlias': objectIdAlias,
      'provisioningState': provisioningState,
      'systemData': systemData.toMap(),
      'type': type,
    };
  }

  factory GetAccessPolicyAssignmentResult.fromMap(Map<String, dynamic> map) {
    return GetAccessPolicyAssignmentResult(
      accessPolicyName: map['accessPolicyName'] as String,
      azureApiVersion: map['azureApiVersion'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      objectId: map['objectId'] as String,
      objectIdAlias: map['objectIdAlias'] as String,
      provisioningState: map['provisioningState'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}
