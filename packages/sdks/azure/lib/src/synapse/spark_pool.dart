import 'package:pulumi/pulumi.dart' as pulumi;
import 'spark_pool_args.dart';
import 'spark_pool_auto_pause.dart';
import 'spark_pool_auto_scale.dart';
import 'spark_pool_library_requirement.dart';
import 'spark_pool_spark_config.dart';
import 'spark_pool_state.dart';

/// Manages a Synapse Spark Pool.
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
///     accountKind: "StorageV2",
///     isHnsEnabled: true,
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
/// const exampleSparkPool = new azure.synapse.SparkPool("example", {
///     name: "example",
///     synapseWorkspaceId: exampleWorkspace.id,
///     nodeSizeFamily: "MemoryOptimized",
///     nodeSize: "Small",
///     cacheSize: 100,
///     autoScale: {
///         maxNodeCount: 50,
///         minNodeCount: 3,
///     },
///     autoPause: {
///         delayInMinutes: 15,
///     },
///     libraryRequirement: {
///         content: `appnope==0.1.0
/// beautifulsoup4==4.6.3
/// `,
///         filename: "requirements.txt",
///     },
///     sparkConfig: {
///         content: "spark.shuffle.spill                true\n",
///         filename: "config.txt",
///     },
///     sparkVersion: "3.5",
///     tags: {
///         ENV: "Production",
///     },
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
///     account_kind="StorageV2",
///     is_hns_enabled=True)
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
/// example_spark_pool = azure.synapse.SparkPool("example",
///     name="example",
///     synapse_workspace_id=example_workspace.id,
///     node_size_family="MemoryOptimized",
///     node_size="Small",
///     cache_size=100,
///     auto_scale={
///         "max_node_count": 50,
///         "min_node_count": 3,
///     },
///     auto_pause={
///         "delay_in_minutes": 15,
///     },
///     library_requirement={
///         "content": """appnope==0.1.0
/// beautifulsoup4==4.6.3
/// """,
///         "filename": "requirements.txt",
///     },
///     spark_config={
///         "content": "spark.shuffle.spill                true\n",
///         "filename": "config.txt",
///     },
///     spark_version="3.5",
///     tags={
///         "ENV": "Production",
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
///         AccountKind = "StorageV2",
///         IsHnsEnabled = true,
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
///     var exampleSparkPool = new Azure.Synapse.SparkPool("example", new()
///     {
///         Name = "example",
///         SynapseWorkspaceId = exampleWorkspace.Id,
///         NodeSizeFamily = "MemoryOptimized",
///         NodeSize = "Small",
///         CacheSize = 100,
///         AutoScale = new Azure.Synapse.Inputs.SparkPoolAutoScaleArgs
///         {
///             MaxNodeCount = 50,
///             MinNodeCount = 3,
///         },
///         AutoPause = new Azure.Synapse.Inputs.SparkPoolAutoPauseArgs
///         {
///             DelayInMinutes = 15,
///         },
///         LibraryRequirement = new Azure.Synapse.Inputs.SparkPoolLibraryRequirementArgs
///         {
///             Content = @"appnope==0.1.0
/// beautifulsoup4==4.6.3
/// ",
///             Filename = "requirements.txt",
///         },
///         SparkConfig = new Azure.Synapse.Inputs.SparkPoolSparkConfigArgs
///         {
///             Content = @"spark.shuffle.spill                true
/// ",
///             Filename = "config.txt",
///         },
///         SparkVersion = "3.5",
///         Tags =
///         {
///             { "ENV", "Production" },
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
/// 			AccountKind:            pulumi.String("StorageV2"),
/// 			IsHnsEnabled:           pulumi.Bool(true),
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
/// 		_, err = synapse.NewSparkPool(ctx, "example", &synapse.SparkPoolArgs{
/// 			Name:               pulumi.String("example"),
/// 			SynapseWorkspaceId: exampleWorkspace.ID(),
/// 			NodeSizeFamily:     pulumi.String("MemoryOptimized"),
/// 			NodeSize:           pulumi.String("Small"),
/// 			CacheSize:          pulumi.Int(100),
/// 			AutoScale: &synapse.SparkPoolAutoScaleArgs{
/// 				MaxNodeCount: pulumi.Int(50),
/// 				MinNodeCount: pulumi.Int(3),
/// 			},
/// 			AutoPause: &synapse.SparkPoolAutoPauseArgs{
/// 				DelayInMinutes: pulumi.Int(15),
/// 			},
/// 			LibraryRequirement: &synapse.SparkPoolLibraryRequirementArgs{
/// 				Content:  pulumi.String("appnope==0.1.0\nbeautifulsoup4==4.6.3\n"),
/// 				Filename: pulumi.String("requirements.txt"),
/// 			},
/// 			SparkConfig: &synapse.SparkPoolSparkConfigArgs{
/// 				Content:  pulumi.String("spark.shuffle.spill                true\n"),
/// 				Filename: pulumi.String("config.txt"),
/// 			},
/// 			SparkVersion: pulumi.String("3.5"),
/// 			Tags: pulumi.StringMap{
/// 				"ENV": pulumi.String("Production"),
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
/// import com.pulumi.azure.core.ResourceGroup;
/// import com.pulumi.azure.core.ResourceGroupArgs;
/// import com.pulumi.azure.storage.Account;
/// import com.pulumi.azure.storage.AccountArgs;
/// import com.pulumi.azure.storage.DataLakeGen2Filesystem;
/// import com.pulumi.azure.storage.DataLakeGen2FilesystemArgs;
/// import com.pulumi.azure.synapse.Workspace;
/// import com.pulumi.azure.synapse.WorkspaceArgs;
/// import com.pulumi.azure.synapse.inputs.WorkspaceIdentityArgs;
/// import com.pulumi.azure.synapse.SparkPool;
/// import com.pulumi.azure.synapse.SparkPoolArgs;
/// import com.pulumi.azure.synapse.inputs.SparkPoolAutoScaleArgs;
/// import com.pulumi.azure.synapse.inputs.SparkPoolAutoPauseArgs;
/// import com.pulumi.azure.synapse.inputs.SparkPoolLibraryRequirementArgs;
/// import com.pulumi.azure.synapse.inputs.SparkPoolSparkConfigArgs;
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
///             .accountKind("StorageV2")
///             .isHnsEnabled(true)
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
///         var exampleSparkPool = new SparkPool("exampleSparkPool", SparkPoolArgs.builder()
///             .name("example")
///             .synapseWorkspaceId(exampleWorkspace.id())
///             .nodeSizeFamily("MemoryOptimized")
///             .nodeSize("Small")
///             .cacheSize(100)
///             .autoScale(SparkPoolAutoScaleArgs.builder()
///                 .maxNodeCount(50)
///                 .minNodeCount(3)
///                 .build())
///             .autoPause(SparkPoolAutoPauseArgs.builder()
///                 .delayInMinutes(15)
///                 .build())
///             .libraryRequirement(SparkPoolLibraryRequirementArgs.builder()
///                 .content("""
/// appnope==0.1.0
/// beautifulsoup4==4.6.3
///                 """)
///                 .filename("requirements.txt")
///                 .build())
///             .sparkConfig(SparkPoolSparkConfigArgs.builder()
///                 .content("""
/// spark.shuffle.spill                true
///                 """)
///                 .filename("config.txt")
///                 .build())
///             .sparkVersion("3.5")
///             .tags(Map.of("ENV", "Production"))
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
///       accountKind: StorageV2
///       isHnsEnabled: 'true'
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
///   exampleSparkPool:
///     type: azure:synapse:SparkPool
///     name: example
///     properties:
///       name: example
///       synapseWorkspaceId: ${exampleWorkspace.id}
///       nodeSizeFamily: MemoryOptimized
///       nodeSize: Small
///       cacheSize: 100
///       autoScale:
///         maxNodeCount: 50
///         minNodeCount: 3
///       autoPause:
///         delayInMinutes: 15
///       libraryRequirement:
///         content: |
///           appnope==0.1.0
///           beautifulsoup4==4.6.3
///         filename: requirements.txt
///       sparkConfig:
///         content: |
///           spark.shuffle.spill                true
///         filename: config.txt
///       sparkVersion: 3.5
///       tags:
///         ENV: Production
/// ```
///
///
/// ## Import
///
/// Synapse Spark Pool can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:synapse/sparkPool:SparkPool example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.Synapse/workspaces/workspace1/bigDataPools/sparkPool1
/// ```
class SparkPool extends pulumi.CustomResource {
  /// An `auto_pause` block as defined below.
  late final pulumi.Output<SparkPoolAutoPause?> autoPause;

