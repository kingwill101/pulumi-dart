import 'package:pulumi/pulumi.dart' as pulumi;
import 'synapse_spark_args.dart';
import 'synapse_spark_identity.dart';
import 'synapse_spark_state.dart';

/// Manages the linked service to link an Azure Machine learning workspace to an Azure Synapse workspace.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const current = azure.core.getClientConfig({});
/// const example = new azure.core.ResourceGroup("example", {
///     name: "example-rg",
///     location: "west europe",
///     tags: {
///         stage: "example",
///     },
/// });
/// const exampleInsights = new azure.appinsights.Insights("example", {
///     name: "example-ai",
///     location: example.location,
///     resourceGroupName: example.name,
///     applicationType: "web",
/// });
/// const exampleKeyVault = new azure.keyvault.KeyVault("example", {
///     name: "example-kv",
///     location: example.location,
///     resourceGroupName: example.name,
///     tenantId: current.then(current => current.tenantId),
///     skuName: "standard",
///     purgeProtectionEnabled: true,
/// });
/// const exampleAccount = new azure.storage.Account("example", {
///     name: "examplesa",
///     location: example.location,
///     resourceGroupName: example.name,
///     accountTier: "Standard",
///     accountReplicationType: "LRS",
/// });
/// const exampleWorkspace = new azure.machinelearning.Workspace("example", {
///     name: "example-mlw",
///     location: example.location,
///     resourceGroupName: example.name,
///     applicationInsightsId: exampleInsights.id,
///     keyVaultId: exampleKeyVault.id,
///     storageAccountId: exampleAccount.id,
///     identity: {
///         type: "SystemAssigned",
///     },
/// });
/// const exampleDataLakeGen2Filesystem = new azure.storage.DataLakeGen2Filesystem("example", {
///     name: "example",
///     storageAccountId: exampleAccount.id,
/// });
/// const exampleWorkspace2 = new azure.synapse.Workspace("example", {
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
/// const exampleSparkPool = new azure.synapse.SparkPool("example", {
///     name: "example",
///     synapseWorkspaceId: exampleWorkspace2.id,
///     nodeSizeFamily: "MemoryOptimized",
///     nodeSize: "Small",
///     nodeCount: 3,
/// });
/// const exampleSynapseSpark = new azure.machinelearning.SynapseSpark("example", {
///     name: "example",
///     machineLearningWorkspaceId: exampleWorkspace.id,
///     location: example.location,
///     synapseSparkPoolId: exampleSparkPool.id,
///     identity: {
///         type: "SystemAssigned",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// current = azure.core.get_client_config()
/// example = azure.core.ResourceGroup("example",
///     name="example-rg",
///     location="west europe",
///     tags={
///         "stage": "example",
///     })
/// example_insights = azure.appinsights.Insights("example",
///     name="example-ai",
///     location=example.location,
///     resource_group_name=example.name,
///     application_type="web")
/// example_key_vault = azure.keyvault.KeyVault("example",
///     name="example-kv",
///     location=example.location,
///     resource_group_name=example.name,
///     tenant_id=current.tenant_id,
///     sku_name="standard",
///     purge_protection_enabled=True)
/// example_account = azure.storage.Account("example",
///     name="examplesa",
///     location=example.location,
///     resource_group_name=example.name,
///     account_tier="Standard",
///     account_replication_type="LRS")
/// example_workspace = azure.machinelearning.Workspace("example",
///     name="example-mlw",
///     location=example.location,
///     resource_group_name=example.name,
///     application_insights_id=example_insights.id,
///     key_vault_id=example_key_vault.id,
///     storage_account_id=example_account.id,
///     identity={
///         "type": "SystemAssigned",
///     })
/// example_data_lake_gen2_filesystem = azure.storage.DataLakeGen2Filesystem("example",
///     name="example",
///     storage_account_id=example_account.id)
/// example_workspace2 = azure.synapse.Workspace("example",
///     name="example",
///     resource_group_name=example.name,
///     location=example.location,
///     storage_data_lake_gen2_filesystem_id=example_data_lake_gen2_filesystem.id,
///     sql_administrator_login="sqladminuser",
///     sql_administrator_login_password="H@Sh1CoR3!",
///     identity={
///         "type": "SystemAssigned",
///     })
/// example_spark_pool = azure.synapse.SparkPool("example",
///     name="example",
///     synapse_workspace_id=example_workspace2.id,
///     node_size_family="MemoryOptimized",
///     node_size="Small",
///     node_count=3)
/// example_synapse_spark = azure.machinelearning.SynapseSpark("example",
///     name="example",
///     machine_learning_workspace_id=example_workspace.id,
///     location=example.location,
///     synapse_spark_pool_id=example_spark_pool.id,
///     identity={
///         "type": "SystemAssigned",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var current = Azure.Core.GetClientConfig.Invoke();
///
///     var example = new Azure.Core.ResourceGroup("example", new()
///     {
///         Name = "example-rg",
///         Location = "west europe",
///         Tags =
///         {
///             { "stage", "example" },
///         },
///     });
///
///     var exampleInsights = new Azure.AppInsights.Insights("example", new()
///     {
///         Name = "example-ai",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         ApplicationType = "web",
///     });
///
///     var exampleKeyVault = new Azure.KeyVault.KeyVault("example", new()
///     {
///         Name = "example-kv",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         TenantId = current.Apply(getClientConfigResult => getClientConfigResult.TenantId),
///         SkuName = "standard",
///         PurgeProtectionEnabled = true,
///     });
///
///     var exampleAccount = new Azure.Storage.Account("example", new()
///     {
///         Name = "examplesa",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         AccountTier = "Standard",
///         AccountReplicationType = "LRS",
///     });
///
///     var exampleWorkspace = new Azure.MachineLearning.Workspace("example", new()
///     {
///         Name = "example-mlw",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         ApplicationInsightsId = exampleInsights.Id,
///         KeyVaultId = exampleKeyVault.Id,
///         StorageAccountId = exampleAccount.Id,
///         Identity = new Azure.MachineLearning.Inputs.WorkspaceIdentityArgs
///         {
///             Type = "SystemAssigned",
///         },
///     });
///
///     var exampleDataLakeGen2Filesystem = new Azure.Storage.DataLakeGen2Filesystem("example", new()
///     {
///         Name = "example",
///         StorageAccountId = exampleAccount.Id,
///     });
///
///     var exampleWorkspace2 = new Azure.Synapse.Workspace("example", new()
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
///     var exampleSparkPool = new Azure.Synapse.SparkPool("example", new()
///     {
///         Name = "example",
///         SynapseWorkspaceId = exampleWorkspace2.Id,
///         NodeSizeFamily = "MemoryOptimized",
///         NodeSize = "Small",
///         NodeCount = 3,
///     });
///
///     var exampleSynapseSpark = new Azure.MachineLearning.SynapseSpark("example", new()
///     {
///         Name = "example",
///         MachineLearningWorkspaceId = exampleWorkspace.Id,
///         Location = example.Location,
///         SynapseSparkPoolId = exampleSparkPool.Id,
///         Identity = new Azure.MachineLearning.Inputs.SynapseSparkIdentityArgs
///         {
///             Type = "SystemAssigned",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/appinsights"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/keyvault"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/machinelearning"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/storage"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/synapse"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		current, err := core.GetClientConfig(ctx, map[string]interface{}{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		example, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("example-rg"),
/// 			Location: pulumi.String("west europe"),
/// 			Tags: pulumi.StringMap{
/// 				"stage": pulumi.String("example"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleInsights, err := appinsights.NewInsights(ctx, "example", &appinsights.InsightsArgs{
/// 			Name:              pulumi.String("example-ai"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			ApplicationType:   pulumi.String("web"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleKeyVault, err := keyvault.NewKeyVault(ctx, "example", &keyvault.KeyVaultArgs{
/// 			Name:                   pulumi.String("example-kv"),
/// 			Location:               example.Location,
/// 			ResourceGroupName:      example.Name,
/// 			TenantId:               pulumi.String(current.TenantId),
/// 			SkuName:                pulumi.String("standard"),
/// 			PurgeProtectionEnabled: pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleAccount, err := storage.NewAccount(ctx, "example", &storage.AccountArgs{
/// 			Name:                   pulumi.String("examplesa"),
/// 			Location:               example.Location,
/// 			ResourceGroupName:      example.Name,
/// 			AccountTier:            pulumi.String("Standard"),
/// 			AccountReplicationType: pulumi.String("LRS"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleWorkspace, err := machinelearning.NewWorkspace(ctx, "example", &machinelearning.WorkspaceArgs{
/// 			Name:                  pulumi.String("example-mlw"),
/// 			Location:              example.Location,
/// 			ResourceGroupName:     example.Name,
/// 			ApplicationInsightsId: exampleInsights.ID(),
/// 			KeyVaultId:            exampleKeyVault.ID(),
/// 			StorageAccountId:      exampleAccount.ID(),
/// 			Identity: &machinelearning.WorkspaceIdentityArgs{
/// 				Type: pulumi.String("SystemAssigned"),
/// 			},
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
/// 		exampleWorkspace2, err := synapse.NewWorkspace(ctx, "example", &synapse.WorkspaceArgs{
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
/// 		exampleSparkPool, err := synapse.NewSparkPool(ctx, "example", &synapse.SparkPoolArgs{
/// 			Name:               pulumi.String("example"),
/// 			SynapseWorkspaceId: exampleWorkspace2.ID(),
/// 			NodeSizeFamily:     pulumi.String("MemoryOptimized"),
/// 			NodeSize:           pulumi.String("Small"),
/// 			NodeCount:          pulumi.Int(3),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = machinelearning.NewSynapseSpark(ctx, "example", &machinelearning.SynapseSparkArgs{
/// 			Name:                       pulumi.String("example"),
/// 			MachineLearningWorkspaceId: exampleWorkspace.ID(),
/// 			Location:                   example.Location,
/// 			SynapseSparkPoolId:         exampleSparkPool.ID(),
/// 			Identity: &machinelearning.SynapseSparkIdentityArgs{
/// 				Type: pulumi.String("SystemAssigned"),
/// 			},
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
/// import com.pulumi.azure.core.CoreFunctions;
/// import com.pulumi.azure.core.ResourceGroup;
/// import com.pulumi.azure.core.ResourceGroupArgs;
/// import com.pulumi.azure.appinsights.Insights;
/// import com.pulumi.azure.appinsights.InsightsArgs;
/// import com.pulumi.azure.keyvault.KeyVault;
/// import com.pulumi.azure.keyvault.KeyVaultArgs;
/// import com.pulumi.azure.storage.Account;
/// import com.pulumi.azure.storage.AccountArgs;
/// import com.pulumi.azure.storage.DataLakeGen2Filesystem;
/// import com.pulumi.azure.storage.DataLakeGen2FilesystemArgs;
/// import com.pulumi.azure.synapse.SparkPool;
/// import com.pulumi.azure.synapse.SparkPoolArgs;
/// import com.pulumi.azure.machinelearning.SynapseSpark;
/// import com.pulumi.azure.machinelearning.SynapseSparkArgs;
/// import com.pulumi.azure.machinelearning.inputs.SynapseSparkIdentityArgs;
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
///         final var current = CoreFunctions.getClientConfig(%!v(PANIC=Format method: runtime error: invalid memory address or nil pointer dereference);
///
///         var example = new ResourceGroup("example", ResourceGroupArgs.builder()
///             .name("example-rg")
///             .location("west europe")
///             .tags(Map.of("stage", "example"))
///             .build());
///
///         var exampleInsights = new Insights("exampleInsights", InsightsArgs.builder()
///             .name("example-ai")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .applicationType("web")
///             .build());
///
///         var exampleKeyVault = new KeyVault("exampleKeyVault", KeyVaultArgs.builder()
///             .name("example-kv")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .tenantId(current.tenantId())
///             .skuName("standard")
///             .purgeProtectionEnabled(true)
///             .build());
///
///         var exampleAccount = new Account("exampleAccount", AccountArgs.builder()
///             .name("examplesa")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .accountTier("Standard")
///             .accountReplicationType("LRS")
///             .build());
///
///         var exampleWorkspace = new com.pulumi.azure.machinelearning.Workspace("exampleWorkspace", com.pulumi.azure.machinelearning.WorkspaceArgs.builder()
///             .name("example-mlw")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .applicationInsightsId(exampleInsights.id())
///             .keyVaultId(exampleKeyVault.id())
///             .storageAccountId(exampleAccount.id())
///             .identity(WorkspaceIdentityArgs.builder()
///                 .type("SystemAssigned")
///                 .build())
///             .build());
///
///         var exampleDataLakeGen2Filesystem = new DataLakeGen2Filesystem("exampleDataLakeGen2Filesystem", DataLakeGen2FilesystemArgs.builder()
///             .name("example")
///             .storageAccountId(exampleAccount.id())
///             .build());
///
///         var exampleWorkspace2 = new com.pulumi.azure.synapse.Workspace("exampleWorkspace2", com.pulumi.azure.synapse.WorkspaceArgs.builder()
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
///         var exampleSparkPool = new SparkPool("exampleSparkPool", SparkPoolArgs.builder()
///             .name("example")
///             .synapseWorkspaceId(exampleWorkspace2.id())
///             .nodeSizeFamily("MemoryOptimized")
///             .nodeSize("Small")
///             .nodeCount(3)
///             .build());
///
///         var exampleSynapseSpark = new SynapseSpark("exampleSynapseSpark", SynapseSparkArgs.builder()
///             .name("example")
///             .machineLearningWorkspaceId(exampleWorkspace.id())
///             .location(example.location())
///             .synapseSparkPoolId(exampleSparkPool.id())
///             .identity(SynapseSparkIdentityArgs.builder()
///                 .type("SystemAssigned")
///                 .build())
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
///       name: example-rg
///       location: west europe
///       tags:
///         stage: example
///   exampleInsights:
///     type: azure:appinsights:Insights
///     name: example
///     properties:
///       name: example-ai
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       applicationType: web
///   exampleKeyVault:
///     type: azure:keyvault:KeyVault
///     name: example
///     properties:
///       name: example-kv
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       tenantId: ${current.tenantId}
///       skuName: standard
///       purgeProtectionEnabled: true
///   exampleAccount:
///     type: azure:storage:Account
///     name: example
///     properties:
///       name: examplesa
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       accountTier: Standard
///       accountReplicationType: LRS
///   exampleWorkspace:
///     type: azure:machinelearning:Workspace
///     name: example
///     properties:
///       name: example-mlw
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       applicationInsightsId: ${exampleInsights.id}
///       keyVaultId: ${exampleKeyVault.id}
///       storageAccountId: ${exampleAccount.id}
///       identity:
///         type: SystemAssigned
///   exampleDataLakeGen2Filesystem:
///     type: azure:storage:DataLakeGen2Filesystem
///     name: example
///     properties:
///       name: example
///       storageAccountId: ${exampleAccount.id}
///   exampleWorkspace2:
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
///   exampleSparkPool:
///     type: azure:synapse:SparkPool
///     name: example
///     properties:
///       name: example
///       synapseWorkspaceId: ${exampleWorkspace2.id}
///       nodeSizeFamily: MemoryOptimized
///       nodeSize: Small
///       nodeCount: 3
///   exampleSynapseSpark:
///     type: azure:machinelearning:SynapseSpark
///     name: example
///     properties:
///       name: example
///       machineLearningWorkspaceId: ${exampleWorkspace.id}
///       location: ${example.location}
///       synapseSparkPoolId: ${exampleSparkPool.id}
///       identity:
///         type: SystemAssigned
/// variables:
///   current:
///     fn::invoke:
///       function: azure:core:getClientConfig
///       arguments: {}
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.MachineLearningServices` - 2025-06-01
///
/// ## Import
///
/// Machine Learning Synapse Sparks can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:machinelearning/synapseSpark:SynapseSpark example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resGroup1/providers/Microsoft.MachineLearningServices/workspaces/workspace1/computes/compute1
/// ```
class SynapseSpark extends pulumi.CustomResource {
  /// The description of the Machine Learning Synapse Spark. Changing this forces a new Machine Learning Synapse Spark to be created.
  late final pulumi.Output<String?> description;

