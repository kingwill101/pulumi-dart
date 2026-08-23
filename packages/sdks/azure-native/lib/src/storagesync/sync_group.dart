import 'package:pulumi/pulumi.dart' as pulumi;
import 'sync_group_args.dart';
import 'system_data_response.dart';

/// Sync Group object.
///
/// Uses Azure REST API version 2022-09-01. In version 2.x of the Azure Native provider, it used API version 2022-06-01.
///
/// Other available API versions: 2022-06-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native storagesync [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### SyncGroups_Create
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var syncGroup = new AzureNative.StorageSync.SyncGroup("syncGroup", new()
///     {
///         ResourceGroupName = "SampleResourceGroup_1",
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
/// 		_, err := storagesync.NewSyncGroup(ctx, "syncGroup", &storagesync.SyncGroupArgs{
/// 			ResourceGroupName:      pulumi.String("SampleResourceGroup_1"),
/// 			StorageSyncServiceName: pulumi.String("SampleStorageSyncService_1"),
/// 			SyncGroupName:          pulumi.String("SampleSyncGroup_1"),
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
/// resource "azure-native_storagesync_syncgroup" "syncGroup" {
///   resource_group_name       = "SampleResourceGroup_1"
///   storage_sync_service_name = "SampleStorageSyncService_1"
///   sync_group_name           = "SampleSyncGroup_1"
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
/// import com.pulumi.azurenative.storagesync.SyncGroup;
/// import com.pulumi.azurenative.storagesync.SyncGroupArgs;
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
///         var syncGroup = new SyncGroup("syncGroup", SyncGroupArgs.builder()
///             .resourceGroupName("SampleResourceGroup_1")
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
/// const syncGroup = new azure_native.storagesync.SyncGroup("syncGroup", {
///     resourceGroupName: "SampleResourceGroup_1",
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
/// sync_group = azure_native.storagesync.SyncGroup("syncGroup",
///     resource_group_name="SampleResourceGroup_1",
///     storage_sync_service_name="SampleStorageSyncService_1",
///     sync_group_name="SampleSyncGroup_1")
///
/// ```
///
/// ```yaml
/// resources:
///   syncGroup:
///     type: azure-native:storagesync:SyncGroup
///     properties:
///       resourceGroupName: SampleResourceGroup_1
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
/// $ pulumi import azure-native:storagesync:SyncGroup SampleSyncGroup_1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.StorageSync/storageSyncServices/{storageSyncServiceName}/syncGroups/{syncGroupName}
/// ```
class SyncGroup extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Sync group status
  late final pulumi.Output<String> syncGroupStatus;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;
  /// Unique Id
  late final pulumi.Output<String> uniqueId;

  /// Creates a new [SyncGroup].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SyncGroup]. {@macro pulumi_storagesync_sync_group_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SyncGroup(
    String name, {
    SyncGroupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:storagesync:SyncGroup',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String>('name');
    syncGroupStatus = registerOutput<String>('syncGroupStatus');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
    uniqueId = registerOutput<String>('uniqueId');
  }
}
