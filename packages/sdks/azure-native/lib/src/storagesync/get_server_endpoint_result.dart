// ignore_for_file: unused_element, unnecessary_cast

import 'server_endpoint_cloud_tiering_status_response.dart';
import 'server_endpoint_provisioning_status_response.dart';
import 'server_endpoint_recall_status_response.dart';
import 'server_endpoint_sync_status_response.dart';
import 'system_data_response.dart';

/// Result data returned by getServerEndpoint.
class GetServerEndpointResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Cloud Tiering.
  final String? cloudTiering;
  /// Cloud tiering status. Only populated if cloud tiering is enabled.
  final ServerEndpointCloudTieringStatusResponse? cloudTieringStatus;
  /// Friendly Name
  final String? friendlyName;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String? id;
  /// Policy for how namespace and files are recalled during FastDr.
  final String? initialDownloadPolicy;
  /// Policy for how the initial upload sync session is performed.
  final String? initialUploadPolicy;
  /// Resource Last Operation Name
  final String? lastOperationName;
  /// ServerEndpoint lastWorkflowId
  final String? lastWorkflowId;
  /// Policy for enabling follow-the-sun business models: link local cache to cloud behavior to pre-populate before local access.
  final String? localCacheMode;
  /// The name of the resource
  final String? name;
  /// Offline data transfer
  final String? offlineDataTransfer;
  /// Offline data transfer share name
  final String? offlineDataTransferShareName;
  /// Offline data transfer storage account resource ID
  final String? offlineDataTransferStorageAccountResourceId;
  /// Offline data transfer storage account tenant ID
  final String? offlineDataTransferStorageAccountTenantId;
  /// ServerEndpoint Provisioning State
  final String? provisioningState;
  /// Recall status. Only populated if cloud tiering is enabled.
  final ServerEndpointRecallStatusResponse? recallStatus;
  /// Server Endpoint provisioning status
  final ServerEndpointProvisioningStatusResponse? serverEndpointProvisioningStatus;
  /// Server Local path.
  final String? serverLocalPath;
  /// Server name
  final String? serverName;
  /// Server Resource Id.
  final String? serverResourceId;
  /// Server Endpoint sync status
  final ServerEndpointSyncStatusResponse? syncStatus;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  /// Tier files older than days.
  final int? tierFilesOlderThanDays;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;
  /// Level of free space to be maintained by Cloud Tiering if it is enabled.
  final int? volumeFreeSpacePercent;

  /// Creates a new [GetServerEndpointResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [cloudTiering] Cloud Tiering.
  /// [cloudTieringStatus] Cloud tiering status. Only populated if cloud tiering is enabled.
  /// [friendlyName] Friendly Name
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [initialDownloadPolicy] Policy for how namespace and files are recalled during FastDr.
  /// [initialUploadPolicy] Policy for how the initial upload sync session is performed.
  /// [lastOperationName] Resource Last Operation Name
  /// [lastWorkflowId] ServerEndpoint lastWorkflowId
  /// [localCacheMode] Policy for enabling follow-the-sun business models: link local cache to cloud behavior to pre-populate before local access.
  /// [name] The name of the resource
  /// [offlineDataTransfer] Offline data transfer
  /// [offlineDataTransferShareName] Offline data transfer share name
  /// [offlineDataTransferStorageAccountResourceId] Offline data transfer storage account resource ID
  /// [offlineDataTransferStorageAccountTenantId] Offline data transfer storage account tenant ID
  /// [provisioningState] ServerEndpoint Provisioning State
  /// [recallStatus] Recall status. Only populated if cloud tiering is enabled.
  /// [serverEndpointProvisioningStatus] Server Endpoint provisioning status
  /// [serverLocalPath] Server Local path.
  /// [serverName] Server name
  /// [serverResourceId] Server Resource Id.
  /// [syncStatus] Server Endpoint sync status
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tierFilesOlderThanDays] Tier files older than days.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  /// [volumeFreeSpacePercent] Level of free space to be maintained by Cloud Tiering if it is enabled.
  GetServerEndpointResult({
    this.azureApiVersion,
    this.cloudTiering,
    this.cloudTieringStatus,
    this.friendlyName,
    this.id,
    String? initialDownloadPolicy,
    String? initialUploadPolicy,
    this.lastOperationName,
    this.lastWorkflowId,
    String? localCacheMode,
    this.name,
    this.offlineDataTransfer,
    this.offlineDataTransferShareName,
    this.offlineDataTransferStorageAccountResourceId,
    this.offlineDataTransferStorageAccountTenantId,
    this.provisioningState,
    this.recallStatus,
    this.serverEndpointProvisioningStatus,
    this.serverLocalPath,
    this.serverName,
    this.serverResourceId,
    this.syncStatus,
    this.systemData,
    this.tierFilesOlderThanDays,
    this.type,
    this.volumeFreeSpacePercent,
  }) : initialDownloadPolicy = initialDownloadPolicy ?? 'NamespaceThenModifiedFiles', initialUploadPolicy = initialUploadPolicy ?? 'Merge', localCacheMode = localCacheMode ?? 'UpdateLocallyCachedFiles';

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'cloudTiering': ?cloudTiering,
      'cloudTieringStatus': ?cloudTieringStatus?.toMap(),
      'friendlyName': ?friendlyName,
      'id': ?id,
      'initialDownloadPolicy': ?initialDownloadPolicy,
      'initialUploadPolicy': ?initialUploadPolicy,
      'lastOperationName': ?lastOperationName,
      'lastWorkflowId': ?lastWorkflowId,
      'localCacheMode': ?localCacheMode,
      'name': ?name,
      'offlineDataTransfer': ?offlineDataTransfer,
      'offlineDataTransferShareName': ?offlineDataTransferShareName,
      'offlineDataTransferStorageAccountResourceId': ?offlineDataTransferStorageAccountResourceId,
      'offlineDataTransferStorageAccountTenantId': ?offlineDataTransferStorageAccountTenantId,
      'provisioningState': ?provisioningState,
      'recallStatus': ?recallStatus?.toMap(),
      'serverEndpointProvisioningStatus': ?serverEndpointProvisioningStatus?.toMap(),
      'serverLocalPath': ?serverLocalPath,
      'serverName': ?serverName,
      'serverResourceId': ?serverResourceId,
      'syncStatus': ?syncStatus?.toMap(),
      'systemData': ?systemData?.toMap(),
      'tierFilesOlderThanDays': ?tierFilesOlderThanDays,
      'type': ?type,
      'volumeFreeSpacePercent': ?volumeFreeSpacePercent,
    };
  }

  factory GetServerEndpointResult.fromMap(Map<String, dynamic> map) {
    return GetServerEndpointResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      cloudTiering: (() { final guardedValue = map['cloudTiering']; if (guardedValue == null) return null; return guardedValue as String; })(),
      cloudTieringStatus: (() { final guardedValue = map['cloudTieringStatus']; if (guardedValue == null) return null; return ServerEndpointCloudTieringStatusResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      friendlyName: (() { final guardedValue = map['friendlyName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      initialDownloadPolicy: (() { final guardedValue = map['initialDownloadPolicy']; if (guardedValue == null) return null; return guardedValue as String; })(),
      initialUploadPolicy: (() { final guardedValue = map['initialUploadPolicy']; if (guardedValue == null) return null; return guardedValue as String; })(),
      lastOperationName: (() { final guardedValue = map['lastOperationName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      lastWorkflowId: (() { final guardedValue = map['lastWorkflowId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      localCacheMode: (() { final guardedValue = map['localCacheMode']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      offlineDataTransfer: (() { final guardedValue = map['offlineDataTransfer']; if (guardedValue == null) return null; return guardedValue as String; })(),
      offlineDataTransferShareName: (() { final guardedValue = map['offlineDataTransferShareName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      offlineDataTransferStorageAccountResourceId: (() { final guardedValue = map['offlineDataTransferStorageAccountResourceId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      offlineDataTransferStorageAccountTenantId: (() { final guardedValue = map['offlineDataTransferStorageAccountTenantId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      recallStatus: (() { final guardedValue = map['recallStatus']; if (guardedValue == null) return null; return ServerEndpointRecallStatusResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      serverEndpointProvisioningStatus: (() { final guardedValue = map['serverEndpointProvisioningStatus']; if (guardedValue == null) return null; return ServerEndpointProvisioningStatusResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      serverLocalPath: (() { final guardedValue = map['serverLocalPath']; if (guardedValue == null) return null; return guardedValue as String; })(),
      serverName: (() { final guardedValue = map['serverName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      serverResourceId: (() { final guardedValue = map['serverResourceId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      syncStatus: (() { final guardedValue = map['syncStatus']; if (guardedValue == null) return null; return ServerEndpointSyncStatusResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      tierFilesOlderThanDays: (() { final guardedValue = map['tierFilesOlderThanDays']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
      volumeFreeSpacePercent: (() { final guardedValue = map['volumeFreeSpacePercent']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
    );
  }
}
