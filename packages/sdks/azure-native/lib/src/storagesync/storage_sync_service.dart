import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_service_identity_response.dart';
import 'storage_sync_service_args.dart';
import 'system_data_response.dart';

/// Storage Sync Service object.
///
/// Uses Azure REST API version 2022-09-01. In version 2.x of the Azure Native provider, it used API version 2022-06-01.
///
/// Other available API versions: 2022-06-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native storagesync [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### StorageSyncServices_Create
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var storageSyncService = new AzureNative.StorageSync.StorageSyncService("storageSyncService", new()
///     {
///         Identity = new AzureNative.StorageSync.Inputs.ManagedServiceIdentityArgs
///         {
///             Type = "SystemAssigned, UserAssigned",
///         },
///         IncomingTrafficPolicy = AzureNative.StorageSync.IncomingTrafficPolicy.AllowAllTraffic,
///         Location = "WestUS",
///         ResourceGroupName = "SampleResourceGroup_1",
///         StorageSyncServiceName = "SampleStorageSyncService_1",
///         Tags = null,
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
/// 		_, err := storagesync.NewStorageSyncService(ctx, "storageSyncService", &storagesync.StorageSyncServiceArgs{
/// 			Identity: &storagesync.ManagedServiceIdentityArgs{
/// 				Type: pulumi.String("SystemAssigned, UserAssigned"),
/// 			},
/// 			IncomingTrafficPolicy:  pulumi.String(storagesync.IncomingTrafficPolicyAllowAllTraffic),
/// 			Location:               pulumi.String("WestUS"),
/// 			ResourceGroupName:      pulumi.String("SampleResourceGroup_1"),
/// 			StorageSyncServiceName: pulumi.String("SampleStorageSyncService_1"),
/// 			Tags:                   pulumi.StringMap{},
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
/// import com.pulumi.azurenative.storagesync.StorageSyncService;
/// import com.pulumi.azurenative.storagesync.StorageSyncServiceArgs;
/// import com.pulumi.azurenative.storagesync.inputs.ManagedServiceIdentityArgs;
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
///         var storageSyncService = new StorageSyncService("storageSyncService", StorageSyncServiceArgs.builder()
///             .identity(ManagedServiceIdentityArgs.builder()
///                 .type("SystemAssigned, UserAssigned")
///                 .build())
///             .incomingTrafficPolicy("AllowAllTraffic")
///             .location("WestUS")
///             .resourceGroupName("SampleResourceGroup_1")
///             .storageSyncServiceName("SampleStorageSyncService_1")
///             .tags(Map.ofEntries(
///             ))
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
/// const storageSyncService = new azure_native.storagesync.StorageSyncService("storageSyncService", {
///     identity: {
///         type: "SystemAssigned, UserAssigned",
///     },
///     incomingTrafficPolicy: azure_native.storagesync.IncomingTrafficPolicy.AllowAllTraffic,
///     location: "WestUS",
///     resourceGroupName: "SampleResourceGroup_1",
///     storageSyncServiceName: "SampleStorageSyncService_1",
///     tags: {},
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// storage_sync_service = azure_native.storagesync.StorageSyncService("storageSyncService",
///     identity={
///         "type": "SystemAssigned, UserAssigned",
///     },
///     incoming_traffic_policy=azure_native.storagesync.IncomingTrafficPolicy.ALLOW_ALL_TRAFFIC,
///     location="WestUS",
///     resource_group_name="SampleResourceGroup_1",
///     storage_sync_service_name="SampleStorageSyncService_1",
///     tags={})
///
/// ```
///
/// ```yaml
/// resources:
///   storageSyncService:
///     type: azure-native:storagesync:StorageSyncService
///     properties:
///       identity:
///         type: SystemAssigned, UserAssigned
///       incomingTrafficPolicy: AllowAllTraffic
///       location: WestUS
///       resourceGroupName: SampleResourceGroup_1
///       storageSyncServiceName: SampleStorageSyncService_1
///       tags: {}
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
/// $ pulumi import azure-native:storagesync:StorageSyncService SampleStorageSyncService_1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.StorageSync/storageSyncServices/{storageSyncServiceName}
/// ```
class StorageSyncService extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The managed service identities assigned to this resource.
  late final pulumi.Output<ManagedServiceIdentityResponse?> identity;
  /// Incoming Traffic Policy
  late final pulumi.Output<String?> incomingTrafficPolicy;
  /// Resource Last Operation Name
  late final pulumi.Output<String> lastOperationName;
  /// StorageSyncService lastWorkflowId
  late final pulumi.Output<String> lastWorkflowId;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// List of private endpoint connection associated with the specified storage sync service
  late final pulumi.Output<List<Map<String, dynamic>>> privateEndpointConnections;
  /// StorageSyncService Provisioning State
  late final pulumi.Output<String> provisioningState;
  /// Storage Sync service status.
  late final pulumi.Output<int> storageSyncServiceStatus;
  /// Storage Sync service Uid
  late final pulumi.Output<String> storageSyncServiceUid;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;
  /// Use Identity authorization when customer have finished setup RBAC permissions.
  late final pulumi.Output<bool> useIdentity;

  /// Creates a new [StorageSyncService].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [StorageSyncService]. {@macro pulumi_storagesync_storage_sync_service_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  StorageSyncService(
    String name, {
    StorageSyncServiceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:storagesync:StorageSyncService',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    identity = registerOutput<ManagedServiceIdentityResponse?>('identity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ManagedServiceIdentityResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    incomingTrafficPolicy = registerOutput<String?>('incomingTrafficPolicy');
    lastOperationName = registerOutput<String>('lastOperationName');
    lastWorkflowId = registerOutput<String>('lastWorkflowId');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    privateEndpointConnections = registerOutput<List<Map<String, dynamic>>>('privateEndpointConnections');
    provisioningState = registerOutput<String>('provisioningState');
    storageSyncServiceStatus = registerOutput<int>('storageSyncServiceStatus');
    storageSyncServiceUid = registerOutput<String>('storageSyncServiceUid');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
    useIdentity = registerOutput<bool>('useIdentity');
  }
}
