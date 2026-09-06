// ignore_for_file: unused_element, unnecessary_cast

import 'system_data_response.dart';

/// Result data returned by getDatabasePrincipalAssignment.
class GetDatabasePrincipalAssignmentResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String? id;
  /// The name of the resource
  final String? name;
  /// The principal ID assigned to the database principal. It can be a user email, application ID, or security group name.
  final String? principalId;
  /// The principal name
  final String? principalName;
  /// Principal type.
  final String? principalType;
  /// The provisioned state of the resource.
  final String? provisioningState;
  /// Database principal role.
  final String? role;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  /// The tenant id of the principal
  final String? tenantId;
  /// The tenant name of the principal
  final String? tenantName;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;

  /// Creates a new [GetDatabasePrincipalAssignmentResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [name] The name of the resource
  /// [principalId] The principal ID assigned to the database principal. It can be a user email, application ID, or security group name.
  /// [principalName] The principal name
  /// [principalType] Principal type.
  /// [provisioningState] The provisioned state of the resource.
  /// [role] Database principal role.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tenantId] The tenant id of the principal
  /// [tenantName] The tenant name of the principal
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  const GetDatabasePrincipalAssignmentResult({
    this.azureApiVersion,
    this.id,
    this.name,
    this.principalId,
    this.principalName,
    this.principalType,
    this.provisioningState,
    this.role,
    this.systemData,
    this.tenantId,
    this.tenantName,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'id': ?id,
      'name': ?name,
      'principalId': ?principalId,
      'principalName': ?principalName,
      'principalType': ?principalType,
      'provisioningState': ?provisioningState,
      'role': ?role,
      'systemData': ?systemData?.toMap(),
      'tenantId': ?tenantId,
      'tenantName': ?tenantName,
      'type': ?type,
    };
  }

  factory GetDatabasePrincipalAssignmentResult.fromMap(Map<String, dynamic> map) {
    return GetDatabasePrincipalAssignmentResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      principalId: (() { final guardedValue = map['principalId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      principalName: (() { final guardedValue = map['principalName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      principalType: (() { final guardedValue = map['principalType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      role: (() { final guardedValue = map['role']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      tenantId: (() { final guardedValue = map['tenantId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tenantName: (() { final guardedValue = map['tenantName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
