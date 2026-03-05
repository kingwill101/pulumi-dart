import 'package:pulumi/pulumi.dart' as pulumi;
import 'auto_pause_properties_response.dart';
import 'auto_scale_properties_response.dart';
import 'big_data_pool_args.dart';
import 'dynamic_executor_allocation_response.dart';
import 'library_requirements_response.dart';
import 'spark_config_properties_response.dart';

/// A Big Data pool
///
/// Uses Azure REST API version 2021-06-01. In version 2.x of the Azure Native provider, it used API version 2021-06-01.
///
/// Other available API versions: 2021-04-01-preview, 2021-05-01, 2021-06-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native synapse [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create or update a Big Data pool
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var bigDataPool = new AzureNative.Synapse.BigDataPool("bigDataPool", new()
///     {
///         AutoPause = new AzureNative.Synapse.Inputs.AutoPausePropertiesArgs
///         {
///             DelayInMinutes = 15,
///             Enabled = true,
///         },
///         AutoScale = new AzureNative.Synapse.Inputs.AutoScalePropertiesArgs
///         {
///             Enabled = true,
///             MaxNodeCount = 50,
///             MinNodeCount = 3,
///         },
///         BigDataPoolName = "ExamplePool",
///         DefaultSparkLogFolder = "/logs",
///         IsAutotuneEnabled = false,
///         LibraryRequirements = new AzureNative.Synapse.Inputs.LibraryRequirementsArgs
///         {
///             Content = "",
///             Filename = "requirements.txt",
///         },
///         Location = "West US 2",
///         NodeCount = 4,
///         NodeSize = AzureNative.Synapse.NodeSize.Medium,
///         NodeSizeFamily = AzureNative.Synapse.NodeSizeFamily.MemoryOptimized,
///         ResourceGroupName = "ExampleResourceGroup",
///         SparkEventsFolder = "/events",
///         SparkVersion = "3.3",
///         Tags =
///         {
///             { "key", "value" },
///         },
///         WorkspaceName = "ExampleWorkspace",
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
/// 	synapse "github.com/pulumi/pulumi-azure-native-sdk/synapse/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := synapse.NewBigDataPool(ctx, "bigDataPool", &synapse.BigDataPoolArgs{
/// 			AutoPause: &synapse.AutoPausePropertiesArgs{
/// 				DelayInMinutes: pulumi.Int(15),
/// 				Enabled:        pulumi.Bool(true),
/// 			},
/// 			AutoScale: &synapse.AutoScalePropertiesArgs{
/// 				Enabled:      pulumi.Bool(true),
/// 				MaxNodeCount: pulumi.Int(50),
/// 				MinNodeCount: pulumi.Int(3),
/// 			},
/// 			BigDataPoolName:       pulumi.String("ExamplePool"),
/// 			DefaultSparkLogFolder: pulumi.String("/logs"),
/// 			IsAutotuneEnabled:     pulumi.Bool(false),
/// 			LibraryRequirements: &synapse.LibraryRequirementsArgs{
/// 				Content:  pulumi.String(""),
/// 				Filename: pulumi.String("requirements.txt"),
/// 			},
/// 			Location:          pulumi.String("West US 2"),
/// 			NodeCount:         pulumi.Int(4),
/// 			NodeSize:          pulumi.String(synapse.NodeSizeMedium),
/// 			NodeSizeFamily:    pulumi.String(synapse.NodeSizeFamilyMemoryOptimized),
/// 			ResourceGroupName: pulumi.String("ExampleResourceGroup"),
/// 			SparkEventsFolder: pulumi.String("/events"),
/// 			SparkVersion:      pulumi.String("3.3"),
/// 			Tags: pulumi.StringMap{
/// 				"key": pulumi.String("value"),
/// 			},
/// 			WorkspaceName: pulumi.String("ExampleWorkspace"),
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
/// import com.pulumi.azurenative.synapse.BigDataPool;
/// import com.pulumi.azurenative.synapse.BigDataPoolArgs;
/// import com.pulumi.azurenative.synapse.inputs.AutoPausePropertiesArgs;
/// import com.pulumi.azurenative.synapse.inputs.AutoScalePropertiesArgs;
/// import com.pulumi.azurenative.synapse.inputs.LibraryRequirementsArgs;
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
///         var bigDataPool = new BigDataPool("bigDataPool", BigDataPoolArgs.builder()
///             .autoPause(AutoPausePropertiesArgs.builder()
///                 .delayInMinutes(15)
///                 .enabled(true)
///                 .build())
///             .autoScale(AutoScalePropertiesArgs.builder()
///                 .enabled(true)
///                 .maxNodeCount(50)
///                 .minNodeCount(3)
///                 .build())
///             .bigDataPoolName("ExamplePool")
///             .defaultSparkLogFolder("/logs")
///             .isAutotuneEnabled(false)
///             .libraryRequirements(LibraryRequirementsArgs.builder()
///                 .content("")
///                 .filename("requirements.txt")
///                 .build())
///             .location("West US 2")
///             .nodeCount(4)
///             .nodeSize("Medium")
///             .nodeSizeFamily("MemoryOptimized")
///             .resourceGroupName("ExampleResourceGroup")
///             .sparkEventsFolder("/events")
///             .sparkVersion("3.3")
///             .tags(Map.of("key", "value"))
///             .workspaceName("ExampleWorkspace")
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
/// const bigDataPool = new azure_native.synapse.BigDataPool("bigDataPool", {
///     autoPause: {
///         delayInMinutes: 15,
///         enabled: true,
///     },
///     autoScale: {
///         enabled: true,
///         maxNodeCount: 50,
///         minNodeCount: 3,
///     },
///     bigDataPoolName: "ExamplePool",
///     defaultSparkLogFolder: "/logs",
///     isAutotuneEnabled: false,
///     libraryRequirements: {
///         content: "",
///         filename: "requirements.txt",
///     },
///     location: "West US 2",
///     nodeCount: 4,
///     nodeSize: azure_native.synapse.NodeSize.Medium,
///     nodeSizeFamily: azure_native.synapse.NodeSizeFamily.MemoryOptimized,
///     resourceGroupName: "ExampleResourceGroup",
///     sparkEventsFolder: "/events",
///     sparkVersion: "3.3",
///     tags: {
///         key: "value",
///     },
///     workspaceName: "ExampleWorkspace",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// big_data_pool = azure_native.synapse.BigDataPool("bigDataPool",
///     auto_pause={
///         "delay_in_minutes": 15,
///         "enabled": True,
///     },
///     auto_scale={
///         "enabled": True,
///         "max_node_count": 50,
///         "min_node_count": 3,
///     },
///     big_data_pool_name="ExamplePool",
///     default_spark_log_folder="/logs",
///     is_autotune_enabled=False,
///     library_requirements={
///         "content": "",
///         "filename": "requirements.txt",
///     },
///     location="West US 2",
///     node_count=4,
///     node_size=azure_native.synapse.NodeSize.MEDIUM,
///     node_size_family=azure_native.synapse.NodeSizeFamily.MEMORY_OPTIMIZED,
///     resource_group_name="ExampleResourceGroup",
///     spark_events_folder="/events",
///     spark_version="3.3",
///     tags={
///         "key": "value",
///     },
///     workspace_name="ExampleWorkspace")
///
/// ```
///
/// ```yaml
/// resources:
///   bigDataPool:
///     type: azure-native:synapse:BigDataPool
///     properties:
///       autoPause:
///         delayInMinutes: 15
///         enabled: true
///       autoScale:
///         enabled: true
///         maxNodeCount: 50
///         minNodeCount: 3
///       bigDataPoolName: ExamplePool
///       defaultSparkLogFolder: /logs
///       isAutotuneEnabled: false
///       libraryRequirements:
///         content: ""
///         filename: requirements.txt
///       location: West US 2
///       nodeCount: 4
///       nodeSize: Medium
///       nodeSizeFamily: MemoryOptimized
///       resourceGroupName: ExampleResourceGroup
///       sparkEventsFolder: /events
///       sparkVersion: '3.3'
///       tags:
///         key: value
///       workspaceName: ExampleWorkspace
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
/// $ pulumi import azure-native:synapse:BigDataPool ExamplePool /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Synapse/workspaces/{workspaceName}/bigDataPools/{bigDataPoolName}
/// ```
class BigDataPool extends pulumi.CustomResource {
  /// Auto-pausing properties
  late final pulumi.Output<AutoPausePropertiesResponse?> autoPause;
  /// Auto-scaling properties
  late final pulumi.Output<AutoScalePropertiesResponse?> autoScale;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The cache size
  late final pulumi.Output<int?> cacheSize;
  /// The time when the Big Data pool was created.
  late final pulumi.Output<String> creationDate;
  /// List of custom libraries/packages associated with the spark pool.
  late final pulumi.Output<List<Map<String, dynamic>>?> customLibraries;
  /// The default folder where Spark logs will be written.
  late final pulumi.Output<String?> defaultSparkLogFolder;
  /// Dynamic Executor Allocation
  late final pulumi.Output<DynamicExecutorAllocationResponse?> dynamicExecutorAllocation;
  /// Whether autotune is required or not.
  late final pulumi.Output<bool?> isAutotuneEnabled;
  /// Whether compute isolation is required or not.
  late final pulumi.Output<bool?> isComputeIsolationEnabled;
  /// The time when the Big Data pool was updated successfully.
  late final pulumi.Output<String> lastSucceededTimestamp;
  /// Library version requirements
  late final pulumi.Output<LibraryRequirementsResponse?> libraryRequirements;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The number of nodes in the Big Data pool.
  late final pulumi.Output<int?> nodeCount;
  /// The level of compute power that each node in the Big Data pool has.
  late final pulumi.Output<String?> nodeSize;
  /// The kind of nodes that the Big Data pool provides.
  late final pulumi.Output<String?> nodeSizeFamily;
  /// The state of the Big Data pool.
  late final pulumi.Output<String?> provisioningState;
  /// Whether session level packages enabled.
  late final pulumi.Output<bool?> sessionLevelPackagesEnabled;
  /// Spark configuration file to specify additional properties
  late final pulumi.Output<SparkConfigPropertiesResponse?> sparkConfigProperties;
  /// The Spark events folder
  late final pulumi.Output<String?> sparkEventsFolder;
  /// The Apache Spark version.
  late final pulumi.Output<String?> sparkVersion;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [BigDataPool].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [BigDataPool]. {@macro pulumi_synapse_big_data_pool_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  BigDataPool(
    String name, {
    BigDataPoolArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:synapse:BigDataPool',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    autoPause = registerOutput<AutoPausePropertiesResponse?>('autoPause', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AutoPausePropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    autoScale = registerOutput<AutoScalePropertiesResponse?>('autoScale', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AutoScalePropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    azureApiVersion = registerOutput<String>('azureApiVersion');
    cacheSize = registerOutput<int?>('cacheSize');
    creationDate = registerOutput<String>('creationDate');
    customLibraries = registerOutput<List<Map<String, dynamic>>?>('customLibraries');
    defaultSparkLogFolder = registerOutput<String?>('defaultSparkLogFolder');
    dynamicExecutorAllocation = registerOutput<DynamicExecutorAllocationResponse?>('dynamicExecutorAllocation', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DynamicExecutorAllocationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    isAutotuneEnabled = registerOutput<bool?>('isAutotuneEnabled');
    isComputeIsolationEnabled = registerOutput<bool?>('isComputeIsolationEnabled');
    lastSucceededTimestamp = registerOutput<String>('lastSucceededTimestamp');
    libraryRequirements = registerOutput<LibraryRequirementsResponse?>('libraryRequirements', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return LibraryRequirementsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    nodeCount = registerOutput<int?>('nodeCount');
    nodeSize = registerOutput<String?>('nodeSize');
    nodeSizeFamily = registerOutput<String?>('nodeSizeFamily');
    provisioningState = registerOutput<String?>('provisioningState');
    sessionLevelPackagesEnabled = registerOutput<bool?>('sessionLevelPackagesEnabled');
    sparkConfigProperties = registerOutput<SparkConfigPropertiesResponse?>('sparkConfigProperties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SparkConfigPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    sparkEventsFolder = registerOutput<String?>('sparkEventsFolder');
    sparkVersion = registerOutput<String?>('sparkVersion');
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
