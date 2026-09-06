// ignore_for_file: unused_element, unnecessary_cast

import 'cloud_endpoint_change_enumeration_status_response.dart';
import 'system_data_response.dart';

/// Result data returned by getCloudEndpoint.
class GetCloudEndpointResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Azure file share name
  final String? azureFileShareName;
  /// Backup Enabled
  final String? backupEnabled;
  /// Cloud endpoint change enumeration status
  final CloudEndpointChangeEnumerationStatusResponse? changeEnumerationStatus;
  /// Friendly Name
  final String? friendlyName;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String? id;
  /// Resource Last Operation Name
  final String? lastOperationName;
  /// CloudEndpoint lastWorkflowId
  final String? lastWorkflowId;
  /// The name of the resource
  final String? name;
  /// Partnership Id
  final String? partnershipId;
  /// CloudEndpoint Provisioning State
  final String? provisioningState;
  /// Storage Account Resource Id
  final String? storageAccountResourceId;
  /// Storage Account Tenant Id
  final String? storageAccountTenantId;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;

  /// Creates a new [GetCloudEndpointResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [azureFileShareName] Azure file share name
  /// [backupEnabled] Backup Enabled
  /// [changeEnumerationStatus] Cloud endpoint change enumeration status
  /// [friendlyName] Friendly Name
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [lastOperationName] Resource Last Operation Name
  /// [lastWorkflowId] CloudEndpoint lastWorkflowId
  /// [name] The name of the resource
  /// [partnershipId] Partnership Id
  /// [provisioningState] CloudEndpoint Provisioning State
  /// [storageAccountResourceId] Storage Account Resource Id
  /// [storageAccountTenantId] Storage Account Tenant Id
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  const GetCloudEndpointResult({
    this.azureApiVersion,
    this.azureFileShareName,
    this.backupEnabled,
    this.changeEnumerationStatus,
    this.friendlyName,
    this.id,
    this.lastOperationName,
    this.lastWorkflowId,
    this.name,
    this.partnershipId,
    this.provisioningState,
    this.storageAccountResourceId,
    this.storageAccountTenantId,
    this.systemData,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'azureFileShareName': ?azureFileShareName,
      'backupEnabled': ?backupEnabled,
      'changeEnumerationStatus': ?changeEnumerationStatus?.toMap(),
      'friendlyName': ?friendlyName,
      'id': ?id,
      'lastOperationName': ?lastOperationName,
      'lastWorkflowId': ?lastWorkflowId,
      'name': ?name,
      'partnershipId': ?partnershipId,
      'provisioningState': ?provisioningState,
      'storageAccountResourceId': ?storageAccountResourceId,
      'storageAccountTenantId': ?storageAccountTenantId,
      'systemData': ?systemData?.toMap(),
      'type': ?type,
    };
  }

  factory GetCloudEndpointResult.fromMap(Map<String, dynamic> map) {
    return GetCloudEndpointResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      azureFileShareName: (() { final guardedValue = map['azureFileShareName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      backupEnabled: (() { final guardedValue = map['backupEnabled']; if (guardedValue == null) return null; return guardedValue as String; })(),
      changeEnumerationStatus: (() { final guardedValue = map['changeEnumerationStatus']; if (guardedValue == null) return null; return CloudEndpointChangeEnumerationStatusResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      friendlyName: (() { final guardedValue = map['friendlyName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      lastOperationName: (() { final guardedValue = map['lastOperationName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      lastWorkflowId: (() { final guardedValue = map['lastWorkflowId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      partnershipId: (() { final guardedValue = map['partnershipId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      storageAccountResourceId: (() { final guardedValue = map['storageAccountResourceId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      storageAccountTenantId: (() { final guardedValue = map['storageAccountTenantId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
