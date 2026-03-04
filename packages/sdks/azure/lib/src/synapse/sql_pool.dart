import 'package:pulumi/pulumi.dart' as pulumi;
import 'sql_pool_args.dart';
import 'sql_pool_restore.dart';
import 'sql_pool_state.dart';

/// Manages a Synapse SQL Pool.
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
/// const exampleAccount = new azure.storage.Account("example", {
///     name: "examplestorageacc",
///     resourceGroupName: example.name,
///     location: example.location,
///     accountTier: "Standard",
///     accountReplicationType: "LRS",
///     accountKind: "BlobStorage",
/// });
/// const exampleDataLakeGen2Filesystem = new azure.storage.DataLakeGen2Filesystem("example", {
///     name: "example",
///     storageAccountId: exampleAccount.id,
/// });
/// const exampleWorkspace = new azure.synapse.Workspace("example", {
///     name: "example",
///     resourceGroupName: example.name,
///     location: example.location,
///     storageDataLakeGen2FilesystemId: exampleDataLakeGen2Filesystem.id,
///     sqlAdministratorLogin: "sqladminuser",
///     sqlAdministratorLoginPassword: "H@Sh1CoR3!",
///     identity: {
///         type: "SystemAssigned",
///     },
/// });
/// const exampleSqlPool = new azure.synapse.SqlPool("example", {
///     name: "examplesqlpool",
///     synapseWorkspaceId: exampleWorkspace.id,
///     skuName: "DW100c",
///     createMode: "Default",
///     storageAccountType: "GRS",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// example_account = azure.storage.Account("example",
///     name="examplestorageacc",
///     resource_group_name=example.name,
///     location=example.location,
///     account_tier="Standard",
///     account_replication_type="LRS",
///     account_kind="BlobStorage")
/// example_data_lake_gen2_filesystem = azure.storage.DataLakeGen2Filesystem("example",
///     name="example",
///     storage_account_id=example_account.id)
/// example_workspace = azure.synapse.Workspace("example",
///     name="example",
///     resource_group_name=example.name,
///     location=example.location,
///     storage_data_lake_gen2_filesystem_id=example_data_lake_gen2_filesystem.id,
///     sql_administrator_login="sqladminuser",
///     sql_administrator_login_password="H@Sh1CoR3!",
///     identity={
///         "type": "SystemAssigned",
///     })
/// example_sql_pool = azure.synapse.SqlPool("example",
///     name="examplesqlpool",
///     synapse_workspace_id=example_workspace.id,
///     sku_name="DW100c",
///     create_mode="Default",
///     storage_account_type="GRS")
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
///     var exampleAccount = new Azure.Storage.Account("example", new()
///     {
///         Name = "examplestorageacc",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         AccountTier = "Standard",
///         AccountReplicationType = "LRS",
///         AccountKind = "BlobStorage",
///     });
///
///     var exampleDataLakeGen2Filesystem = new Azure.Storage.DataLakeGen2Filesystem("example", new()
///     {
///         Name = "example",
///         StorageAccountId = exampleAccount.Id,
///     });
///
///     var exampleWorkspace = new Azure.Synapse.Workspace("example", new()
///     {
///         Name = "example",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         StorageDataLakeGen2FilesystemId = exampleDataLakeGen2Filesystem.Id,
///         SqlAdministratorLogin = "sqladminuser",
///         SqlAdministratorLoginPassword = "H@Sh1CoR3!",
///         Identity = new Azure.Synapse.Inputs.WorkspaceIdentityArgs
///         {
///             Type = "SystemAssigned",
///         },
///     });
///
///     var exampleSqlPool = new Azure.Synapse.SqlPool("example", new()
///     {
///         Name = "examplesqlpool",
///         SynapseWorkspaceId = exampleWorkspace.Id,
///         SkuName = "DW100c",
///         CreateMode = "Default",
///         StorageAccountType = "GRS",
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
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/synapse"
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
/// 		exampleAccount, err := storage.NewAccount(ctx, "example", &storage.AccountArgs{
/// 			Name:                   pulumi.String("examplestorageacc"),
/// 			ResourceGroupName:      example.Name,
/// 			Location:               example.Location,
/// 			AccountTier:            pulumi.String("Standard"),
/// 			AccountReplicationType: pulumi.String("LRS"),
/// 			AccountKind:            pulumi.String("BlobStorage"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleDataLakeGen2Filesystem, err := storage.NewDataLakeGen2Filesystem(ctx, "example", &storage.DataLakeGen2FilesystemArgs{
/// 			Name:             pulumi.String("example"),
/// 			StorageAccountId: exampleAccount.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleWorkspace, err := synapse.NewWorkspace(ctx, "example", &synapse.WorkspaceArgs{
/// 			Name:                            pulumi.String("example"),
/// 			ResourceGroupName:               example.Name,
/// 			Location:                        example.Location,
/// 			StorageDataLakeGen2FilesystemId: exampleDataLakeGen2Filesystem.ID(),
/// 			SqlAdministratorLogin:           pulumi.String("sqladminuser"),
/// 			SqlAdministratorLoginPassword:   pulumi.String("H@Sh1CoR3!"),
/// 			Identity: &synapse.WorkspaceIdentityArgs{
/// 				Type: pulumi.String("SystemAssigned"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = synapse.NewSqlPool(ctx, "example", &synapse.SqlPoolArgs{
/// 			Name:               pulumi.String("examplesqlpool"),
/// 			SynapseWorkspaceId: exampleWorkspace.ID(),
/// 			SkuName:            pulumi.String("DW100c"),
/// 			CreateMode:         pulumi.String("Default"),
/// 			StorageAccountType: pulumi.String("GRS"),
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
/// import com.pulumi.azure.storage.Account;
/// import com.pulumi.azure.storage.AccountArgs;
/// import com.pulumi.azure.storage.DataLakeGen2Filesystem;
/// import com.pulumi.azure.storage.DataLakeGen2FilesystemArgs;
/// import com.pulumi.azure.synapse.Workspace;
/// import com.pulumi.azure.synapse.WorkspaceArgs;
/// import com.pulumi.azure.synapse.inputs.WorkspaceIdentityArgs;
/// import com.pulumi.azure.synapse.SqlPool;
/// import com.pulumi.azure.synapse.SqlPoolArgs;
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
///         var exampleAccount = new Account("exampleAccount", AccountArgs.builder()
///             .name("examplestorageacc")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .accountTier("Standard")
///             .accountReplicationType("LRS")
///             .accountKind("BlobStorage")
///             .build());
///
///         var exampleDataLakeGen2Filesystem = new DataLakeGen2Filesystem("exampleDataLakeGen2Filesystem", DataLakeGen2FilesystemArgs.builder()
///             .name("example")
///             .storageAccountId(exampleAccount.id())
///             .build());
///
///         var exampleWorkspace = new Workspace("exampleWorkspace", WorkspaceArgs.builder()
///             .name("example")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .storageDataLakeGen2FilesystemId(exampleDataLakeGen2Filesystem.id())
///             .sqlAdministratorLogin("sqladminuser")
///             .sqlAdministratorLoginPassword("H@Sh1CoR3!")
///             .identity(WorkspaceIdentityArgs.builder()
///                 .type("SystemAssigned")
///                 .build())
///             .build());
///
///         var exampleSqlPool = new SqlPool("exampleSqlPool", SqlPoolArgs.builder()
///             .name("examplesqlpool")
///             .synapseWorkspaceId(exampleWorkspace.id())
///             .skuName("DW100c")
///             .createMode("Default")
///             .storageAccountType("GRS")
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
///   exampleAccount:
///     type: azure:storage:Account
///     name: example
///     properties:
///       name: examplestorageacc
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       accountTier: Standard
///       accountReplicationType: LRS
///       accountKind: BlobStorage
///   exampleDataLakeGen2Filesystem:
///     type: azure:storage:DataLakeGen2Filesystem
///     name: example
///     properties:
///       name: example
///       storageAccountId: ${exampleAccount.id}
///   exampleWorkspace:
///     type: azure:synapse:Workspace
///     name: example
///     properties:
///       name: example
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       storageDataLakeGen2FilesystemId: ${exampleDataLakeGen2Filesystem.id}
///       sqlAdministratorLogin: sqladminuser
///       sqlAdministratorLoginPassword: H@Sh1CoR3!
///       identity:
///         type: SystemAssigned
///   exampleSqlPool:
///     type: azure:synapse:SqlPool
///     name: example
///     properties:
///       name: examplesqlpool
///       synapseWorkspaceId: ${exampleWorkspace.id}
///       skuName: DW100c
///       createMode: Default
///       storageAccountType: GRS
/// ```
///
///
/// ## Import
///
/// Synapse SQL Pool can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:synapse/sqlPool:SqlPool example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.Synapse/workspaces/workspace1/sqlPools/sqlPool1
/// ```
class SqlPool extends pulumi.CustomResource {
  /// The name of the collation to use with this pool, only applicable when `create_mode` is set to `Default`. Azure default is `SQL_LATIN1_GENERAL_CP1_CI_AS`. Changing this forces a new Synapse SQL Pool to be created.
  late final pulumi.Output<String> collation;