  /// An `auto_scale` block as defined below. Exactly one of `node_count` or `auto_scale` must be specified.
  late final pulumi.Output<SparkPoolAutoScale?> autoScale;

  /// The cache size in the Spark Pool.
  late final pulumi.Output<int?> cacheSize;

  /// Indicates whether compute isolation is enabled or not. Defaults to `false`.
  late final pulumi.Output<bool?> computeIsolationEnabled;
  late final pulumi.Output<bool?> dynamicExecutorAllocationEnabled;
  late final pulumi.Output<SparkPoolLibraryRequirement?> libraryRequirement;
  late final pulumi.Output<int?> maxExecutors;
  late final pulumi.Output<int?> minExecutors;

  /// The name which should be used for this Synapse Spark Pool. Changing this forces a new Synapse Spark Pool to be created.
  late final pulumi.Output<String> name;

  /// The number of nodes in the Spark Pool. Exactly one of `node_count` or `auto_scale` must be specified.
  late final pulumi.Output<int> nodeCount;

  /// The level of node in the Spark Pool. Possible values are `Small`, `Medium`, `Large`, `None`, `XLarge`, `XXLarge` and `XXXLarge`.
  late final pulumi.Output<String> nodeSize;

  /// The kind of nodes that the Spark Pool provides. Possible values are `HardwareAcceleratedFPGA`, `HardwareAcceleratedGPU`, `MemoryOptimized`, and `None`.
  late final pulumi.Output<String> nodeSizeFamily;
  late final pulumi.Output<bool?> sessionLevelPackagesEnabled;
  late final pulumi.Output<SparkPoolSparkConfig?> sparkConfig;
  late final pulumi.Output<String?> sparkEventsFolder;
  late final pulumi.Output<String?> sparkLogFolder;

