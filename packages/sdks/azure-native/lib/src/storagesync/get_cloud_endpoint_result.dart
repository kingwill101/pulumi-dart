// ignore_for_file: unused_element, unnecessary_cast

import 'cloud_endpoint_change_enumeration_status_response.dart';
import 'system_data_response.dart';

/// Result data returned by getCloudEndpoint.
class GetCloudEndpointResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Azure file share name
  final String? azureFileShareName;
  /// Backup Enabled
  final String backupEnabled;
  /// Cloud endpoint change enumeration status
  final CloudEndpointChangeEnumerationStatusResponse changeEnumerationStatus;
  /// Friendly Name
  final String? friendlyName;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;
  /// Resource Last Operation Name
  final String? lastOperationName;
  /// CloudEndpoint lastWorkflowId
  final String? lastWorkflowId;
  /// The name of the resource
  final String name;
  /// Partnership Id
  final String? partnershipId;
  /// CloudEndpoint Provisioning State
  final String? provisioningState;
  /// Storage Account Resource Id
  final String? storageAccountResourceId;
  /// Storage Account Tenant Id
  final String? storageAccountTenantId;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

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
  GetCloudEndpointResult({
    required this.azureApiVersion,
    this.azureFileShareName,
    required this.backupEnabled,
    required this.changeEnumerationStatus,
    this.friendlyName,
    required this.id,
    this.lastOperationName,
    this.lastWorkflowId,
    required this.name,
    this.partnershipId,
    this.provisioningState,
    this.storageAccountResourceId,
    this.storageAccountTenantId,
    required this.systemData,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'azureFileShareName': ?azureFileShareName,
      'backupEnabled': backupEnabled,
      'changeEnumerationStatus': changeEnumerationStatus.toMap(),
      'friendlyName': ?friendlyName,
      'id': id,
      'lastOperationName': ?lastOperationName,
      'lastWorkflowId': ?lastWorkflowId,
      'name': name,
      'partnershipId': ?partnershipId,
      'provisioningState': ?provisioningState,
      'storageAccountResourceId': ?storageAccountResourceId,
      'storageAccountTenantId': ?storageAccountTenantId,
      'systemData': systemData.toMap(),
      'type': type,
    };
  }

  factory GetCloudEndpointResult.fromMap(Map<String, dynamic> map) {
    return GetCloudEndpointResult(
      azureApiVersion: map['azureApiVersion'] as String,
      azureFileShareName: map['azureFileShareName'] == null ? null : map['azureFileShareName'] as String,
      backupEnabled: map['backupEnabled'] as String,
      changeEnumerationStatus: CloudEndpointChangeEnumerationStatusResponse.fromMap((map['changeEnumerationStatus'] as Map).cast<String, dynamic>()),
      friendlyName: map['friendlyName'] == null ? null : map['friendlyName'] as String,
      id: map['id'] as String,
      lastOperationName: map['lastOperationName'] == null ? null : map['lastOperationName'] as String,
      lastWorkflowId: map['lastWorkflowId'] == null ? null : map['lastWorkflowId'] as String,
      name: map['name'] as String,
      partnershipId: map['partnershipId'] == null ? null : map['partnershipId'] as String,
      provisioningState: map['provisioningState'] == null ? null : map['provisioningState'] as String,
      storageAccountResourceId: map['storageAccountResourceId'] == null ? null : map['storageAccountResourceId'] as String,
      storageAccountTenantId: map['storageAccountTenantId'] == null ? null : map['storageAccountTenantId'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}

