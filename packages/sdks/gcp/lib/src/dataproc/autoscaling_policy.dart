import 'package:pulumi/pulumi.dart' as pulumi;
import 'autoscaling_policy_args.dart';
import 'autoscaling_policy_basic_algorithm.dart';
import 'autoscaling_policy_secondary_worker_config.dart';
import 'autoscaling_policy_state.dart';
import 'autoscaling_policy_worker_config.dart';

/// Describes an autoscaling policy for Dataproc cluster autoscaler.
///
///
///
/// ## Example Usage
///
/// ### Dataproc Autoscaling Policy
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const asp = new gcp.dataproc.AutoscalingPolicy("asp", {
///     policyId: "dataproc-policy",
///     location: "us-east1",
///     workerConfig: {
///         maxInstances: 3,
///     },
///     basicAlgorithm: {
///         yarnConfig: {
///             gracefulDecommissionTimeout: "30s",
///             scaleUpFactor: 0.5,
///             scaleDownFactor: 0.5,
///         },
///     },
/// });
/// const basic = new gcp.dataproc.Cluster("basic", {
///     name: "dataproc-policy",
///     region: "us-east1",
///     clusterConfig: {
///         autoscalingConfig: {
///             policyUri: asp.name,
///         },
///         masterConfig: {
///             numInstances: 1,
///             machineType: "n4-standard-2",
///             diskConfig: {
///                 bootDiskType: "hyperdisk-balanced",
///                 bootDiskSizeGb: 35,
///             },
///         },
///         workerConfig: {
///             numInstances: 2,
///             machineType: "n4-standard-2",
///             diskConfig: {
///                 bootDiskType: "hyperdisk-balanced",
///                 bootDiskSizeGb: 35,
///             },
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// asp = gcp.dataproc.AutoscalingPolicy("asp",
///     policy_id="dataproc-policy",
///     location="us-east1",
///     worker_config={
///         "max_instances": 3,
///     },
///     basic_algorithm={
///         "yarn_config": {
///             "graceful_decommission_timeout": "30s",
///             "scale_up_factor": 0.5,
///             "scale_down_factor": 0.5,
///         },
///     })
/// basic = gcp.dataproc.Cluster("basic",
///     name="dataproc-policy",
///     region="us-east1",
///     cluster_config={
///         "autoscaling_config": {
///             "policy_uri": asp.name,
///         },
///         "master_config": {
///             "num_instances": 1,
///             "machine_type": "n4-standard-2",
///             "disk_config": {
///                 "boot_disk_type": "hyperdisk-balanced",
///                 "boot_disk_size_gb": 35,
///             },
///         },
///         "worker_config": {
///             "num_instances": 2,
///             "machine_type": "n4-standard-2",
///             "disk_config": {
///                 "boot_disk_type": "hyperdisk-balanced",
///                 "boot_disk_size_gb": 35,
///             },
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
///     var asp = new Gcp.Dataproc.AutoscalingPolicy("asp", new()
///     {
///         PolicyId = "dataproc-policy",
///         Location = "us-east1",
///         WorkerConfig = new Gcp.Dataproc.Inputs.AutoscalingPolicyWorkerConfigArgs
///         {
///             MaxInstances = 3,
///         },
///         BasicAlgorithm = new Gcp.Dataproc.Inputs.AutoscalingPolicyBasicAlgorithmArgs
///         {
///             YarnConfig = new Gcp.Dataproc.Inputs.AutoscalingPolicyBasicAlgorithmYarnConfigArgs
///             {
///                 GracefulDecommissionTimeout = "30s",
///                 ScaleUpFactor = 0.5,
///                 ScaleDownFactor = 0.5,
///             },
///         },
///     });
///
///     var basic = new Gcp.Dataproc.Cluster("basic", new()
///     {
///         Name = "dataproc-policy",
///         Region = "us-east1",
///         ClusterConfig = new Gcp.Dataproc.Inputs.ClusterClusterConfigArgs
///         {
///             AutoscalingConfig = new Gcp.Dataproc.Inputs.ClusterClusterConfigAutoscalingConfigArgs
///             {
///                 PolicyUri = asp.Name,
///             },
///             MasterConfig = new Gcp.Dataproc.Inputs.ClusterClusterConfigMasterConfigArgs
///             {
///                 NumInstances = 1,
///                 MachineType = "n4-standard-2",
///                 DiskConfig = new Gcp.Dataproc.Inputs.ClusterClusterConfigMasterConfigDiskConfigArgs
///                 {
///                     BootDiskType = "hyperdisk-balanced",
///                     BootDiskSizeGb = 35,
///                 },
///             },
///             WorkerConfig = new Gcp.Dataproc.Inputs.ClusterClusterConfigWorkerConfigArgs
///             {
///                 NumInstances = 2,
///                 MachineType = "n4-standard-2",
///                 DiskConfig = new Gcp.Dataproc.Inputs.ClusterClusterConfigWorkerConfigDiskConfigArgs
///                 {
///                     BootDiskType = "hyperdisk-balanced",
///                     BootDiskSizeGb = 35,
///                 },
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v10/go/gcp/dataproc"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		asp, err := dataproc.NewAutoscalingPolicy(ctx, "asp", &dataproc.AutoscalingPolicyArgs{
/// 			PolicyId: pulumi.String("dataproc-policy"),
/// 			Location: pulumi.String("us-east1"),
/// 			WorkerConfig: &dataproc.AutoscalingPolicyWorkerConfigArgs{
/// 				MaxInstances: pulumi.Int(3),
/// 			},
/// 			BasicAlgorithm: &dataproc.AutoscalingPolicyBasicAlgorithmArgs{
/// 				YarnConfig: &dataproc.AutoscalingPolicyBasicAlgorithmYarnConfigArgs{
/// 					GracefulDecommissionTimeout: pulumi.String("30s"),
/// 					ScaleUpFactor:               pulumi.Float64(0.5),
/// 					ScaleDownFactor:             pulumi.Float64(0.5),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = dataproc.NewCluster(ctx, "basic", &dataproc.ClusterArgs{
/// 			Name:   pulumi.String("dataproc-policy"),
/// 			Region: pulumi.String("us-east1"),
/// 			ClusterConfig: &dataproc.ClusterClusterConfigArgs{
/// 				AutoscalingConfig: &dataproc.ClusterClusterConfigAutoscalingConfigArgs{
/// 					PolicyUri: asp.Name,
/// 				},
/// 				MasterConfig: &dataproc.ClusterClusterConfigMasterConfigArgs{
/// 					NumInstances: pulumi.Int(1),
/// 					MachineType:  pulumi.String("n4-standard-2"),
/// 					DiskConfig: &dataproc.ClusterClusterConfigMasterConfigDiskConfigArgs{
/// 						BootDiskType:   pulumi.String("hyperdisk-balanced"),
/// 						BootDiskSizeGb: pulumi.Int(35),
/// 					},
/// 				},
/// 				WorkerConfig: &dataproc.ClusterClusterConfigWorkerConfigArgs{
/// 					NumInstances: pulumi.Int(2),
/// 					MachineType:  pulumi.String("n4-standard-2"),
/// 					DiskConfig: &dataproc.ClusterClusterConfigWorkerConfigDiskConfigArgs{
/// 						BootDiskType:   pulumi.String("hyperdisk-balanced"),
/// 						BootDiskSizeGb: pulumi.Int(35),
/// 					},
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
/// terraform {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_dataproc_cluster" "basic" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   name   = "dataproc-policy"
///   region = "us-east1"
///   cluster_config = {
///     autoscaling_config = {
///       policy_uri = gcp_dataproc_autoscaling_policy.asp.name
///     }
///     master_config = {
///       num_instances = 1
///       machine_type  = "n4-standard-2"
///       disk_config = {
///         boot_disk_type    = "hyperdisk-balanced"
///         boot_disk_size_gb = 35
///       }
///     }
///     worker_config = {
///       num_instances = 2
///       machine_type  = "n4-standard-2"
///       disk_config = {
///         boot_disk_type    = "hyperdisk-balanced"
///         boot_disk_size_gb = 35
///       }
///     }
///   }
/// }
/// resource "gcp_dataproc_autoscaling_policy" "asp" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   policy_id = "dataproc-policy"
///   location  = "us-east1"
///   worker_config = {
///     max_instances = 3
///   }
///   basic_algorithm = {
///     yarn_config = {
///       graceful_decommission_timeout = "30s"
///       scale_up_factor               = 0.5
///       scale_down_factor             = 0.5
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
/// import com.pulumi.gcp.dataproc.AutoscalingPolicy;
/// import com.pulumi.gcp.dataproc.AutoscalingPolicyArgs;
/// import com.pulumi.gcp.dataproc.inputs.AutoscalingPolicyWorkerConfigArgs;
/// import com.pulumi.gcp.dataproc.inputs.AutoscalingPolicyBasicAlgorithmArgs;
/// import com.pulumi.gcp.dataproc.inputs.AutoscalingPolicyBasicAlgorithmYarnConfigArgs;
/// import com.pulumi.gcp.dataproc.Cluster;
/// import com.pulumi.gcp.dataproc.ClusterArgs;
/// import com.pulumi.gcp.dataproc.inputs.ClusterClusterConfigArgs;
/// import com.pulumi.gcp.dataproc.inputs.ClusterClusterConfigAutoscalingConfigArgs;
/// import com.pulumi.gcp.dataproc.inputs.ClusterClusterConfigMasterConfigArgs;
/// import com.pulumi.gcp.dataproc.inputs.ClusterClusterConfigMasterConfigDiskConfigArgs;
/// import com.pulumi.gcp.dataproc.inputs.ClusterClusterConfigWorkerConfigArgs;
/// import com.pulumi.gcp.dataproc.inputs.ClusterClusterConfigWorkerConfigDiskConfigArgs;
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
///         var asp = new AutoscalingPolicy("asp", AutoscalingPolicyArgs.builder()
///             .policyId("dataproc-policy")
///             .location("us-east1")
///             .workerConfig(AutoscalingPolicyWorkerConfigArgs.builder()
///                 .maxInstances(3)
///                 .build())
///             .basicAlgorithm(AutoscalingPolicyBasicAlgorithmArgs.builder()
///                 .yarnConfig(AutoscalingPolicyBasicAlgorithmYarnConfigArgs.builder()
///                     .gracefulDecommissionTimeout("30s")
///                     .scaleUpFactor(0.5)
///                     .scaleDownFactor(0.5)
///                     .build())
///                 .build())
///             .build());
///
///         var basic = new Cluster("basic", ClusterArgs.builder()
///             .name("dataproc-policy")
///             .region("us-east1")
///             .clusterConfig(ClusterClusterConfigArgs.builder()
///                 .autoscalingConfig(ClusterClusterConfigAutoscalingConfigArgs.builder()
///                     .policyUri(asp.name())
///                     .build())
///                 .masterConfig(ClusterClusterConfigMasterConfigArgs.builder()
///                     .numInstances(1)
///                     .machineType("n4-standard-2")
///                     .diskConfig(ClusterClusterConfigMasterConfigDiskConfigArgs.builder()
///                         .bootDiskType("hyperdisk-balanced")
///                         .bootDiskSizeGb(35)
///                         .build())
///                     .build())
///                 .workerConfig(ClusterClusterConfigWorkerConfigArgs.builder()
///                     .numInstances(2)
///                     .machineType("n4-standard-2")
///                     .diskConfig(ClusterClusterConfigWorkerConfigDiskConfigArgs.builder()
///                         .bootDiskType("hyperdisk-balanced")
///                         .bootDiskSizeGb(35)
///                         .build())
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   basic:
///     type: gcp:dataproc:Cluster
///     properties:
///       name: dataproc-policy
///       region: us-east1
///       clusterConfig:
///         autoscalingConfig:
///           policyUri: ${asp.name}
///         masterConfig:
///           numInstances: 1
///           machineType: n4-standard-2
///           diskConfig:
///             bootDiskType: hyperdisk-balanced
///             bootDiskSizeGb: 35
///         workerConfig:
///           numInstances: 2
///           machineType: n4-standard-2
///           diskConfig:
///             bootDiskType: hyperdisk-balanced
///             bootDiskSizeGb: 35
///   asp:
///     type: gcp:dataproc:AutoscalingPolicy
///     properties:
///       policyId: dataproc-policy
///       location: us-east1
///       workerConfig:
///         maxInstances: 3
///       basicAlgorithm:
///         yarnConfig:
///           gracefulDecommissionTimeout: 30s
///           scaleUpFactor: 0.5
///           scaleDownFactor: 0.5
/// ```
///
///
/// ## Import
///
/// AutoscalingPolicy can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/autoscalingPolicies/{{policy_id}}`
/// * `{{project}}/{{location}}/{{policy_id}}`
/// * `{{location}}/{{policy_id}}`
///
///
/// When using the `pulumi import` command, AutoscalingPolicy can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:dataproc/autoscalingPolicy:AutoscalingPolicy default projects/{{project}}/locations/{{location}}/autoscalingPolicies/{{policy_id}}
/// $ pulumi import gcp:dataproc/autoscalingPolicy:AutoscalingPolicy default {{project}}/{{location}}/{{policy_id}}
/// $ pulumi import gcp:dataproc/autoscalingPolicy:AutoscalingPolicy default {{location}}/{{policy_id}}
/// ```
class AutoscalingPolicy extends pulumi.CustomResource {
  /// Basic algorithm for autoscaling.
  /// Structure is documented below.
  late final pulumi.Output<AutoscalingPolicyBasicAlgorithm?> basicAlgorithm;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// The  location where the autoscaling policy should reside.
  /// The default value is `global`.
  late final pulumi.Output<String?> location;
  /// The "resource name" of the autoscaling policy.
  late final pulumi.Output<String> name;
  /// The policy id. The id must contain only letters (a-z, A-Z), numbers (0-9), underscores (_),
  /// and hyphens (-). Cannot begin or end with underscore or hyphen. Must consist of between
  /// 3 and 50 characters.
  late final pulumi.Output<String> policyId;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// Describes how the autoscaler will operate for secondary workers.
  /// Structure is documented below.
  late final pulumi.Output<AutoscalingPolicySecondaryWorkerConfig?> secondaryWorkerConfig;
  /// Describes how the autoscaler will operate for primary workers.
  /// Structure is documented below.
  late final pulumi.Output<AutoscalingPolicyWorkerConfig?> workerConfig;

  /// Creates a new [AutoscalingPolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AutoscalingPolicy]. {@macro pulumi_dataproc_autoscaling_policy_autoscaling_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AutoscalingPolicy(
    String name, {
    AutoscalingPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:dataproc/autoscalingPolicy:AutoscalingPolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '10.1.1').merge(options),
        ) {
    basicAlgorithm = registerOutput<AutoscalingPolicyBasicAlgorithm?>('basicAlgorithm', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AutoscalingPolicyBasicAlgorithm.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    deletionPolicy = registerOutput<String>('deletionPolicy');
    location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    policyId = registerOutput<String>('policyId');
    project = registerOutput<String>('project');
    secondaryWorkerConfig = registerOutput<AutoscalingPolicySecondaryWorkerConfig?>('secondaryWorkerConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AutoscalingPolicySecondaryWorkerConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    workerConfig = registerOutput<AutoscalingPolicyWorkerConfig?>('workerConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AutoscalingPolicyWorkerConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Gets an existing [AutoscalingPolicy] resource's state with the given [name] and [id].
  static AutoscalingPolicy get(
    String name,
    pulumi.Input<String> id, {
    AutoscalingPolicyState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return AutoscalingPolicy._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  AutoscalingPolicy._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:dataproc/autoscalingPolicy:AutoscalingPolicy',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    basicAlgorithm = registerOutput<AutoscalingPolicyBasicAlgorithm?>('basicAlgorithm', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AutoscalingPolicyBasicAlgorithm.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    deletionPolicy = registerOutput<String>('deletionPolicy');
    location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    policyId = registerOutput<String>('policyId');
    project = registerOutput<String>('project');
    secondaryWorkerConfig = registerOutput<AutoscalingPolicySecondaryWorkerConfig?>('secondaryWorkerConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AutoscalingPolicySecondaryWorkerConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    workerConfig = registerOutput<AutoscalingPolicyWorkerConfig?>('workerConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AutoscalingPolicyWorkerConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Creates a typed reference to an existing [AutoscalingPolicy] resource.
  AutoscalingPolicy.reference(String urn)
    : super(
        'gcp:dataproc/autoscalingPolicy:AutoscalingPolicy',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    basicAlgorithm = registerOutput<AutoscalingPolicyBasicAlgorithm?>('basicAlgorithm', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AutoscalingPolicyBasicAlgorithm.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    deletionPolicy = registerOutput<String>('deletionPolicy');
    location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    policyId = registerOutput<String>('policyId');
    project = registerOutput<String>('project');
    secondaryWorkerConfig = registerOutput<AutoscalingPolicySecondaryWorkerConfig?>('secondaryWorkerConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AutoscalingPolicySecondaryWorkerConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    workerConfig = registerOutput<AutoscalingPolicyWorkerConfig?>('workerConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AutoscalingPolicyWorkerConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