  /// Specifies how to create the SQL Pool. Valid values are: `Default`, `Recovery` or `PointInTimeRestore`. Must be `Default` to create a new database. Defaults to `Default`. Changing this forces a new Synapse SQL Pool to be created.
  late final pulumi.Output<String?> createMode;

  /// Is transparent data encryption enabled?
  late final pulumi.Output<bool?> dataEncrypted;

  /// Is geo-backup policy enabled? Defaults to `true`.
  late final pulumi.Output<bool?> geoBackupPolicyEnabled;

  /// The name which should be used for this Synapse SQL Pool. Changing this forces a new Synapse SQL Pool to be created.
  late final pulumi.Output<String> name;

  /// The ID of the Synapse SQL Pool or SQL Database which is to back up, only applicable when `create_mode` is set to `Recovery`. Changing this forces a new Synapse SQL Pool to be created.
  late final pulumi.Output<String?> recoveryDatabaseId;

  /// A `restore` block as defined below. Only applicable when `create_mode` is set to `PointInTimeRestore`. Changing this forces a new Synapse SQL Pool to be created.
  late final pulumi.Output<SqlPoolRestore?> restore;

  /// Specifies the SKU Name for this Synapse SQL Pool. Possible values are `DW100c`, `DW200c`, `DW300c`, `DW400c`, `DW500c`, `DW1000c`, `DW1500c`, `DW2000c`, `DW2500c`, `DW3000c`, `DW5000c`, `DW6000c`, `DW7500c`, `DW10000c`, `DW15000c` or `DW30000c`.
  late final pulumi.Output<String> skuName;

