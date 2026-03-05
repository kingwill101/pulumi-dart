// ignore_for_file: unused_element, unnecessary_cast

import 'server_endpoint_cloud_tiering_status_response.dart';
import 'server_endpoint_provisioning_status_response.dart';
import 'server_endpoint_recall_status_response.dart';
import 'server_endpoint_sync_status_response.dart';
import 'system_data_response.dart';

/// Result data returned by getServerEndpoint.
class GetServerEndpointResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Cloud Tiering.
  final String? cloudTiering;
  /// Cloud tiering status. Only populated if cloud tiering is enabled.
  final ServerEndpointCloudTieringStatusResponse cloudTieringStatus;
  /// Friendly Name
  final String? friendlyName;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;
  /// Policy for how namespace and files are recalled during FastDr.
  final String? initialDownloadPolicy;
  /// Policy for how the initial upload sync session is performed.
  final String? initialUploadPolicy;
  /// Resource Last Operation Name
  final String lastOperationName;
  /// ServerEndpoint lastWorkflowId
  final String lastWorkflowId;
  /// Policy for enabling follow-the-sun business models: link local cache to cloud behavior to pre-populate before local access.
  final String? localCacheMode;
  /// The name of the resource
  final String name;
  /// Offline data transfer
  final String? offlineDataTransfer;
  /// Offline data transfer share name
  final String? offlineDataTransferShareName;
  /// Offline data transfer storage account resource ID
  final String offlineDataTransferStorageAccountResourceId;
  /// Offline data transfer storage account tenant ID
  final String offlineDataTransferStorageAccountTenantId;
  /// ServerEndpoint Provisioning State
  final String provisioningState;
  /// Recall status. Only populated if cloud tiering is enabled.
  final ServerEndpointRecallStatusResponse recallStatus;
  /// Server Endpoint provisioning status
  final ServerEndpointProvisioningStatusResponse? serverEndpointProvisioningStatus;
  /// Server Local path.
  final String? serverLocalPath;
  /// Server name
  final String serverName;
  /// Server Resource Id.
  final String? serverResourceId;
  /// Server Endpoint sync status
  final ServerEndpointSyncStatusResponse syncStatus;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// Tier files older than days.
  final int? tierFilesOlderThanDays;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;
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
    required this.azureApiVersion,
    this.cloudTiering,
    required this.cloudTieringStatus,
    this.friendlyName,
    required this.id,
    this.initialDownloadPolicy,
    this.initialUploadPolicy,
    required this.lastOperationName,
    required this.lastWorkflowId,
    this.localCacheMode,
    required this.name,
    this.offlineDataTransfer,
    this.offlineDataTransferShareName,
    required this.offlineDataTransferStorageAccountResourceId,
    required this.offlineDataTransferStorageAccountTenantId,
    required this.provisioningState,
    required this.recallStatus,
    this.serverEndpointProvisioningStatus,
    this.serverLocalPath,
    required this.serverName,
    this.serverResourceId,
    required this.syncStatus,
    required this.systemData,
    this.tierFilesOlderThanDays,
    required this.type,
    this.volumeFreeSpacePercent,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'cloudTiering': ?cloudTiering,
      'cloudTieringStatus': cloudTieringStatus.toMap(),
      'friendlyName': ?friendlyName,
      'id': id,
      'initialDownloadPolicy': ?initialDownloadPolicy,
      'initialUploadPolicy': ?initialUploadPolicy,
      'lastOperationName': lastOperationName,
      'lastWorkflowId': lastWorkflowId,
      'localCacheMode': ?localCacheMode,
      'name': name,
      'offlineDataTransfer': ?offlineDataTransfer,
      'offlineDataTransferShareName': ?offlineDataTransferShareName,
      'offlineDataTransferStorageAccountResourceId': offlineDataTransferStorageAccountResourceId,
      'offlineDataTransferStorageAccountTenantId': offlineDataTransferStorageAccountTenantId,
      'provisioningState': provisioningState,
      'recallStatus': recallStatus.toMap(),
      'serverEndpointProvisioningStatus': ?serverEndpointProvisioningStatus?.toMap(),
      'serverLocalPath': ?serverLocalPath,
      'serverName': serverName,
      'serverResourceId': ?serverResourceId,
      'syncStatus': syncStatus.toMap(),
      'systemData': systemData.toMap(),
      'tierFilesOlderThanDays': ?tierFilesOlderThanDays,
      'type': type,
      'volumeFreeSpacePercent': ?volumeFreeSpacePercent,
    };
  }

  factory GetServerEndpointResult.fromMap(Map<String, dynamic> map) {
    return GetServerEndpointResult(
      azureApiVersion: map['azureApiVersion'] as String,
      cloudTiering: (() { final guardedValue = map['cloudTiering']; if (guardedValue == null) return null; return guardedValue as String; })(),
      cloudTieringStatus: ServerEndpointCloudTieringStatusResponse.fromMap((map['cloudTieringStatus']! as Map).cast<String, dynamic>()),
      friendlyName: (() { final guardedValue = map['friendlyName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: map['id'] as String,
      initialDownloadPolicy: (() { final guardedValue = map['initialDownloadPolicy']; if (guardedValue == null) return null; return guardedValue as String; })(),
      initialUploadPolicy: (() { final guardedValue = map['initialUploadPolicy']; if (guardedValue == null) return null; return guardedValue as String; })(),
      lastOperationName: map['lastOperationName'] as String,
      lastWorkflowId: map['lastWorkflowId'] as String,
      localCacheMode: (() { final guardedValue = map['localCacheMode']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: map['name'] as String,
      offlineDataTransfer: (() { final guardedValue = map['offlineDataTransfer']; if (guardedValue == null) return null; return guardedValue as String; })(),
      offlineDataTransferShareName: (() { final guardedValue = map['offlineDataTransferShareName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      offlineDataTransferStorageAccountResourceId: map['offlineDataTransferStorageAccountResourceId'] as String,
      offlineDataTransferStorageAccountTenantId: map['offlineDataTransferStorageAccountTenantId'] as String,
      provisioningState: map['provisioningState'] as String,
      recallStatus: ServerEndpointRecallStatusResponse.fromMap((map['recallStatus']! as Map).cast<String, dynamic>()),
      serverEndpointProvisioningStatus: (() { final guardedValue = map['serverEndpointProvisioningStatus']; if (guardedValue == null) return null; return ServerEndpointProvisioningStatusResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      serverLocalPath: (() { final guardedValue = map['serverLocalPath']; if (guardedValue == null) return null; return guardedValue as String; })(),
      serverName: map['serverName'] as String,
      serverResourceId: (() { final guardedValue = map['serverResourceId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      syncStatus: ServerEndpointSyncStatusResponse.fromMap((map['syncStatus']! as Map).cast<String, dynamic>()),
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      tierFilesOlderThanDays: (() { final guardedValue = map['tierFilesOlderThanDays']; if (guardedValue == null) return null; return guardedValue as int; })(),
      type: map['type'] as String,
      volumeFreeSpacePercent: (() { final guardedValue = map['volumeFreeSpacePercent']; if (guardedValue == null) return null; return guardedValue as int; })(),
    );
  }
}

