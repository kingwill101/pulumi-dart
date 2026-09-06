// ignore_for_file: unused_element, unnecessary_cast

import 'system_data_response.dart';

/// Result data returned by getAccessPolicyAssignment.
class GetAccessPolicyAssignmentResult {
  /// The name of the access policy that is being assigned
  final String? accessPolicyName;
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String? id;
  /// The name of the resource
  final String? name;
  /// Object Id to assign access policy to
  final String? objectId;
  /// User friendly name for object id. Also represents username for token based authentication
  final String? objectIdAlias;
  /// Provisioning state of an access policy assignment set
  final String? provisioningState;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;

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
    this.accessPolicyName,
    this.azureApiVersion,
    this.id,
    this.name,
    this.objectId,
    this.objectIdAlias,
    this.provisioningState,
    this.systemData,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessPolicyName': ?accessPolicyName,
      'azureApiVersion': ?azureApiVersion,
      'id': ?id,
      'name': ?name,
      'objectId': ?objectId,
      'objectIdAlias': ?objectIdAlias,
      'provisioningState': ?provisioningState,
      'systemData': ?systemData?.toMap(),
      'type': ?type,
    };
  }

  factory GetAccessPolicyAssignmentResult.fromMap(Map<String, dynamic> map) {
    return GetAccessPolicyAssignmentResult(
      accessPolicyName: (() { final guardedValue = map['accessPolicyName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      objectId: (() { final guardedValue = map['objectId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      objectIdAlias: (() { final guardedValue = map['objectIdAlias']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