  /// An `identity` block as defined below. Changing this forces a new Machine Learning Synapse Spark to be created.
  late final pulumi.Output<SynapseSparkIdentity?> identity;

  /// Whether local authentication methods is enabled. Defaults to `true`. Changing this forces a new Machine Learning Synapse Spark to be created.
  late final pulumi.Output<bool?> localAuthEnabled;

  /// The Azure Region where the Machine Learning Synapse Spark should exist. Changing this forces a new Machine Learning Synapse Spark to be created.
  late final pulumi.Output<String> location;

  /// The ID of the Machine Learning Workspace. Changing this forces a new Machine Learning Synapse Spark to be created.
  late final pulumi.Output<String> machineLearningWorkspaceId;

  /// The name which should be used for this Machine Learning Synapse Spark. Changing this forces a new Machine Learning Synapse Spark to be created.
  late final pulumi.Output<String> name;

  /// The ID of the linked Synapse Spark Pool. Changing this forces a new Machine Learning Synapse Spark to be created.
  late final pulumi.Output<String> synapseSparkPoolId;

  /// A mapping of tags which should be assigned to the Machine Learning Synapse Spark. Changing this forces a new Machine Learning Synapse Spark to be created.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Creates a new [SynapseSpark].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SynapseSpark]. {@macro pulumi_machinelearning_synapse_spark_synapse_spark_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SynapseSpark(
    String name, {
    SynapseSparkArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:machinelearning/synapseSpark:SynapseSpark',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    description = registerOutput<String?>('description');
    identity = registerOutput<SynapseSparkIdentity?>('identity');
    localAuthEnabled = registerOutput<bool?>('localAuthEnabled');
    location = registerOutput<String>('location');
    machineLearningWorkspaceId = registerOutput<String>(
      'machineLearningWorkspaceId',
    );
    this.name = registerOutput<String>('name');
    synapseSparkPoolId = registerOutput<String>('synapseSparkPoolId');
    tags = registerOutput<Map<String, String>?>('tags');
  }

  /// Gets an existing [SynapseSpark] resource's state with the given [name] and [id].
  static SynapseSpark get(
    String name,
    pulumi.Input<String> id, {
    SynapseSparkState? state,
  }) {
    return SynapseSpark._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  SynapseSpark._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:machinelearning/synapseSpark:SynapseSpark',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    description = registerOutput<String?>('description');
    identity = registerOutput<SynapseSparkIdentity?>('identity');
    localAuthEnabled = registerOutput<bool?>('localAuthEnabled');
    location = registerOutput<String>('location');
    machineLearningWorkspaceId = registerOutput<String>(
      'machineLearningWorkspaceId',
    );
    this.name = registerOutput<String>('name');
    synapseSparkPoolId = registerOutput<String>('synapseSparkPoolId');
    tags = registerOutput<Map<String, String>?>('tags');
  }
}