  /// The storage account type that will be used to store backups for this Synapse SQL Pool. Possible values are `LRS` or `GRS`. Changing this forces a new Synapse SQL Pool to be created.
  late final pulumi.Output<String> storageAccountType;

  /// The ID of Synapse Workspace within which this SQL Pool should be created. Changing this forces a new Synapse SQL Pool to be created.
  late final pulumi.Output<String> synapseWorkspaceId;

  /// A mapping of tags which should be assigned to the Synapse SQL Pool.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Creates a new [SqlPool].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SqlPool]. {@macro pulumi_synapse_sql_pool_sql_pool_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SqlPool(
    String name, {
    SqlPoolArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:synapse/sqlPool:SqlPool',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    collation = registerOutput<String>('collation');
    createMode = registerOutput<String?>('createMode');
    dataEncrypted = registerOutput<bool?>('dataEncrypted');
    geoBackupPolicyEnabled = registerOutput<bool?>('geoBackupPolicyEnabled');
    this.name = registerOutput<String>('name');
    recoveryDatabaseId = registerOutput<String?>('recoveryDatabaseId');
    restore = registerOutput<SqlPoolRestore?>('restore');
    skuName = registerOutput<String>('skuName');
    storageAccountType = registerOutput<String>('storageAccountType');
    synapseWorkspaceId = registerOutput<String>('synapseWorkspaceId');
    tags = registerOutput<Map<String, String>?>('tags');
  }

  /// Gets an existing [SqlPool] resource's state with the given [name] and [id].
  static SqlPool get(
    String name,
    pulumi.Input<String> id, {
    SqlPoolState? state,
  }) {
    return SqlPool._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  SqlPool._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:synapse/sqlPool:SqlPool',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    collation = registerOutput<String>('collation');
    createMode = registerOutput<String?>('createMode');
    dataEncrypted = registerOutput<bool?>('dataEncrypted');
    geoBackupPolicyEnabled = registerOutput<bool?>('geoBackupPolicyEnabled');
    this.name = registerOutput<String>('name');
    recoveryDatabaseId = registerOutput<String?>('recoveryDatabaseId');
    restore = registerOutput<SqlPoolRestore?>('restore');
    skuName = registerOutput<String>('skuName');
    storageAccountType = registerOutput<String>('storageAccountType');
    synapseWorkspaceId = registerOutput<String>('synapseWorkspaceId');
    tags = registerOutput<Map<String, String>?>('tags');
  }
}
