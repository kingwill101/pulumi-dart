import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_partition_args.dart';
import 'instance_partition_autoscaling_config.dart';
import 'instance_partition_state.dart';

/// A Cloud Spanner instance partition is a unit of Cloud Spanner database capacity
/// that can be used to partition data and processing capacity within an instance.
///
///
/// To get more information about InstancePartition, see:
///
/// * [API documentation](https://cloud.google.com/spanner/docs/reference/rest/v1/projects.instances.instancePartitions)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/spanner/docs/geo-partitioning)
///
/// ## Example Usage
///
/// ### Spanner Instance Partition Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const main = new gcp.spanner.Instance("main", {
///     name: "test-instance",
///     config: "nam6",
///     displayName: "main-instance",
///     numNodes: 1,
///     edition: "ENTERPRISE_PLUS",
/// });
/// const partition = new gcp.spanner.InstancePartition("partition", {
///     name: "test-partition",
///     instance: main.name,
///     config: "nam8",
///     displayName: "test-spanner-partition",
///     nodeCount: 1,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// main = gcp.spanner.Instance("main",
///     name="test-instance",
///     config="nam6",
///     display_name="main-instance",
///     num_nodes=1,
///     edition="ENTERPRISE_PLUS")
/// partition = gcp.spanner.InstancePartition("partition",
///     name="test-partition",
///     instance=main.name,
///     config="nam8",
///     display_name="test-spanner-partition",
///     node_count=1)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var main = new Gcp.Spanner.Instance("main", new()
///     {
///         Name = "test-instance",
///         Config = "nam6",
///         DisplayName = "main-instance",
///         NumNodes = 1,
///         Edition = "ENTERPRISE_PLUS",
///     });
///
///     var partition = new Gcp.Spanner.InstancePartition("partition", new()
///     {
///         Name = "test-partition",
///         Instance = main.Name,
///         Config = "nam8",
///         DisplayName = "test-spanner-partition",
///         NodeCount = 1,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/spanner"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		main, err := spanner.NewInstance(ctx, "main", &spanner.InstanceArgs{
/// 			Name:        pulumi.String("test-instance"),
/// 			Config:      pulumi.String("nam6"),
/// 			DisplayName: pulumi.String("main-instance"),
/// 			NumNodes:    pulumi.Int(1),
/// 			Edition:     pulumi.String("ENTERPRISE_PLUS"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = spanner.NewInstancePartition(ctx, "partition", &spanner.InstancePartitionArgs{
/// 			Name:        pulumi.String("test-partition"),
/// 			Instance:    main.Name,
/// 			Config:      pulumi.String("nam8"),
/// 			DisplayName: pulumi.String("test-spanner-partition"),
/// 			NodeCount:   pulumi.Int(1),
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
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_spanner_instance" "main" {
///   name         = "test-instance"
///   config       = "nam6"
///   display_name = "main-instance"
///   num_nodes    = 1
///   edition      = "ENTERPRISE_PLUS"
/// }
/// resource "gcp_spanner_instancepartition" "partition" {
///   name         = "test-partition"
///   instance     = gcp_spanner_instance.main.name
///   config       = "nam8"
///   display_name = "test-spanner-partition"
///   node_count   = 1
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.spanner.Instance;
/// import com.pulumi.gcp.spanner.InstanceArgs;
/// import com.pulumi.gcp.spanner.InstancePartition;
/// import com.pulumi.gcp.spanner.InstancePartitionArgs;
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
///         var main = new Instance("main", InstanceArgs.builder()
///             .name("test-instance")
///             .config("nam6")
///             .displayName("main-instance")
///             .numNodes(1)
///             .edition("ENTERPRISE_PLUS")
///             .build());
///
///         var partition = new InstancePartition("partition", InstancePartitionArgs.builder()
///             .name("test-partition")
///             .instance(main.name())
///             .config("nam8")
///             .displayName("test-spanner-partition")
///             .nodeCount(1)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   main:
///     type: gcp:spanner:Instance
///     properties:
///       name: test-instance
///       config: nam6
///       displayName: main-instance
///       numNodes: 1
///       edition: ENTERPRISE_PLUS
///   partition:
///     type: gcp:spanner:InstancePartition
///     properties:
///       name: test-partition
///       instance: ${main.name}
///       config: nam8
///       displayName: test-spanner-partition
///       nodeCount: 1
/// ```
///
/// ### Spanner Instance Partition Autoscaling
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const main = new gcp.spanner.Instance("main", {
///     name: "test-instance",
///     config: "nam6",
///     displayName: "main-instance",
///     numNodes: 1,
///     edition: "ENTERPRISE_PLUS",
/// });
/// const partition = new gcp.spanner.InstancePartition("partition", {
///     name: "test-partition",
///     instance: main.name,
///     config: "nam8",
///     displayName: "test-spanner-partition",
///     autoscalingConfig: {
///         autoscalingLimits: {
///             minProcessingUnits: 1000,
///             maxProcessingUnits: 2000,
///         },
///         autoscalingTargets: {
///             highPriorityCpuUtilizationPercent: 65,
///             storageUtilizationPercent: 95,
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// main = gcp.spanner.Instance("main",
///     name="test-instance",
///     config="nam6",
///     display_name="main-instance",
///     num_nodes=1,
///     edition="ENTERPRISE_PLUS")
/// partition = gcp.spanner.InstancePartition("partition",
///     name="test-partition",
///     instance=main.name,
///     config="nam8",
///     display_name="test-spanner-partition",
///     autoscaling_config={
///         "autoscaling_limits": {
///             "min_processing_units": 1000,
///             "max_processing_units": 2000,
///         },
///         "autoscaling_targets": {
///             "high_priority_cpu_utilization_percent": 65,
///             "storage_utilization_percent": 95,
///         },
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var main = new Gcp.Spanner.Instance("main", new()
///     {
///         Name = "test-instance",
///         Config = "nam6",
///         DisplayName = "main-instance",
///         NumNodes = 1,
///         Edition = "ENTERPRISE_PLUS",
///     });
///
///     var partition = new Gcp.Spanner.InstancePartition("partition", new()
///     {
///         Name = "test-partition",
///         Instance = main.Name,
///         Config = "nam8",
///         DisplayName = "test-spanner-partition",
///         AutoscalingConfig = new Gcp.Spanner.Inputs.InstancePartitionAutoscalingConfigArgs
///         {
///             AutoscalingLimits = new Gcp.Spanner.Inputs.InstancePartitionAutoscalingConfigAutoscalingLimitsArgs
///             {
///                 MinProcessingUnits = 1000,
///                 MaxProcessingUnits = 2000,
///             },
///             AutoscalingTargets = new Gcp.Spanner.Inputs.InstancePartitionAutoscalingConfigAutoscalingTargetsArgs
///             {
///                 HighPriorityCpuUtilizationPercent = 65,
///                 StorageUtilizationPercent = 95,
///             },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/spanner"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		main, err := spanner.NewInstance(ctx, "main", &spanner.InstanceArgs{
/// 			Name:        pulumi.String("test-instance"),
/// 			Config:      pulumi.String("nam6"),
/// 			DisplayName: pulumi.String("main-instance"),
/// 			NumNodes:    pulumi.Int(1),
/// 			Edition:     pulumi.String("ENTERPRISE_PLUS"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = spanner.NewInstancePartition(ctx, "partition", &spanner.InstancePartitionArgs{
/// 			Name:        pulumi.String("test-partition"),
/// 			Instance:    main.Name,
/// 			Config:      pulumi.String("nam8"),
/// 			DisplayName: pulumi.String("test-spanner-partition"),
/// 			AutoscalingConfig: &spanner.InstancePartitionAutoscalingConfigArgs{
/// 				AutoscalingLimits: &spanner.InstancePartitionAutoscalingConfigAutoscalingLimitsArgs{
/// 					MinProcessingUnits: pulumi.Int(1000),
/// 					MaxProcessingUnits: pulumi.Int(2000),
/// 				},
/// 				AutoscalingTargets: &spanner.InstancePartitionAutoscalingConfigAutoscalingTargetsArgs{
/// 					HighPriorityCpuUtilizationPercent: pulumi.Int(65),
/// 					StorageUtilizationPercent:         pulumi.Int(95),
/// 				},
/// 			},
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
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_spanner_instance" "main" {
///   name         = "test-instance"
///   config       = "nam6"
///   display_name = "main-instance"
///   num_nodes    = 1
///   edition      = "ENTERPRISE_PLUS"
/// }
/// resource "gcp_spanner_instancepartition" "partition" {
///   name         = "test-partition"
///   instance     = gcp_spanner_instance.main.name
///   config       = "nam8"
///   display_name = "test-spanner-partition"
///   autoscaling_config = {
///     autoscaling_limits = {
///       min_processing_units = 1000
///       max_processing_units = 2000
///     }
///     autoscaling_targets = {
///       high_priority_cpu_utilization_percent = 65
///       storage_utilization_percent           = 95
///     }
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.spanner.Instance;
/// import com.pulumi.gcp.spanner.InstanceArgs;
/// import com.pulumi.gcp.spanner.InstancePartition;
/// import com.pulumi.gcp.spanner.InstancePartitionArgs;
/// import com.pulumi.gcp.spanner.inputs.InstancePartitionAutoscalingConfigArgs;
/// import com.pulumi.gcp.spanner.inputs.InstancePartitionAutoscalingConfigAutoscalingLimitsArgs;
/// import com.pulumi.gcp.spanner.inputs.InstancePartitionAutoscalingConfigAutoscalingTargetsArgs;
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
///         var main = new Instance("main", InstanceArgs.builder()
///             .name("test-instance")
///             .config("nam6")
///             .displayName("main-instance")
///             .numNodes(1)
///             .edition("ENTERPRISE_PLUS")
///             .build());
///
///         var partition = new InstancePartition("partition", InstancePartitionArgs.builder()
///             .name("test-partition")
///             .instance(main.name())
///             .config("nam8")
///             .displayName("test-spanner-partition")
///             .autoscalingConfig(InstancePartitionAutoscalingConfigArgs.builder()
///                 .autoscalingLimits(InstancePartitionAutoscalingConfigAutoscalingLimitsArgs.builder()
///                     .minProcessingUnits(1000)
///                     .maxProcessingUnits(2000)
///                     .build())
///                 .autoscalingTargets(InstancePartitionAutoscalingConfigAutoscalingTargetsArgs.builder()
///                     .highPriorityCpuUtilizationPercent(65)
///                     .storageUtilizationPercent(95)
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   main:
///     type: gcp:spanner:Instance
///     properties:
///       name: test-instance
///       config: nam6
///       displayName: main-instance
///       numNodes: 1
///       edition: ENTERPRISE_PLUS
///   partition:
///     type: gcp:spanner:InstancePartition
///     properties:
///       name: test-partition
///       instance: ${main.name}
///       config: nam8
///       displayName: test-spanner-partition
///       autoscalingConfig:
///         autoscalingLimits:
///           minProcessingUnits: 1000
///           maxProcessingUnits: 2000
///         autoscalingTargets:
///           highPriorityCpuUtilizationPercent: 65
///           storageUtilizationPercent: 95
/// ```
///
///
/// ## Import
///
/// InstancePartition can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/instances/{{instance}}/instancePartitions/{{name}}`
/// * `{{project}}/{{instance}}/{{name}}`
/// * `{{instance}}/{{name}}`
///
///
/// When using the `pulumi import` command, InstancePartition can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:spanner/instancePartition:InstancePartition default projects/{{project}}/instances/{{instance}}/instancePartitions/{{name}}
/// $ pulumi import gcp:spanner/instancePartition:InstancePartition default {{project}}/{{instance}}/{{name}}
/// $ pulumi import gcp:spanner/instancePartition:InstancePartition default {{instance}}/{{name}}
/// ```
class InstancePartition extends pulumi.CustomResource {
  /// The autoscaling configuration. Autoscaling is enabled if this field is set.
  /// Exactly one of either node_count, processing_units, or autoscalingConfig must be
  /// present. When autoscaling is enabled, nodeCount and processingUnits are treated as
  /// OUTPUT_ONLY fields and reflect the current compute capacity allocated to the
  /// instance partition.
  /// Structure is documented below.
  late final pulumi.Output<InstancePartitionAutoscalingConfig?> autoscalingConfig;
  /// The name of the instance partition's configuration (similar to a region) which
  /// defines the geographic placement and replication of data in this instance partition.
  late final pulumi.Output<String> config;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// The descriptive name for this instance partition as it appears in UIs.
  /// Must be unique per project and between 4 and 30 characters in length.
  late final pulumi.Output<String> displayName;
  /// The instance to create the instance partition in.
  late final pulumi.Output<String> instance;
  /// A unique identifier for the instance partition, which cannot be changed after
  /// the instance partition is created. The name must be between 2 and 64 characters
  /// and match the regular expression [a-z][a-z0-9\\-]{0,61}[a-z0-9].
  late final pulumi.Output<String> name;
  /// The number of nodes allocated to this instance partition. One node equals
  /// 1000 processing units. Exactly one of either node_count, processing_units,
  /// or autoscalingConfig must be present.
  late final pulumi.Output<int> nodeCount;
  /// The number of processing units allocated to this instance partition.
  /// Exactly one of either node_count, processing_units, or autoscalingConfig
  /// must be present.
  late final pulumi.Output<int> processingUnits;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// The current instance partition state. Possible values are:
  /// CREATING: The instance partition is being created. Resources are being
  /// allocated for the instance partition.
  /// READY: The instance partition has been allocated resources and is ready for use.
  late final pulumi.Output<String> state;

  /// Creates a new [InstancePartition].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [InstancePartition]. {@macro pulumi_spanner_instance_partition_instance_partition_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  InstancePartition(
    String name, {
    InstancePartitionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:spanner/instancePartition:InstancePartition',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    autoscalingConfig = registerOutput<InstancePartitionAutoscalingConfig?>('autoscalingConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return InstancePartitionAutoscalingConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    config = registerOutput<String>('config');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    displayName = registerOutput<String>('displayName');
    instance = registerOutput<String>('instance');
    this.name = registerOutput<String>('name');
    nodeCount = registerOutput<int>('nodeCount');
    processingUnits = registerOutput<int>('processingUnits');
    project = registerOutput<String>('project');
    state = registerOutput<String>('state');
  }

  /// Gets an existing [InstancePartition] resource's state with the given [name] and [id].
  static InstancePartition get(
    String name,
    pulumi.Input<String> id, {
    InstancePartitionState? state,
  }) {
    return InstancePartition._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  InstancePartition._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:spanner/instancePartition:InstancePartition',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    autoscalingConfig = registerOutput<InstancePartitionAutoscalingConfig?>('autoscalingConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return InstancePartitionAutoscalingConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    config = registerOutput<String>('config');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    displayName = registerOutput<String>('displayName');
    instance = registerOutput<String>('instance');
    this.name = registerOutput<String>('name');
    nodeCount = registerOutput<int>('nodeCount');
    processingUnits = registerOutput<int>('processingUnits');
    project = registerOutput<String>('project');
    this.state = registerOutput<String>('state');
  }
}
