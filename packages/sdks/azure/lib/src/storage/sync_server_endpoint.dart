import 'package:pulumi/pulumi.dart' as pulumi;
import 'sync_server_endpoint_args.dart';
import 'sync_server_endpoint_state.dart';

/// Manages a Storage Sync Server Endpoint.
///
/// > **Note:** The parent `azure.storage.SyncGroup` must have an `azure.storage.SyncCloudEndpoint` available before an `azure.storage.SyncServerEndpoint` resource can be created.
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
///     name: "example-storage-sync",
///     resourceGroupName: example.name,
///     location: example.location,
/// });
/// const exampleSyncGroup = new azure.storage.SyncGroup("example", {
///     name: "example-storage-sync-group",
///     storageSyncId: exampleSync.id,
/// });
/// const exampleAccount = new azure.storage.Account("example", {
///     name: "example-storage-account",
///     resourceGroupName: example.name,
///     location: example.location,
///     accountTier: "Standard",
///     accountReplicationType: "LRS",
/// });
/// const exampleShare = new azure.storage.Share("example", {
///     name: "example-storage-share",
///     storageAccountName: exampleAccount.name,
///     quota: 1,
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
/// const exampleSyncServerEndpoint = new azure.storage.SyncServerEndpoint("example", {
///     name: "example-storage-sync-server-endpoint",
///     storageSyncGroupId: exampleSyncGroup.id,
///     registeredServerId: exampleSync.registeredServers[0],
/// }, {
///     dependsOn: [exampleSyncCloudEndpoint],
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
///     name="example-storage-sync",
///     resource_group_name=example.name,
///     location=example.location)
/// example_sync_group = azure.storage.SyncGroup("example",
///     name="example-storage-sync-group",
///     storage_sync_id=example_sync.id)
/// example_account = azure.storage.Account("example",
///     name="example-storage-account",
///     resource_group_name=example.name,
///     location=example.location,
///     account_tier="Standard",
///     account_replication_type="LRS")
/// example_share = azure.storage.Share("example",
///     name="example-storage-share",
///     storage_account_name=example_account.name,
///     quota=1,
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
/// example_sync_server_endpoint = azure.storage.SyncServerEndpoint("example",
///     name="example-storage-sync-server-endpoint",
///     storage_sync_group_id=example_sync_group.id,
///     registered_server_id=example_sync.registered_servers[0],
///     opts = pulumi.ResourceOptions(depends_on=[example_sync_cloud_endpoint]))
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
///         Name = "example-storage-sync",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///     });
///
///     var exampleSyncGroup = new Azure.Storage.SyncGroup("example", new()
///     {
///         Name = "example-storage-sync-group",
///         StorageSyncId = exampleSync.Id,
///     });
///
///     var exampleAccount = new Azure.Storage.Account("example", new()
///     {
///         Name = "example-storage-account",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         AccountTier = "Standard",
///         AccountReplicationType = "LRS",
///     });
///
///     var exampleShare = new Azure.Storage.Share("example", new()
///     {
///         Name = "example-storage-share",
///         StorageAccountName = exampleAccount.Name,
///         Quota = 1,
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
///     var exampleSyncServerEndpoint = new Azure.Storage.SyncServerEndpoint("example", new()
///     {
///         Name = "example-storage-sync-server-endpoint",
///         StorageSyncGroupId = exampleSyncGroup.Id,
///         RegisteredServerId = exampleSync.RegisteredServers.Apply(registeredServers => registeredServers[0]),
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             exampleSyncCloudEndpoint,
///         },
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
/// 			Name:              pulumi.String("example-storage-sync"),
/// 			ResourceGroupName: example.Name,
/// 			Location:          example.Location,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleSyncGroup, err := storage.NewSyncGroup(ctx, "example", &storage.SyncGroupArgs{
/// 			Name:          pulumi.String("example-storage-sync-group"),
/// 			StorageSyncId: exampleSync.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleAccount, err := storage.NewAccount(ctx, "example", &storage.AccountArgs{
/// 			Name:                   pulumi.String("example-storage-account"),
/// 			ResourceGroupName:      example.Name,
/// 			Location:               example.Location,
/// 			AccountTier:            pulumi.String("Standard"),
/// 			AccountReplicationType: pulumi.String("LRS"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleShare, err := storage.NewShare(ctx, "example", &storage.ShareArgs{
/// 			Name:               pulumi.String("example-storage-share"),
/// 			StorageAccountName: exampleAccount.Name,
/// 			Quota:              pulumi.Int(1),
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
/// 		exampleSyncCloudEndpoint, err := storage.NewSyncCloudEndpoint(ctx, "example", &storage.SyncCloudEndpointArgs{
/// 			Name:               pulumi.String("example-ss-ce"),
/// 			StorageSyncGroupId: exampleSyncGroup.ID(),
/// 			FileShareName:      exampleShare.Name,
/// 			StorageAccountId:   exampleAccount.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = storage.NewSyncServerEndpoint(ctx, "example", &storage.SyncServerEndpointArgs{
/// 			Name:               pulumi.String("example-storage-sync-server-endpoint"),
/// 			StorageSyncGroupId: exampleSyncGroup.ID(),
/// 			RegisteredServerId: exampleSync.RegisteredServers.ApplyT(func(registeredServers []string) (string, error) {
/// 				return registeredServers[0], nil
/// 			}).(pulumi.StringOutput),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			exampleSyncCloudEndpoint,
/// 		}))
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
/// import com.pulumi.azure.storage.SyncServerEndpoint;
/// import com.pulumi.azure.storage.SyncServerEndpointArgs;
/// import com.pulumi.resources.CustomResourceOptions;
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
///             .name("example-storage-sync")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .build());
///
///         var exampleSyncGroup = new SyncGroup("exampleSyncGroup", SyncGroupArgs.builder()
///             .name("example-storage-sync-group")
///             .storageSyncId(exampleSync.id())
///             .build());
///
///         var exampleAccount = new Account("exampleAccount", AccountArgs.builder()
///             .name("example-storage-account")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .accountTier("Standard")
///             .accountReplicationType("LRS")
///             .build());
///
///         var exampleShare = new Share("exampleShare", ShareArgs.builder()
///             .name("example-storage-share")
///             .storageAccountName(exampleAccount.name())
///             .quota(1)
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
///         var exampleSyncServerEndpoint = new SyncServerEndpoint("exampleSyncServerEndpoint", SyncServerEndpointArgs.builder()
///             .name("example-storage-sync-server-endpoint")
///             .storageSyncGroupId(exampleSyncGroup.id())
///             .registeredServerId(exampleSync.registeredServers().applyValue(_registeredServers -> _registeredServers[0]))
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(exampleSyncCloudEndpoint)
///                 .build());
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
///       name: example-storage-sync
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///   exampleSyncGroup:
///     type: azure:storage:SyncGroup
///     name: example
///     properties:
///       name: example-storage-sync-group
///       storageSyncId: ${exampleSync.id}
///   exampleAccount:
///     type: azure:storage:Account
///     name: example
///     properties:
///       name: example-storage-account
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       accountTier: Standard
///       accountReplicationType: LRS
///   exampleShare:
///     type: azure:storage:Share
///     name: example
///     properties:
///       name: example-storage-share
///       storageAccountName: ${exampleAccount.name}
///       quota: 1
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
///   exampleSyncServerEndpoint:
///     type: azure:storage:SyncServerEndpoint
///     name: example
///     properties:
///       name: example-storage-sync-server-endpoint
///       storageSyncGroupId: ${exampleSyncGroup.id}
///       registeredServerId: ${exampleSync.registeredServers[0]}
///     options:
///       dependsOn:
///         - ${exampleSyncCloudEndpoint}
/// ```
///
///
/// ## API Providers
///
/// <!-- This section is generated, changes will be overwritten -->
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.StorageSync` - 2020-03-01
///
/// ## Import
///
/// Storage Sync Server Endpoints can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:storage/syncServerEndpoint:SyncServerEndpoint example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.StorageSync/storageSyncServices/sync1/syncGroups/syncGroup1/serverEndpoints/endpoint1
/// ```
class SyncServerEndpoint extends pulumi.CustomResource {
  /// Is Cloud Tiering Enabled? Defaults to `false`.
  late final pulumi.Output<bool?> cloudTieringEnabled;
  /// Specifies how the server initially downloads the Azure file share data. Valid Values includes `NamespaceThenModifiedFiles`, `NamespaceOnly`, and `AvoidTieredFiles`. Defaults to `NamespaceThenModifiedFiles`. Changing this forces a new resource to be created.
  late final pulumi.Output<String?> initialDownloadPolicy;
  /// Specifies how to handle the local cache. Valid Values include `UpdateLocallyCachedFiles` and `DownloadNewAndModifiedFiles`. Defaults to `UpdateLocallyCachedFiles`.
  late final pulumi.Output<String?> localCacheMode;
  /// The name which should be used for this Storage Sync. Changing this forces a new Storage Sync Server Endpoint to be created.
  late final pulumi.Output<String> name;
  /// The ID of the Registered Server that will be associate with the Storage Sync Server Endpoint. Changing this forces a new Storage Sync Server Endpoint to be created.
  ///
  /// > **Note:** The target server must already be registered with the parent `azure.storage.Sync` prior to creating this endpoint. For more information on registering a server see the [Microsoft documentation](https://learn.microsoft.com/azure/storage/file-sync/file-sync-server-registration)
  late final pulumi.Output<String> registeredServerId;
  /// The path on the Windows Server to be synced to the Azure file share. Changing this forces a new Storage Sync Server Endpoint to be created.
  late final pulumi.Output<String> serverLocalPath;
  /// The ID of the Storage Sync Group where the Storage Sync Server Endpoint should exist. Changing this forces a new Storage Sync Server Endpoint to be created.
  late final pulumi.Output<String> storageSyncGroupId;
  /// Files older than the specified age will be tiered to the cloud.
  late final pulumi.Output<int?> tierFilesOlderThanDays;
  /// What percentage of free space on the volume should be preserved? Defaults to `20`.
  late final pulumi.Output<int?> volumeFreeSpacePercent;

