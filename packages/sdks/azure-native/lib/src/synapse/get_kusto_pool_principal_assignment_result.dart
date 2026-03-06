// ignore_for_file: unused_element, unnecessary_cast

import 'system_data_response.dart';

/// Result data returned by getKustoPoolPrincipalAssignment.
class GetKustoPoolPrincipalAssignmentResult {
  /// The service principal object id in AAD (Azure active directory)
  final String aadObjectId;
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String id;
  /// The name of the resource
  final String name;
  /// The principal ID assigned to the cluster principal. It can be a user email, application ID, or security group name.
  final String principalId;
  /// The principal name
  final String principalName;
  /// Principal type.
  final String principalType;
  /// The provisioned state of the resource.
  final String provisioningState;
  /// Cluster principal role.
  final String role;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// The tenant id of the principal
  final String? tenantId;
  /// The tenant name of the principal
  final String tenantName;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetKustoPoolPrincipalAssignmentResult].
  /// [aadObjectId] The service principal object id in AAD (Azure active directory)
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [name] The name of the resource
  /// [principalId] The principal ID assigned to the cluster principal. It can be a user email, application ID, or security group name.
  /// [principalName] The principal name
  /// [principalType] Principal type.
  /// [provisioningState] The provisioned state of the resource.
  /// [role] Cluster principal role.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tenantId] The tenant id of the principal
  /// [tenantName] The tenant name of the principal
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  const GetKustoPoolPrincipalAssignmentResult({
    required this.aadObjectId,
    required this.azureApiVersion,
    required this.id,
    required this.name,
    required this.principalId,
    required this.principalName,
    required this.principalType,
    required this.provisioningState,
    required this.role,
    required this.systemData,
    this.tenantId,
    required this.tenantName,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aadObjectId': aadObjectId,
      'azureApiVersion': azureApiVersion,
      'id': id,
      'name': name,
      'principalId': principalId,
      'principalName': principalName,
      'principalType': principalType,
      'provisioningState': provisioningState,
      'role': role,
      'systemData': systemData.toMap(),
      'tenantId': ?tenantId,
      'tenantName': tenantName,
      'type': type,
    };
  }

  factory GetKustoPoolPrincipalAssignmentResult.fromMap(Map<String, dynamic> map) {
    return GetKustoPoolPrincipalAssignmentResult(
      aadObjectId: map['aadObjectId'] as String,
      azureApiVersion: map['azureApiVersion'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      principalId: map['principalId'] as String,
      principalName: map['principalName'] as String,
      principalType: map['principalType'] as String,
      provisioningState: map['provisioningState'] as String,
      role: map['role'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      tenantId: (() { final guardedValue = map['tenantId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tenantName: map['tenantName'] as String,
      type: map['type'] as String,
    );
  }
}

