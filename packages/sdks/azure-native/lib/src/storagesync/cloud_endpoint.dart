import 'package:pulumi/pulumi.dart' as pulumi;
import 'cloud_endpoint_args.dart';
import 'cloud_endpoint_change_enumeration_status_response.dart';
import 'system_data_response.dart';

/// Cloud Endpoint object.
///
/// Uses Azure REST API version 2022-09-01. In version 2.x of the Azure Native provider, it used API version 2022-06-01.
///
/// Other available API versions: 2022-06-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native storagesync [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### CloudEndpoints_Create
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var cloudEndpoint = new AzureNative.StorageSync.CloudEndpoint("cloudEndpoint", new()
///     {
///         AzureFileShareName = "cvcloud-afscv-0719-058-a94a1354-a1fd-4e9a-9a50-919fad8c4ba4",
///         CloudEndpointName = "SampleCloudEndpoint_1",
///         FriendlyName = "ankushbsubscriptionmgmtmab",
///         ResourceGroupName = "SampleResourceGroup_1",
///         StorageAccountResourceId = "/subscriptions/744f4d70-6d17-4921-8970-a765d14f763f/resourceGroups/tminienv59svc/providers/Microsoft.Storage/storageAccounts/tminienv59storage",
///         StorageAccountTenantId = "\"72f988bf-86f1-41af-91ab-2d7cd011db47\"",
///         StorageSyncServiceName = "SampleStorageSyncService_1",
///         SyncGroupName = "SampleSyncGroup_1",
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
/// 		_, err := storagesync.NewCloudEndpoint(ctx, "cloudEndpoint", &storagesync.CloudEndpointArgs{
/// 			AzureFileShareName:       pulumi.String("cvcloud-afscv-0719-058-a94a1354-a1fd-4e9a-9a50-919fad8c4ba4"),
/// 			CloudEndpointName:        pulumi.String("SampleCloudEndpoint_1"),
/// 			FriendlyName:             pulumi.String("ankushbsubscriptionmgmtmab"),
/// 			ResourceGroupName:        pulumi.String("SampleResourceGroup_1"),
/// 			StorageAccountResourceId: pulumi.String("/subscriptions/744f4d70-6d17-4921-8970-a765d14f763f/resourceGroups/tminienv59svc/providers/Microsoft.Storage/storageAccounts/tminienv59storage"),
/// 			StorageAccountTenantId:   pulumi.String("\"72f988bf-86f1-41af-91ab-2d7cd011db47\""),
/// 			StorageSyncServiceName:   pulumi.String("SampleStorageSyncService_1"),
/// 			SyncGroupName:            pulumi.String("SampleSyncGroup_1"),
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
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.storagesync.CloudEndpoint;
/// import com.pulumi.azurenative.storagesync.CloudEndpointArgs;
/// import java.util.List;
/// import java.util.ArrayList;
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
///         var cloudEndpoint = new CloudEndpoint("cloudEndpoint", CloudEndpointArgs.builder()
///             .azureFileShareName("cvcloud-afscv-0719-058-a94a1354-a1fd-4e9a-9a50-919fad8c4ba4")
///             .cloudEndpointName("SampleCloudEndpoint_1")
///             .friendlyName("ankushbsubscriptionmgmtmab")
///             .resourceGroupName("SampleResourceGroup_1")
///             .storageAccountResourceId("/subscriptions/744f4d70-6d17-4921-8970-a765d14f763f/resourceGroups/tminienv59svc/providers/Microsoft.Storage/storageAccounts/tminienv59storage")
///             .storageAccountTenantId("\"72f988bf-86f1-41af-91ab-2d7cd011db47\"")
///             .storageSyncServiceName("SampleStorageSyncService_1")
///             .syncGroupName("SampleSyncGroup_1")
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
/// const cloudEndpoint = new azure_native.storagesync.CloudEndpoint("cloudEndpoint", {
///     azureFileShareName: "cvcloud-afscv-0719-058-a94a1354-a1fd-4e9a-9a50-919fad8c4ba4",
///     cloudEndpointName: "SampleCloudEndpoint_1",
///     friendlyName: "ankushbsubscriptionmgmtmab",
///     resourceGroupName: "SampleResourceGroup_1",
///     storageAccountResourceId: "/subscriptions/744f4d70-6d17-4921-8970-a765d14f763f/resourceGroups/tminienv59svc/providers/Microsoft.Storage/storageAccounts/tminienv59storage",
///     storageAccountTenantId: "\"72f988bf-86f1-41af-91ab-2d7cd011db47\"",
///     storageSyncServiceName: "SampleStorageSyncService_1",
///     syncGroupName: "SampleSyncGroup_1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// cloud_endpoint = azure_native.storagesync.CloudEndpoint("cloudEndpoint",
///     azure_file_share_name="cvcloud-afscv-0719-058-a94a1354-a1fd-4e9a-9a50-919fad8c4ba4",
///     cloud_endpoint_name="SampleCloudEndpoint_1",
///     friendly_name="ankushbsubscriptionmgmtmab",
///     resource_group_name="SampleResourceGroup_1",
///     storage_account_resource_id="/subscriptions/744f4d70-6d17-4921-8970-a765d14f763f/resourceGroups/tminienv59svc/providers/Microsoft.Storage/storageAccounts/tminienv59storage",
///     storage_account_tenant_id="\"72f988bf-86f1-41af-91ab-2d7cd011db47\"",
///     storage_sync_service_name="SampleStorageSyncService_1",
///     sync_group_name="SampleSyncGroup_1")
///
/// ```
///
/// ```yaml
/// resources:
///   cloudEndpoint:
///     type: azure-native:storagesync:CloudEndpoint
///     properties:
///       azureFileShareName: cvcloud-afscv-0719-058-a94a1354-a1fd-4e9a-9a50-919fad8c4ba4
///       cloudEndpointName: SampleCloudEndpoint_1
///       friendlyName: ankushbsubscriptionmgmtmab
///       resourceGroupName: SampleResourceGroup_1
///       storageAccountResourceId: /subscriptions/744f4d70-6d17-4921-8970-a765d14f763f/resourceGroups/tminienv59svc/providers/Microsoft.Storage/storageAccounts/tminienv59storage
///       storageAccountTenantId: '"72f988bf-86f1-41af-91ab-2d7cd011db47"'
///       storageSyncServiceName: SampleStorageSyncService_1
///       syncGroupName: SampleSyncGroup_1
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
/// $ pulumi import azure-native:storagesync:CloudEndpoint SampleCloudEndpoint_1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.StorageSync/storageSyncServices/{storageSyncServiceName}/syncGroups/{syncGroupName}/cloudEndpoints/{cloudEndpointName}
/// ```
class CloudEndpoint extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Azure file share name
  late final pulumi.Output<String?> azureFileShareName;
  /// Backup Enabled
  late final pulumi.Output<String> backupEnabled;
  /// Cloud endpoint change enumeration status
  late final pulumi.Output<CloudEndpointChangeEnumerationStatusResponse> changeEnumerationStatus;
  /// Friendly Name
  late final pulumi.Output<String?> friendlyName;
  /// Resource Last Operation Name
  late final pulumi.Output<String?> lastOperationName;
  /// CloudEndpoint lastWorkflowId
  late final pulumi.Output<String?> lastWorkflowId;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Partnership Id
  late final pulumi.Output<String?> partnershipId;
  /// CloudEndpoint Provisioning State
  late final pulumi.Output<String?> provisioningState;
  /// Storage Account Resource Id
  late final pulumi.Output<String?> storageAccountResourceId;
  /// Storage Account Tenant Id
  late final pulumi.Output<String?> storageAccountTenantId;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [CloudEndpoint].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [CloudEndpoint]. {@macro pulumi_storagesync_cloud_endpoint_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  CloudEndpoint(
    String name, {
    CloudEndpointArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:storagesync:CloudEndpoint',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.azureFileShareName = registerOutput<String?>('azureFileShareName');
    this.backupEnabled = registerOutput<String>('backupEnabled');
    this.changeEnumerationStatus = registerOutput<CloudEndpointChangeEnumerationStatusResponse>('changeEnumerationStatus');
    this.friendlyName = registerOutput<String?>('friendlyName');
    this.lastOperationName = registerOutput<String?>('lastOperationName');
    this.lastWorkflowId = registerOutput<String?>('lastWorkflowId');
    this.name = registerOutput<String>('name');
    this.partnershipId = registerOutput<String?>('partnershipId');
    this.provisioningState = registerOutput<String?>('provisioningState');
    this.storageAccountResourceId = registerOutput<String?>('storageAccountResourceId');
    this.storageAccountTenantId = registerOutput<String?>('storageAccountTenantId');
    this.systemData = registerOutput<SystemDataResponse>('systemData');
    this.type = registerOutput<String>('type');
  }
}