  /// Creates a new [SyncServerEndpoint].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SyncServerEndpoint]. {@macro pulumi_storage_sync_server_endpoint_sync_server_endpoint_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SyncServerEndpoint(
    String name, {
    SyncServerEndpointArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:storage/syncServerEndpoint:SyncServerEndpoint',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.cloudTieringEnabled = registerOutput<bool?>('cloudTieringEnabled');
    this.initialDownloadPolicy = registerOutput<String?>('initialDownloadPolicy');
    this.localCacheMode = registerOutput<String?>('localCacheMode');
    this.name = registerOutput<String>('name');
    this.registeredServerId = registerOutput<String>('registeredServerId');
    this.serverLocalPath = registerOutput<String>('serverLocalPath');
    this.storageSyncGroupId = registerOutput<String>('storageSyncGroupId');
    this.tierFilesOlderThanDays = registerOutput<int?>('tierFilesOlderThanDays');
    this.volumeFreeSpacePercent = registerOutput<int?>('volumeFreeSpacePercent');
  }

  /// Gets an existing [SyncServerEndpoint] resource's state with the given [name] and [id].
  static SyncServerEndpoint get(
    String name,
    pulumi.Input<String> id, {
    SyncServerEndpointState? state,
  }) {
    return SyncServerEndpoint._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  SyncServerEndpoint._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:storage/syncServerEndpoint:SyncServerEndpoint',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.cloudTieringEnabled = registerOutput<bool?>('cloudTieringEnabled');
    this.initialDownloadPolicy = registerOutput<String?>('initialDownloadPolicy');
    this.localCacheMode = registerOutput<String?>('localCacheMode');
    this.name = registerOutput<String>('name');
    this.registeredServerId = registerOutput<String>('registeredServerId');
    this.serverLocalPath = registerOutput<String>('serverLocalPath');
    this.storageSyncGroupId = registerOutput<String>('storageSyncGroupId');
    this.tierFilesOlderThanDays = registerOutput<int?>('tierFilesOlderThanDays');
    this.volumeFreeSpacePercent = registerOutput<int?>('volumeFreeSpacePercent');
  }
}
