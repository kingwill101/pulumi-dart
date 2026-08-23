import 'package:pulumi/pulumi.dart' as pulumi;
import 'sql_pool_workload_classifier_args.dart';
import 'sql_pool_workload_classifier_state.dart';

/// Manages a Synapse SQL Pool Workload Classifier.
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
/// const exampleSqlPoolWorkloadClassifier = new azure.synapse.SqlPoolWorkloadClassifier("example", {
///     name: "example",
///     workloadGroupId: exampleSqlPoolWorkloadGroup.id,
///     context: "example_context",
///     endTime: "14:00",
///     importance: "high",
///     label: "example_label",
///     memberName: "dbo",
///     startTime: "12:00",
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
///     max_resource_percent_per_request=float(3),
///     min_resource_percent_per_request=float(3),
///     query_execution_timeout_in_seconds=0)
/// example_sql_pool_workload_classifier = azure.synapse.SqlPoolWorkloadClassifier("example",
///     name="example",
///     workload_group_id=example_sql_pool_workload_group.id,
///     context="example_context",
///     end_time="14:00",
///     importance="high",
///     label="example_label",
///     member_name="dbo",
///     start_time="12:00")
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
///     var exampleSqlPoolWorkloadClassifier = new Azure.Synapse.SqlPoolWorkloadClassifier("example", new()
///     {
///         Name = "example",
///         WorkloadGroupId = exampleSqlPoolWorkloadGroup.Id,
///         Context = "example_context",
///         EndTime = "14:00",
///         Importance = "high",
///         Label = "example_label",
///         MemberName = "dbo",
///         StartTime = "12:00",
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
/// 		exampleSqlPoolWorkloadGroup, err := synapse.NewSqlPoolWorkloadGroup(ctx, "example", &synapse.SqlPoolWorkloadGroupArgs{
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
/// 		_, err = synapse.NewSqlPoolWorkloadClassifier(ctx, "example", &synapse.SqlPoolWorkloadClassifierArgs{
/// 			Name:            pulumi.String("example"),
/// 			WorkloadGroupId: exampleSqlPoolWorkloadGroup.ID(),
/// 			Context:         pulumi.String("example_context"),
/// 			EndTime:         pulumi.String("14:00"),
/// 			Importance:      pulumi.String("high"),
/// 			Label:           pulumi.String("example_label"),
/// 			MemberName:      pulumi.String("dbo"),
/// 			StartTime:       pulumi.String("12:00"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     azure = {
///       source = "pulumi/azure"
///     }
///   }
/// }
///
/// resource "azure_core_resourcegroup" "example" {
///   name     = "example-resources"
///   location = "West Europe"
/// }
/// resource "azure_storage_account" "example" {
///   name                     = "example"
///   resource_group_name      = azure_core_resourcegroup.example.name
///   location                 = azure_core_resourcegroup.example.location
///   account_kind             = "BlobStorage"
///   account_tier             = "Standard"
///   account_replication_type = "LRS"
/// }
/// resource "azure_storage_datalakegen2filesystem" "example" {
///   name               = "example"
///   storage_account_id = azure_storage_account.example.id
/// }
/// resource "azure_synapse_workspace" "example" {
///   name                                 = "example"
///   resource_group_name                  = azure_core_resourcegroup.example.name
///   location                             = azure_core_resourcegroup.example.location
///   storage_data_lake_gen2_filesystem_id = azure_storage_datalakegen2filesystem.example.id
///   sql_administrator_login              = "sqladminuser"
///   sql_administrator_login_password     = "H@Sh1CoR3!"
///   identity = {
///     type = "SystemAssigned"
///   }
/// }
/// resource "azure_synapse_sqlpool" "example" {
///   name                 = "example"
///   synapse_workspace_id = azure_synapse_workspace.example.id
///   sku_name             = "DW100c"
///   create_mode          = "Default"
/// }
/// resource "azure_synapse_sqlpoolworkloadgroup" "example" {
///   name                               = "example"
///   sql_pool_id                        = azure_synapse_sqlpool.example.id
///   importance                         = "normal"
///   max_resource_percent               = 100
///   min_resource_percent               = 0
///   max_resource_percent_per_request   = 3
///   min_resource_percent_per_request   = 3
///   query_execution_timeout_in_seconds = 0
/// }
/// resource "azure_synapse_sqlpoolworkloadclassifier" "example" {
///   name              = "example"
///   workload_group_id = azure_synapse_sqlpoolworkloadgroup.example.id
///   context           = "example_context"
///   end_time          = "14:00"
///   importance        = "high"
///   label             = "example_label"
///   member_name       = "dbo"
///   start_time        = "12:00"
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
/// import com.pulumi.azure.synapse.SqlPoolWorkloadClassifier;
/// import com.pulumi.azure.synapse.SqlPoolWorkloadClassifierArgs;
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
///         var example = new ResourceGroup("example", ResourceGroupArgs.builder()
///             .name("example-resources")
///             .location("West Europe")
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
///         var exampleSqlPoolWorkloadClassifier = new SqlPoolWorkloadClassifier("exampleSqlPoolWorkloadClassifier", SqlPoolWorkloadClassifierArgs.builder()
///             .name("example")
///             .workloadGroupId(exampleSqlPoolWorkloadGroup.id())
///             .context("example_context")
///             .endTime("14:00")
///             .importance("high")
///             .label("example_label")
///             .memberName("dbo")
///             .startTime("12:00")
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
///   exampleSqlPoolWorkloadClassifier:
///     type: azure:synapse:SqlPoolWorkloadClassifier
///     name: example
///     properties:
///       name: example
///       workloadGroupId: ${exampleSqlPoolWorkloadGroup.id}
///       context: example_context
///       endTime: 14:00
///       importance: high
///       label: example_label
///       memberName: dbo
///       startTime: 12:00
/// ```
///
///
/// ## Import
///
/// Synapse SQL Pool Workload Classifiers can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:synapse/sqlPoolWorkloadClassifier:SqlPoolWorkloadClassifier example /subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/resGroup1/providers/Microsoft.Synapse/workspaces/workspace1/sqlPools/sqlPool1/workloadGroups/workloadGroup1/workloadClassifiers/workloadClassifier1
/// ```
class SqlPoolWorkloadClassifier extends pulumi.CustomResource {
  /// Specifies the session context value that a request can be classified against.
  late final pulumi.Output<String?> context;
  /// The workload classifier end time for classification. It's of the `HH:MM` format in UTC time zone.
  late final pulumi.Output<String?> endTime;
  /// The workload classifier importance. The allowed values are `low`, `belowNormal`, `normal`, `aboveNormal` and `high`.
  late final pulumi.Output<String?> importance;
  /// Specifies the label value that a request can be classified against.
  late final pulumi.Output<String?> label;
  /// The workload classifier member name used to classified against.
  late final pulumi.Output<String> memberName;
  /// The name which should be used for this Synapse SQL Pool Workload Classifier. Changing this forces a new Synapse SQL Pool Workload Classifier to be created.
  late final pulumi.Output<String> name;
  /// The workload classifier start time for classification. It's of the `HH:MM` format in UTC time zone.
  late final pulumi.Output<String?> startTime;
  /// The ID of the Synapse SQL Pool Workload Group. Changing this forces a new Synapse SQL Pool Workload Classifier to be created.
  late final pulumi.Output<String> workloadGroupId;

