import 'package:pulumi/pulumi.dart' as pulumi;
import 'server_endpoint_args.dart';
import 'server_endpoint_cloud_tiering_status_response.dart';
import 'server_endpoint_provisioning_status_response.dart';
import 'server_endpoint_recall_status_response.dart';
import 'server_endpoint_sync_status_response.dart';
import 'system_data_response.dart';

/// Server Endpoint object.
///
/// Uses Azure REST API version 2022-09-01. In version 2.x of the Azure Native provider, it used API version 2022-06-01.
///
/// Other available API versions: 2022-06-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native storagesync [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### ServerEndpoints_Create
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var serverEndpoint = new AzureNative.StorageSync.ServerEndpoint("serverEndpoint", new()
///     {
///         CloudTiering = AzureNative.StorageSync.FeatureStatus.Off,
///         InitialDownloadPolicy = AzureNative.StorageSync.InitialDownloadPolicy.NamespaceThenModifiedFiles,
///         InitialUploadPolicy = AzureNative.StorageSync.InitialUploadPolicy.ServerAuthoritative,
///         LocalCacheMode = AzureNative.StorageSync.LocalCacheMode.UpdateLocallyCachedFiles,
///         OfflineDataTransfer = AzureNative.StorageSync.FeatureStatus.@On,
///         OfflineDataTransferShareName = "myfileshare",
///         ResourceGroupName = "SampleResourceGroup_1",
///         ServerEndpointName = "SampleServerEndpoint_1",
///         ServerLocalPath = "D:\\SampleServerEndpoint_1",
///         ServerResourceId = "/subscriptions/52b8da2f-61e0-4a1f-8dde-336911f367fb/resourceGroups/SampleResourceGroup_1/providers/Microsoft.StorageSync/storageSyncServices/SampleStorageSyncService_1/registeredServers/080d4133-bdb5-40a0-96a0-71a6057bfe9a",
///         StorageSyncServiceName = "SampleStorageSyncService_1",
///         SyncGroupName = "SampleSyncGroup_1",
///         TierFilesOlderThanDays = 0,
///         VolumeFreeSpacePercent = 100,
///     });
///
/// });
///
///
/// ```
///
/// ```go
/// package main
///
/// import (
/// 	storagesync "github.com/pulumi/pulumi-azure-native-sdk/storagesync/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := storagesync.NewServerEndpoint(ctx, "serverEndpoint", &storagesync.ServerEndpointArgs{
/// 			CloudTiering:                 pulumi.String(storagesync.FeatureStatusOff),
/// 			InitialDownloadPolicy:        pulumi.String(storagesync.InitialDownloadPolicyNamespaceThenModifiedFiles),
/// 			InitialUploadPolicy:          pulumi.String(storagesync.InitialUploadPolicyServerAuthoritative),
/// 			LocalCacheMode:               pulumi.String(storagesync.LocalCacheModeUpdateLocallyCachedFiles),
/// 			OfflineDataTransfer:          pulumi.String(storagesync.FeatureStatusOn),
/// 			OfflineDataTransferShareName: pulumi.String("myfileshare"),
/// 			ResourceGroupName:            pulumi.String("SampleResourceGroup_1"),
/// 			ServerEndpointName:           pulumi.String("SampleServerEndpoint_1"),
/// 			ServerLocalPath:              pulumi.String("D:\\SampleServerEndpoint_1"),
/// 			ServerResourceId:             pulumi.String("/subscriptions/52b8da2f-61e0-4a1f-8dde-336911f367fb/resourceGroups/SampleResourceGroup_1/providers/Microsoft.StorageSync/storageSyncServices/SampleStorageSyncService_1/registeredServers/080d4133-bdb5-40a0-96a0-71a6057bfe9a"),
/// 			StorageSyncServiceName:       pulumi.String("SampleStorageSyncService_1"),
/// 			SyncGroupName:                pulumi.String("SampleSyncGroup_1"),
/// 			TierFilesOlderThanDays:       pulumi.Int(0),
/// 			VolumeFreeSpacePercent:       pulumi.Int(100),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
///
/// ```
///
/// ```hcl
/// pulumi {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_storagesync_serverendpoint" "serverEndpoint" {
///   cloud_tiering                    = "off"
///   initial_download_policy          = "NamespaceThenModifiedFiles"
///   initial_upload_policy            = "ServerAuthoritative"
///   local_cache_mode                 = "UpdateLocallyCachedFiles"
///   offline_data_transfer            = "on"
///   offline_data_transfer_share_name = "myfileshare"
///   resource_group_name              = "SampleResourceGroup_1"
///   server_endpoint_name             = "SampleServerEndpoint_1"
///   server_local_path                = "D:\\SampleServerEndpoint_1"
///   server_resource_id               = "/subscriptions/52b8da2f-61e0-4a1f-8dde-336911f367fb/resourceGroups/SampleResourceGroup_1/providers/Microsoft.StorageSync/storageSyncServices/SampleStorageSyncService_1/registeredServers/080d4133-bdb5-40a0-96a0-71a6057bfe9a"
///   storage_sync_service_name        = "SampleStorageSyncService_1"
///   sync_group_name                  = "SampleSyncGroup_1"
///   tier_files_older_than_days       = 0
///   volume_free_space_percent        = 100
/// }
///
/// ```
///
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.storagesync.ServerEndpoint;
/// import com.pulumi.azurenative.storagesync.ServerEndpointArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var serverEndpoint = new ServerEndpoint("serverEndpoint", ServerEndpointArgs.builder()
///             .cloudTiering("off")
///             .initialDownloadPolicy("NamespaceThenModifiedFiles")
///             .initialUploadPolicy("ServerAuthoritative")
///             .localCacheMode("UpdateLocallyCachedFiles")
///             .offlineDataTransfer("on")
///             .offlineDataTransferShareName("myfileshare")
///             .resourceGroupName("SampleResourceGroup_1")
///             .serverEndpointName("SampleServerEndpoint_1")
///             .serverLocalPath("D:\\SampleServerEndpoint_1")
///             .serverResourceId("/subscriptions/52b8da2f-61e0-4a1f-8dde-336911f367fb/resourceGroups/SampleResourceGroup_1/providers/Microsoft.StorageSync/storageSyncServices/SampleStorageSyncService_1/registeredServers/080d4133-bdb5-40a0-96a0-71a6057bfe9a")
///             .storageSyncServiceName("SampleStorageSyncService_1")
///             .syncGroupName("SampleSyncGroup_1")
///             .tierFilesOlderThanDays(0)
///             .volumeFreeSpacePercent(100)
///             .build());
///
///     }
/// }
///
/// ```
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure_native from "@pulumi/azure-native";
///
/// const serverEndpoint = new azure_native.storagesync.ServerEndpoint("serverEndpoint", {
///     cloudTiering: azure_native.storagesync.FeatureStatus.Off,
///     initialDownloadPolicy: azure_native.storagesync.InitialDownloadPolicy.NamespaceThenModifiedFiles,
///     initialUploadPolicy: azure_native.storagesync.InitialUploadPolicy.ServerAuthoritative,
///     localCacheMode: azure_native.storagesync.LocalCacheMode.UpdateLocallyCachedFiles,
///     offlineDataTransfer: azure_native.storagesync.FeatureStatus.On,
///     offlineDataTransferShareName: "myfileshare",
///     resourceGroupName: "SampleResourceGroup_1",
///     serverEndpointName: "SampleServerEndpoint_1",
///     serverLocalPath: "D:\\SampleServerEndpoint_1",
///     serverResourceId: "/subscriptions/52b8da2f-61e0-4a1f-8dde-336911f367fb/resourceGroups/SampleResourceGroup_1/providers/Microsoft.StorageSync/storageSyncServices/SampleStorageSyncService_1/registeredServers/080d4133-bdb5-40a0-96a0-71a6057bfe9a",
///     storageSyncServiceName: "SampleStorageSyncService_1",
///     syncGroupName: "SampleSyncGroup_1",
///     tierFilesOlderThanDays: 0,
///     volumeFreeSpacePercent: 100,
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// server_endpoint = azure_native.storagesync.ServerEndpoint("serverEndpoint",
///     cloud_tiering=azure_native.storagesync.FeatureStatus.OFF,
///     initial_download_policy=azure_native.storagesync.InitialDownloadPolicy.NAMESPACE_THEN_MODIFIED_FILES,
///     initial_upload_policy=azure_native.storagesync.InitialUploadPolicy.SERVER_AUTHORITATIVE,
///     local_cache_mode=azure_native.storagesync.LocalCacheMode.UPDATE_LOCALLY_CACHED_FILES,
///     offline_data_transfer=azure_native.storagesync.FeatureStatus.ON,
///     offline_data_transfer_share_name="myfileshare",
///     resource_group_name="SampleResourceGroup_1",
///     server_endpoint_name="SampleServerEndpoint_1",
///     server_local_path="D:\\SampleServerEndpoint_1",
///     server_resource_id="/subscriptions/52b8da2f-61e0-4a1f-8dde-336911f367fb/resourceGroups/SampleResourceGroup_1/providers/Microsoft.StorageSync/storageSyncServices/SampleStorageSyncService_1/registeredServers/080d4133-bdb5-40a0-96a0-71a6057bfe9a",
///     storage_sync_service_name="SampleStorageSyncService_1",
///     sync_group_name="SampleSyncGroup_1",
///     tier_files_older_than_days=0,
///     volume_free_space_percent=100)
///
/// ```
///
/// ```yaml
/// resources:
///   serverEndpoint:
///     type: azure-native:storagesync:ServerEndpoint
///     properties:
///       cloudTiering: off
///       initialDownloadPolicy: NamespaceThenModifiedFiles
///       initialUploadPolicy: ServerAuthoritative
///       localCacheMode: UpdateLocallyCachedFiles
///       offlineDataTransfer: on
///       offlineDataTransferShareName: myfileshare
///       resourceGroupName: SampleResourceGroup_1
///       serverEndpointName: SampleServerEndpoint_1
///       serverLocalPath: D:\SampleServerEndpoint_1
///       serverResourceId: /subscriptions/52b8da2f-61e0-4a1f-8dde-336911f367fb/resourceGroups/SampleResourceGroup_1/providers/Microsoft.StorageSync/storageSyncServices/SampleStorageSyncService_1/registeredServers/080d4133-bdb5-40a0-96a0-71a6057bfe9a
///       storageSyncServiceName: SampleStorageSyncService_1
///       syncGroupName: SampleSyncGroup_1
///       tierFilesOlderThanDays: 0
///       volumeFreeSpacePercent: 100
///
/// ```
///
/// {{% /example %}}
/// {{% /examples %}}
///
/// ## Import
///
/// An existing resource can be imported using its type token, name, and identifier, e.g.
///
/// ```sh
/// $ pulumi import azure-native:storagesync:ServerEndpoint SampleServerEndpoint_1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.StorageSync/storageSyncServices/{storageSyncServiceName}/syncGroups/{syncGroupName}/serverEndpoints/{serverEndpointName}
/// ```
class ServerEndpoint extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Cloud Tiering.
  late final pulumi.Output<String?> cloudTiering;
  /// Cloud tiering status. Only populated if cloud tiering is enabled.
  late final pulumi.Output<ServerEndpointCloudTieringStatusResponse> cloudTieringStatus;
  /// Friendly Name
  late final pulumi.Output<String?> friendlyName;
  /// Policy for how namespace and files are recalled during FastDr.
  late final pulumi.Output<String?> initialDownloadPolicy;
  /// Policy for how the initial upload sync session is performed.
  late final pulumi.Output<String?> initialUploadPolicy;
  /// Resource Last Operation Name
  late final pulumi.Output<String> lastOperationName;
  /// ServerEndpoint lastWorkflowId
  late final pulumi.Output<String> lastWorkflowId;
  /// Policy for enabling follow-the-sun business models: link local cache to cloud behavior to pre-populate before local access.
  late final pulumi.Output<String?> localCacheMode;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Offline data transfer
  late final pulumi.Output<String?> offlineDataTransfer;
  /// Offline data transfer share name
  late final pulumi.Output<String?> offlineDataTransferShareName;
  /// Offline data transfer storage account resource ID
  late final pulumi.Output<String> offlineDataTransferStorageAccountResourceId;
  /// Offline data transfer storage account tenant ID
  late final pulumi.Output<String> offlineDataTransferStorageAccountTenantId;
  /// ServerEndpoint Provisioning State
  late final pulumi.Output<String> provisioningState;
  /// Recall status. Only populated if cloud tiering is enabled.
  late final pulumi.Output<ServerEndpointRecallStatusResponse> recallStatus;
  /// Server Endpoint provisioning status
  late final pulumi.Output<ServerEndpointProvisioningStatusResponse?> serverEndpointProvisioningStatus;
  /// Server Local path.
  late final pulumi.Output<String?> serverLocalPath;
  /// Server name
  late final pulumi.Output<String> serverName;
  /// Server Resource Id.
  late final pulumi.Output<String?> serverResourceId;
  /// Server Endpoint sync status
  late final pulumi.Output<ServerEndpointSyncStatusResponse> syncStatus;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Tier files older than days.
  late final pulumi.Output<int?> tierFilesOlderThanDays;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;
  /// Level of free space to be maintained by Cloud Tiering if it is enabled.
  late final pulumi.Output<int?> volumeFreeSpacePercent;

  /// Creates a new [ServerEndpoint].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ServerEndpoint]. {@macro pulumi_storagesync_server_endpoint_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ServerEndpoint(
    String name, {
    ServerEndpointArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:storagesync:ServerEndpoint',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    cloudTiering = registerOutput<String?>('cloudTiering');
    cloudTieringStatus = registerOutput<ServerEndpointCloudTieringStatusResponse>('cloudTieringStatus', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ServerEndpointCloudTieringStatusResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    friendlyName = registerOutput<String?>('friendlyName');
    initialDownloadPolicy = registerOutput<String?>('initialDownloadPolicy');
    initialUploadPolicy = registerOutput<String?>('initialUploadPolicy');
    lastOperationName = registerOutput<String>('lastOperationName');
    lastWorkflowId = registerOutput<String>('lastWorkflowId');
    localCacheMode = registerOutput<String?>('localCacheMode');
    this.name = registerOutput<String>('name');
    offlineDataTransfer = registerOutput<String?>('offlineDataTransfer');
    offlineDataTransferShareName = registerOutput<String?>('offlineDataTransferShareName');
    offlineDataTransferStorageAccountResourceId = registerOutput<String>('offlineDataTransferStorageAccountResourceId');
    offlineDataTransferStorageAccountTenantId = registerOutput<String>('offlineDataTransferStorageAccountTenantId');
    provisioningState = registerOutput<String>('provisioningState');
    recallStatus = registerOutput<ServerEndpointRecallStatusResponse>('recallStatus', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ServerEndpointRecallStatusResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    serverEndpointProvisioningStatus = registerOutput<ServerEndpointProvisioningStatusResponse?>('serverEndpointProvisioningStatus', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ServerEndpointProvisioningStatusResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    serverLocalPath = registerOutput<String?>('serverLocalPath');
    serverName = registerOutput<String>('serverName');
    serverResourceId = registerOutput<String?>('serverResourceId');
    syncStatus = registerOutput<ServerEndpointSyncStatusResponse>('syncStatus', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ServerEndpointSyncStatusResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tierFilesOlderThanDays = registerOutput<int?>('tierFilesOlderThanDays');
    type = registerOutput<String>('type');
    volumeFreeSpacePercent = registerOutput<int?>('volumeFreeSpacePercent');
  }

  /// Creates a typed reference to an existing [ServerEndpoint] resource.
  ServerEndpoint.reference(String urn)
    : super(
        'azure-native:storagesync:ServerEndpoint',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    cloudTiering = registerOutput<String?>('cloudTiering');
    cloudTieringStatus = registerOutput<ServerEndpointCloudTieringStatusResponse>('cloudTieringStatus', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ServerEndpointCloudTieringStatusResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    friendlyName = registerOutput<String?>('friendlyName');
    initialDownloadPolicy = registerOutput<String?>('initialDownloadPolicy');
    initialUploadPolicy = registerOutput<String?>('initialUploadPolicy');
    lastOperationName = registerOutput<String>('lastOperationName');
    lastWorkflowId = registerOutput<String>('lastWorkflowId');
    localCacheMode = registerOutput<String?>('localCacheMode');
    this.name = registerOutput<String>('name');
    offlineDataTransfer = registerOutput<String?>('offlineDataTransfer');
    offlineDataTransferShareName = registerOutput<String?>('offlineDataTransferShareName');
    offlineDataTransferStorageAccountResourceId = registerOutput<String>('offlineDataTransferStorageAccountResourceId');
    offlineDataTransferStorageAccountTenantId = registerOutput<String>('offlineDataTransferStorageAccountTenantId');
    provisioningState = registerOutput<String>('provisioningState');
    recallStatus = registerOutput<ServerEndpointRecallStatusResponse>('recallStatus', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ServerEndpointRecallStatusResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    serverEndpointProvisioningStatus = registerOutput<ServerEndpointProvisioningStatusResponse?>('serverEndpointProvisioningStatus', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ServerEndpointProvisioningStatusResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    serverLocalPath = registerOutput<String?>('serverLocalPath');
    serverName = registerOutput<String>('serverName');
    serverResourceId = registerOutput<String?>('serverResourceId');
    syncStatus = registerOutput<ServerEndpointSyncStatusResponse>('syncStatus', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ServerEndpointSyncStatusResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tierFilesOlderThanDays = registerOutput<int?>('tierFilesOlderThanDays');
    type = registerOutput<String>('type');
    volumeFreeSpacePercent = registerOutput<int?>('volumeFreeSpacePercent');
  }
}
