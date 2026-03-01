import 'package:pulumi/pulumi.dart' as pulumi;
import 'sql_pool_workload_group_args.dart';
import 'sql_pool_workload_group_state.dart';

/// Manages a Synapse SQL Pool Workload Group.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "example",
///     location: "west europe",
/// });
/// const exampleAccount = new azure.storage.Account("example", {
///     name: "example",
///     resourceGroupName: example.name,
///     location: example.location,
///     accountKind: "BlobStorage",
///     accountTier: "Standard",
///     accountReplicationType: "LRS",
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
///     name: "example",
///     synapseWorkspaceId: exampleWorkspace.id,
///     skuName: "DW100c",
///     createMode: "Default",
/// });
/// const exampleSqlPoolWorkloadGroup = new azure.synapse.SqlPoolWorkloadGroup("example", {
///     name: "example",
///     sqlPoolId: exampleSqlPool.id,
///     importance: "normal",
///     maxResourcePercent: 100,
///     minResourcePercent: 0,
///     maxResourcePercentPerRequest: 3,
///     minResourcePercentPerRequest: 3,
///     queryExecutionTimeoutInSeconds: 0,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example",
///     location="west europe")
/// example_account = azure.storage.Account("example",
///     name="example",
///     resource_group_name=example.name,
///     location=example.location,
///     account_kind="BlobStorage",
///     account_tier="Standard",
///     account_replication_type="LRS")
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
///     name="example",
///     synapse_workspace_id=example_workspace.id,
///     sku_name="DW100c",
///     create_mode="Default")
/// example_sql_pool_workload_group = azure.synapse.SqlPoolWorkloadGroup("example",
///     name="example",
///     sql_pool_id=example_sql_pool.id,
///     importance="normal",
///     max_resource_percent=100,
///     min_resource_percent=0,
///     max_resource_percent_per_request=3,
///     min_resource_percent_per_request=3,
///     query_execution_timeout_in_seconds=0)
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
///         Name = "example",
///         Location = "west europe",
///     });
///
///     var exampleAccount = new Azure.Storage.Account("example", new()
///     {
///         Name = "example",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         AccountKind = "BlobStorage",
///         AccountTier = "Standard",
///         AccountReplicationType = "LRS",
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
///         Name = "example",
///         SynapseWorkspaceId = exampleWorkspace.Id,
///         SkuName = "DW100c",
///         CreateMode = "Default",
///     });
///
///     var exampleSqlPoolWorkloadGroup = new Azure.Synapse.SqlPoolWorkloadGroup("example", new()
///     {
///         Name = "example",
///         SqlPoolId = exampleSqlPool.Id,
///         Importance = "normal",
///         MaxResourcePercent = 100,
///         MinResourcePercent = 0,
///         MaxResourcePercentPerRequest = 3,
///         MinResourcePercentPerRequest = 3,
///         QueryExecutionTimeoutInSeconds = 0,
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
/// 			Name:     pulumi.String("example"),
/// 			Location: pulumi.String("west europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleAccount, err := storage.NewAccount(ctx, "example", &storage.AccountArgs{
/// 			Name:                   pulumi.String("example"),
/// 			ResourceGroupName:      example.Name,
/// 			Location:               example.Location,
/// 			AccountKind:            pulumi.String("BlobStorage"),
/// 			AccountTier:            pulumi.String("Standard"),
/// 			AccountReplicationType: pulumi.String("LRS"),
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
/// 		exampleSqlPool, err := synapse.NewSqlPool(ctx, "example", &synapse.SqlPoolArgs{
/// 			Name:               pulumi.String("example"),
/// 			SynapseWorkspaceId: exampleWorkspace.ID(),
/// 			SkuName:            pulumi.String("DW100c"),
/// 			CreateMode:         pulumi.String("Default"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = synapse.NewSqlPoolWorkloadGroup(ctx, "example", &synapse.SqlPoolWorkloadGroupArgs{
/// 			Name:                           pulumi.String("example"),
/// 			SqlPoolId:                      exampleSqlPool.ID(),
/// 			Importance:                     pulumi.String("normal"),
/// 			MaxResourcePercent:             pulumi.Int(100),
/// 			MinResourcePercent:             pulumi.Int(0),
/// 			MaxResourcePercentPerRequest:   pulumi.Float64(3),
/// 			MinResourcePercentPerRequest:   pulumi.Float64(3),
/// 			QueryExecutionTimeoutInSeconds: pulumi.Int(0),
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
/// import com.pulumi.azure.synapse.SqlPoolWorkloadGroup;
/// import com.pulumi.azure.synapse.SqlPoolWorkloadGroupArgs;
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
///             .name("example")
///             .location("west europe")
///             .build());
///
///         var exampleAccount = new Account("exampleAccount", AccountArgs.builder()
///             .name("example")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .accountKind("BlobStorage")
///             .accountTier("Standard")
///             .accountReplicationType("LRS")
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
///             .name("example")
///             .synapseWorkspaceId(exampleWorkspace.id())
///             .skuName("DW100c")
///             .createMode("Default")
///             .build());
///
///         var exampleSqlPoolWorkloadGroup = new SqlPoolWorkloadGroup("exampleSqlPoolWorkloadGroup", SqlPoolWorkloadGroupArgs.builder()
///             .name("example")
///             .sqlPoolId(exampleSqlPool.id())
///             .importance("normal")
///             .maxResourcePercent(100)
///             .minResourcePercent(0)
///             .maxResourcePercentPerRequest(3.0)
///             .minResourcePercentPerRequest(3.0)
///             .queryExecutionTimeoutInSeconds(0)
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
///       name: example
///       location: west europe
///   exampleAccount:
///     type: azure:storage:Account
///     name: example
///     properties:
///       name: example
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       accountKind: BlobStorage
///       accountTier: Standard
///       accountReplicationType: LRS
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
///       name: example
///       synapseWorkspaceId: ${exampleWorkspace.id}
///       skuName: DW100c
///       createMode: Default
///   exampleSqlPoolWorkloadGroup:
///     type: azure:synapse:SqlPoolWorkloadGroup
///     name: example
///     properties:
///       name: example
///       sqlPoolId: ${exampleSqlPool.id}
///       importance: normal
///       maxResourcePercent: 100
///       minResourcePercent: 0
///       maxResourcePercentPerRequest: 3
///       minResourcePercentPerRequest: 3
///       queryExecutionTimeoutInSeconds: 0
/// ```
///
///
/// ## Import
///
/// Synapse SQL Pool Workload Groups can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:synapse/sqlPoolWorkloadGroup:SqlPoolWorkloadGroup example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resGroup1/providers/Microsoft.Synapse/workspaces/workspace1/sqlPools/sqlPool1/workloadGroups/workloadGroup1
/// ```
class SqlPoolWorkloadGroup extends pulumi.CustomResource {
  /// The workload group importance level. Defaults to `normal`.
  late final pulumi.Output<String?> importance;
  /// The workload group cap percentage resource.
  late final pulumi.Output<int> maxResourcePercent;
  /// The workload group request maximum grant percentage. Defaults to `3`.
  late final pulumi.Output<double?> maxResourcePercentPerRequest;
  /// The workload group minimum percentage resource.
  late final pulumi.Output<int> minResourcePercent;
  /// The workload group request minimum grant percentage.
  late final pulumi.Output<double?> minResourcePercentPerRequest;
  /// The name which should be used for this Synapse SQL Pool Workload Group. Changing this forces a new Synapse SQL Pool Workload Group to be created.
  late final pulumi.Output<String> name;
  /// The workload group query execution timeout.
  late final pulumi.Output<int?> queryExecutionTimeoutInSeconds;
  /// The ID of the Synapse SQL Pool. Changing this forces a new Synapse SQL Pool Workload Group to be created.
  late final pulumi.Output<String> sqlPoolId;