  /// Creates a new [SqlPoolWorkloadClassifier].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SqlPoolWorkloadClassifier]. {@macro pulumi_synapse_sql_pool_workload_classifier_sql_pool_workload_classifier_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SqlPoolWorkloadClassifier(
    String name, {
    SqlPoolWorkloadClassifierArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:synapse/sqlPoolWorkloadClassifier:SqlPoolWorkloadClassifier',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    context = registerOutput<String?>('context');
    endTime = registerOutput<String?>('endTime');
    importance = registerOutput<String?>('importance');
    label = registerOutput<String?>('label');
    memberName = registerOutput<String>('memberName');
    this.name = registerOutput<String>('name');
    startTime = registerOutput<String?>('startTime');
    workloadGroupId = registerOutput<String>('workloadGroupId');
  }

  /// Gets an existing [SqlPoolWorkloadClassifier] resource's state with the given [name] and [id].
  static SqlPoolWorkloadClassifier get(
    String name,
    pulumi.Input<String> id, {
    SqlPoolWorkloadClassifierState? state,
  }) {
    return SqlPoolWorkloadClassifier._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  SqlPoolWorkloadClassifier._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:synapse/sqlPoolWorkloadClassifier:SqlPoolWorkloadClassifier',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    context = registerOutput<String?>('context');
    endTime = registerOutput<String?>('endTime');
    importance = registerOutput<String?>('importance');
    label = registerOutput<String?>('label');
    memberName = registerOutput<String>('memberName');
    this.name = registerOutput<String>('name');
    startTime = registerOutput<String?>('startTime');
    workloadGroupId = registerOutput<String>('workloadGroupId');
  }
}