  /// The Apache Spark version. Possible values are `3.4` and `3.5`.
  late final pulumi.Output<String> sparkVersion;

  /// The ID of the Synapse Workspace where the Synapse Spark Pool should exist. Changing this forces a new Synapse Spark Pool to be created.
  late final pulumi.Output<String> synapseWorkspaceId;
  late final pulumi.Output<Map<String, String>?> tags;

  /// Creates a new [SparkPool].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SparkPool]. {@macro pulumi_synapse_spark_pool_spark_pool_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SparkPool(
    String name, {
    SparkPoolArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:synapse/sparkPool:SparkPool',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    autoPause = registerOutput<SparkPoolAutoPause?>('autoPause');
    autoScale = registerOutput<SparkPoolAutoScale?>('autoScale');
    cacheSize = registerOutput<int?>('cacheSize');
    computeIsolationEnabled = registerOutput<bool?>('computeIsolationEnabled');
    dynamicExecutorAllocationEnabled = registerOutput<bool?>(
      'dynamicExecutorAllocationEnabled',
    );
    libraryRequirement = registerOutput<SparkPoolLibraryRequirement?>(
      'libraryRequirement',
    );
    maxExecutors = registerOutput<int?>('maxExecutors');
    minExecutors = registerOutput<int?>('minExecutors');
    this.name = registerOutput<String>('name');
    nodeCount = registerOutput<int>('nodeCount');
    nodeSize = registerOutput<String>('nodeSize');
    nodeSizeFamily = registerOutput<String>('nodeSizeFamily');
    sessionLevelPackagesEnabled = registerOutput<bool?>(
      'sessionLevelPackagesEnabled',
    );
    sparkConfig = registerOutput<SparkPoolSparkConfig?>('sparkConfig');
    sparkEventsFolder = registerOutput<String?>('sparkEventsFolder');
    sparkLogFolder = registerOutput<String?>('sparkLogFolder');
    sparkVersion = registerOutput<String>('sparkVersion');
    synapseWorkspaceId = registerOutput<String>('synapseWorkspaceId');
    tags = registerOutput<Map<String, String>?>('tags');
  }

  /// Gets an existing [SparkPool] resource's state with the given [name] and [id].
  static SparkPool get(
    String name,
    pulumi.Input<String> id, {
    SparkPoolState? state,
  }) {
    return SparkPool._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  SparkPool._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:synapse/sparkPool:SparkPool',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    autoPause = registerOutput<SparkPoolAutoPause?>('autoPause');
    autoScale = registerOutput<SparkPoolAutoScale?>('autoScale');
    cacheSize = registerOutput<int?>('cacheSize');
    computeIsolationEnabled = registerOutput<bool?>('computeIsolationEnabled');
    dynamicExecutorAllocationEnabled = registerOutput<bool?>(
      'dynamicExecutorAllocationEnabled',
    );
    libraryRequirement = registerOutput<SparkPoolLibraryRequirement?>(
      'libraryRequirement',
    );
    maxExecutors = registerOutput<int?>('maxExecutors');
    minExecutors = registerOutput<int?>('minExecutors');
    this.name = registerOutput<String>('name');
    nodeCount = registerOutput<int>('nodeCount');
    nodeSize = registerOutput<String>('nodeSize');
    nodeSizeFamily = registerOutput<String>('nodeSizeFamily');
    sessionLevelPackagesEnabled = registerOutput<bool?>(
      'sessionLevelPackagesEnabled',
    );
    sparkConfig = registerOutput<SparkPoolSparkConfig?>('sparkConfig');
    sparkEventsFolder = registerOutput<String?>('sparkEventsFolder');
    sparkLogFolder = registerOutput<String?>('sparkLogFolder');
    sparkVersion = registerOutput<String>('sparkVersion');
    synapseWorkspaceId = registerOutput<String>('synapseWorkspaceId');
    tags = registerOutput<Map<String, String>?>('tags');
  }
}