  /// Creates a new [SqlPoolWorkloadGroup].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SqlPoolWorkloadGroup]. {@macro pulumi_synapse_sql_pool_workload_group_sql_pool_workload_group_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SqlPoolWorkloadGroup(
    String name, {
    SqlPoolWorkloadGroupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:synapse/sqlPoolWorkloadGroup:SqlPoolWorkloadGroup',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.importance = registerOutput<String?>('importance');
    this.maxResourcePercent = registerOutput<int>('maxResourcePercent');
    this.maxResourcePercentPerRequest = registerOutput<double?>('maxResourcePercentPerRequest');
    this.minResourcePercent = registerOutput<int>('minResourcePercent');
    this.minResourcePercentPerRequest = registerOutput<double?>('minResourcePercentPerRequest');
    this.name = registerOutput<String>('name');
    this.queryExecutionTimeoutInSeconds = registerOutput<int?>('queryExecutionTimeoutInSeconds');
    this.sqlPoolId = registerOutput<String>('sqlPoolId');
  }

  /// Gets an existing [SqlPoolWorkloadGroup] resource's state with the given [name] and [id].
  static SqlPoolWorkloadGroup get(
    String name,
    pulumi.Input<String> id, {
    SqlPoolWorkloadGroupState? state,
  }) {
    return SqlPoolWorkloadGroup._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  SqlPoolWorkloadGroup._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:synapse/sqlPoolWorkloadGroup:SqlPoolWorkloadGroup',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.importance = registerOutput<String?>('importance');
    this.maxResourcePercent = registerOutput<int>('maxResourcePercent');
    this.maxResourcePercentPerRequest = registerOutput<double?>('maxResourcePercentPerRequest');
    this.minResourcePercent = registerOutput<int>('minResourcePercent');
    this.minResourcePercentPerRequest = registerOutput<double?>('minResourcePercentPerRequest');
    this.name = registerOutput<String>('name');
    this.queryExecutionTimeoutInSeconds = registerOutput<int?>('queryExecutionTimeoutInSeconds');
    this.sqlPoolId = registerOutput<String>('sqlPoolId');
  }
}
