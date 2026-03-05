import 'package:pulumi/pulumi.dart' as pulumi;
import 'sync_cloud_endpoint_args.dart';
import 'sync_cloud_endpoint_state.dart';

/// Manages a Storage Sync Cloud Endpoint.
///
/// &gt; **Note:** Please ensure Azure File Sync has access to the storage account in your subscription, which indicates that `Microsoft.StorageSync` is assigned role `Reader and Data Access` ( refer to details [here](https://docs.microsoft.com/azure/storage/files/storage-sync-files-troubleshoot?tabs=portal1%2Cazure-portal#common-troubleshooting-steps)).
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "example-resources",
///     location: "West Europe",
/// });
/// const exampleSync = new azure.storage.Sync("example", {
///     name: "example-ss",
///     resourceGroupName: example.name,
///     location: example.location,
/// });
/// const exampleSyncGroup = new azure.storage.SyncGroup("example", {
///     name: "example-ss-group",
///     storageSyncId: exampleSync.id,
/// });
/// const exampleAccount = new azure.storage.Account("example", {
///     name: "example",
///     resourceGroupName: example.name,
///     location: example.location,
///     accountTier: "Standard",
///     accountReplicationType: "LRS",
/// });
/// const exampleShare = new azure.storage.Share("example", {
///     name: "example-share",
///     storageAccountName: exampleAccount.name,
///     quota: 50,
///     acls: [{
///         id: "GhostedRecall",
///         accessPolicies: [{
///             permissions: "r",
///         }],
///     }],
/// });
/// const exampleSyncCloudEndpoint = new azure.storage.SyncCloudEndpoint("example", {
///     name: "example-ss-ce",
///     storageSyncGroupId: exampleSyncGroup.id,
///     fileShareName: exampleShare.name,
///     storageAccountId: exampleAccount.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// example_sync = azure.storage.Sync("example",
///     name="example-ss",
///     resource_group_name=example.name,
///     location=example.location)
/// example_sync_group = azure.storage.SyncGroup("example",
///     name="example-ss-group",
///     storage_sync_id=example_sync.id)
/// example_account = azure.storage.Account("example",
///     name="example",
///     resource_group_name=example.name,
///     location=example.location,
///     account_tier="Standard",
///     account_replication_type="LRS")
/// example_share = azure.storage.Share("example",
///     name="example-share",
///     storage_account_name=example_account.name,
///     quota=50,
///     acls=[{
///         "id": "GhostedRecall",
///         "access_policies": [{
///             "permissions": "r",
///         }],
///     }])
/// example_sync_cloud_endpoint = azure.storage.SyncCloudEndpoint("example",
///     name="example-ss-ce",
///     storage_sync_group_id=example_sync_group.id,
///     file_share_name=example_share.name,
///     storage_account_id=example_account.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Azure.Core.ResourceGroup("example", new()
///     {
///         Name = "example-resources",
///         Location = "West Europe",
///     });
///
///     var exampleSync = new Azure.Storage.Sync("example", new()
///     {
///         Name = "example-ss",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///     });
///
///     var exampleSyncGroup = new Azure.Storage.SyncGroup("example", new()
///     {
///         Name = "example-ss-group",
///         StorageSyncId = exampleSync.Id,
///     });
///
///     var exampleAccount = new Azure.Storage.Account("example", new()
///     {
///         Name = "example",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         AccountTier = "Standard",
///         AccountReplicationType = "LRS",
///     });
///
///     var exampleShare = new Azure.Storage.Share("example", new()
///     {
///         Name = "example-share",
///         StorageAccountName = exampleAccount.Name,
///         Quota = 50,
///         Acls = new[]
///         {
///             new Azure.Storage.Inputs.ShareAclArgs
///             {
///                 Id = "GhostedRecall",
///                 AccessPolicies = new[]
///                 {
///                     new Azure.Storage.Inputs.ShareAclAccessPolicyArgs
///                     {
///                         Permissions = "r",
///                     },
///                 },
///             },
///         },
///     });
///
///     var exampleSyncCloudEndpoint = new Azure.Storage.SyncCloudEndpoint("example", new()
///     {
///         Name = "example-ss-ce",
///         StorageSyncGroupId = exampleSyncGroup.Id,
///         FileShareName = exampleShare.Name,
///         StorageAccountId = exampleAccount.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/storage"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("example-resources"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleSync, err := storage.NewSync(ctx, "example", &storage.SyncArgs{
/// 			Name:              pulumi.String("example-ss"),
/// 			ResourceGroupName: example.Name,
/// 			Location:          example.Location,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleSyncGroup, err := storage.NewSyncGroup(ctx, "example", &storage.SyncGroupArgs{
/// 			Name:          pulumi.String("example-ss-group"),
/// 			StorageSyncId: exampleSync.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleAccount, err := storage.NewAccount(ctx, "example", &storage.AccountArgs{
/// 			Name:                   pulumi.String("example"),
/// 			ResourceGroupName:      example.Name,
/// 			Location:               example.Location,
/// 			AccountTier:            pulumi.String("Standard"),
/// 			AccountReplicationType: pulumi.String("LRS"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleShare, err := storage.NewShare(ctx, "example", &storage.ShareArgs{
/// 			Name:               pulumi.String("example-share"),
/// 			StorageAccountName: exampleAccount.Name,
/// 			Quota:              pulumi.Int(50),
/// 			Acls: storage.ShareAclArray{
/// 				&storage.ShareAclArgs{
/// 					Id: pulumi.String("GhostedRecall"),
/// 					AccessPolicies: storage.ShareAclAccessPolicyArray{
/// 						&storage.ShareAclAccessPolicyArgs{
/// 							Permissions: pulumi.String("r"),
/// 						},
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = storage.NewSyncCloudEndpoint(ctx, "example", &storage.SyncCloudEndpointArgs{
/// 			Name:               pulumi.String("example-ss-ce"),
/// 			StorageSyncGroupId: exampleSyncGroup.ID(),
/// 			FileShareName:      exampleShare.Name,
/// 			StorageAccountId:   exampleAccount.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azure.core.ResourceGroup;
/// import com.pulumi.azure.core.ResourceGroupArgs;
/// import com.pulumi.azure.storage.Sync;
/// import com.pulumi.azure.storage.SyncArgs;
/// import com.pulumi.azure.storage.SyncGroup;
/// import com.pulumi.azure.storage.SyncGroupArgs;
/// import com.pulumi.azure.storage.Account;
/// import com.pulumi.azure.storage.AccountArgs;
/// import com.pulumi.azure.storage.Share;
/// import com.pulumi.azure.storage.ShareArgs;
/// import com.pulumi.azure.storage.inputs.ShareAclArgs;
/// import com.pulumi.azure.storage.SyncCloudEndpoint;
/// import com.pulumi.azure.storage.SyncCloudEndpointArgs;
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
///         var example = new ResourceGroup("example", ResourceGroupArgs.builder()
///             .name("example-resources")
///             .location("West Europe")
///             .build());
///
///         var exampleSync = new Sync("exampleSync", SyncArgs.builder()
///             .name("example-ss")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .build());
///
///         var exampleSyncGroup = new SyncGroup("exampleSyncGroup", SyncGroupArgs.builder()
///             .name("example-ss-group")
///             .storageSyncId(exampleSync.id())
///             .build());
///
///         var exampleAccount = new Account("exampleAccount", AccountArgs.builder()
///             .name("example")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .accountTier("Standard")
///             .accountReplicationType("LRS")
///             .build());
///
///         var exampleShare = new Share("exampleShare", ShareArgs.builder()
///             .name("example-share")
///             .storageAccountName(exampleAccount.name())
///             .quota(50)
///             .acls(ShareAclArgs.builder()
///                 .id("GhostedRecall")
///                 .accessPolicies(ShareAclAccessPolicyArgs.builder()
///                     .permissions("r")
///                     .build())
///                 .build())
///             .build());
///
///         var exampleSyncCloudEndpoint = new SyncCloudEndpoint("exampleSyncCloudEndpoint", SyncCloudEndpointArgs.builder()
///             .name("example-ss-ce")
///             .storageSyncGroupId(exampleSyncGroup.id())
///             .fileShareName(exampleShare.name())
///             .storageAccountId(exampleAccount.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: azure:core:ResourceGroup
///     properties:
///       name: example-resources
///       location: West Europe
///   exampleSync:
///     type: azure:storage:Sync
///     name: example
///     properties:
///       name: example-ss
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///   exampleSyncGroup:
///     type: azure:storage:SyncGroup
///     name: example
///     properties:
///       name: example-ss-group
///       storageSyncId: ${exampleSync.id}
///   exampleAccount:
///     type: azure:storage:Account
///     name: example
///     properties:
///       name: example
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       accountTier: Standard
///       accountReplicationType: LRS
///   exampleShare:
///     type: azure:storage:Share
///     name: example
///     properties:
///       name: example-share
///       storageAccountName: ${exampleAccount.name}
///       quota: 50
///       acls:
///         - id: GhostedRecall
///           accessPolicies:
///             - permissions: r
///   exampleSyncCloudEndpoint:
///     type: azure:storage:SyncCloudEndpoint
///     name: example
///     properties:
///       name: example-ss-ce
///       storageSyncGroupId: ${exampleSyncGroup.id}
///       fileShareName: ${exampleShare.name}
///       storageAccountId: ${exampleAccount.id}
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.StorageSync` - 2020-03-01
///
/// ## Import
///
/// Storage Sync Cloud Endpoints can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:storage/syncCloudEndpoint:SyncCloudEndpoint example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.StorageSync/storageSyncServices/sync1/syncGroups/syncgroup1/cloudEndpoints/cloudEndpoint1
/// ```
class SyncCloudEndpoint extends pulumi.CustomResource {
  /// The Storage Share name to be synchronized in this Storage Sync Cloud Endpoint. Changing this forces a new Storage Sync Cloud Endpoint to be created.
  late final pulumi.Output<String> fileShareName;
  /// The name which should be used for this Storage Sync Cloud Endpoint. Changing this forces a new Storage Sync Cloud Endpoint to be created.
  late final pulumi.Output<String> name;
  /// The ID of the Storage Account where the Storage Share exists. Changing this forces a new Storage Sync Cloud Endpoint to be created.
  late final pulumi.Output<String> storageAccountId;
  /// The Tenant ID of the Storage Account where the Storage Share exists. Changing this forces a new Storage Sync Cloud Endpoint to be created. Defaults to the current tenant id.
  late final pulumi.Output<String> storageAccountTenantId;
  /// The ID of the Storage Sync Group where this Cloud Endpoint should be created. Changing this forces a new Storage Sync Cloud Endpoint to be created.
  late final pulumi.Output<String> storageSyncGroupId;

  /// Creates a new [SyncCloudEndpoint].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SyncCloudEndpoint]. {@macro pulumi_storage_sync_cloud_endpoint_sync_cloud_endpoint_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SyncCloudEndpoint(
    String name, {
    SyncCloudEndpointArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:storage/syncCloudEndpoint:SyncCloudEndpoint',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    fileShareName = registerOutput<String>('fileShareName');
    this.name = registerOutput<String>('name');
    storageAccountId = registerOutput<String>('storageAccountId');
    storageAccountTenantId = registerOutput<String>('storageAccountTenantId');
    storageSyncGroupId = registerOutput<String>('storageSyncGroupId');
  }

  /// Gets an existing [SyncCloudEndpoint] resource's state with the given [name] and [id].
  static SyncCloudEndpoint get(
    String name,
    pulumi.Input<String> id, {
    SyncCloudEndpointState? state,
  }) {
    return SyncCloudEndpoint._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  SyncCloudEndpoint._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:storage/syncCloudEndpoint:SyncCloudEndpoint',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    fileShareName = registerOutput<String>('fileShareName');
    this.name = registerOutput<String>('name');
    storageAccountId = registerOutput<String>('storageAccountId');
    storageAccountTenantId = registerOutput<String>('storageAccountTenantId');
    storageSyncGroupId = registerOutput<String>('storageSyncGroupId');
  }
}
