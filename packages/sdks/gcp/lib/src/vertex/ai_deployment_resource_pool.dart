import 'package:pulumi/pulumi.dart' as pulumi;
import 'ai_deployment_resource_pool_args.dart';
import 'ai_deployment_resource_pool_dedicated_resources.dart';
import 'ai_deployment_resource_pool_state.dart';

/// 'DeploymentResourcePool can be shared by multiple deployed models,
/// whose underlying specification consists of dedicated resources.'
///
///
/// To get more information about DeploymentResourcePool, see:
///
/// * [API documentation](https://cloud.google.com/vertex-ai/docs/reference/rest/v1/projects.locations.deploymentResourcePools)
///
/// ## Example Usage
///
/// ### Vertex Ai Deployment Resource Pool
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const deploymentResourcePool = new gcp.vertex.AiDeploymentResourcePool("deployment_resource_pool", {
///     region: "us-central1",
///     name: "example-deployment-resource-pool",
///     dedicatedResources: {
///         machineSpec: {
///             machineType: "n1-standard-4",
///             acceleratorType: "NVIDIA_TESLA_P4",
///             acceleratorCount: 1,
///         },
///         minReplicaCount: 1,
///         maxReplicaCount: 2,
///         autoscalingMetricSpecs: [{
///             metricName: "aiplatform.googleapis.com/prediction/online/accelerator/duty_cycle",
///             target: 60,
///         }],
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// deployment_resource_pool = gcp.vertex.AiDeploymentResourcePool("deployment_resource_pool",
///     region="us-central1",
///     name="example-deployment-resource-pool",
///     dedicated_resources={
///         "machine_spec": {
///             "machine_type": "n1-standard-4",
///             "accelerator_type": "NVIDIA_TESLA_P4",
///             "accelerator_count": 1,
///         },
///         "min_replica_count": 1,
///         "max_replica_count": 2,
///         "autoscaling_metric_specs": [{
///             "metric_name": "aiplatform.googleapis.com/prediction/online/accelerator/duty_cycle",
///             "target": 60,
///         }],
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
///     var deploymentResourcePool = new Gcp.Vertex.AiDeploymentResourcePool("deployment_resource_pool", new()
///     {
///         Region = "us-central1",
///         Name = "example-deployment-resource-pool",
///         DedicatedResources = new Gcp.Vertex.Inputs.AiDeploymentResourcePoolDedicatedResourcesArgs
///         {
///             MachineSpec = new Gcp.Vertex.Inputs.AiDeploymentResourcePoolDedicatedResourcesMachineSpecArgs
///             {
///                 MachineType = "n1-standard-4",
///                 AcceleratorType = "NVIDIA_TESLA_P4",
///                 AcceleratorCount = 1,
///             },
///             MinReplicaCount = 1,
///             MaxReplicaCount = 2,
///             AutoscalingMetricSpecs = new[]
///             {
///                 new Gcp.Vertex.Inputs.AiDeploymentResourcePoolDedicatedResourcesAutoscalingMetricSpecArgs
///                 {
///                     MetricName = "aiplatform.googleapis.com/prediction/online/accelerator/duty_cycle",
///                     Target = 60,
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/vertex"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := vertex.NewAiDeploymentResourcePool(ctx, "deployment_resource_pool", &vertex.AiDeploymentResourcePoolArgs{
/// 			Region: pulumi.String("us-central1"),
/// 			Name:   pulumi.String("example-deployment-resource-pool"),
/// 			DedicatedResources: &vertex.AiDeploymentResourcePoolDedicatedResourcesArgs{
/// 				MachineSpec: &vertex.AiDeploymentResourcePoolDedicatedResourcesMachineSpecArgs{
/// 					MachineType:      pulumi.String("n1-standard-4"),
/// 					AcceleratorType:  pulumi.String("NVIDIA_TESLA_P4"),
/// 					AcceleratorCount: pulumi.Int(1),
/// 				},
/// 				MinReplicaCount: pulumi.Int(1),
/// 				MaxReplicaCount: pulumi.Int(2),
/// 				AutoscalingMetricSpecs: vertex.AiDeploymentResourcePoolDedicatedResourcesAutoscalingMetricSpecArray{
/// 					&vertex.AiDeploymentResourcePoolDedicatedResourcesAutoscalingMetricSpecArgs{
/// 						MetricName: pulumi.String("aiplatform.googleapis.com/prediction/online/accelerator/duty_cycle"),
/// 						Target:     pulumi.Int(60),
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
/// pulumi {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_vertex_aideploymentresourcepool" "deployment_resource_pool" {
///   region = "us-central1"
///   name   = "example-deployment-resource-pool"
///   dedicated_resources = {
///     machine_spec = {
///       machine_type      = "n1-standard-4"
///       accelerator_type  = "NVIDIA_TESLA_P4"
///       accelerator_count = 1
///     }
///     min_replica_count = 1
///     max_replica_count = 2
///     autoscaling_metric_specs = [{
///       "metricName" = "aiplatform.googleapis.com/prediction/online/accelerator/duty_cycle"
///       "target"     = 60
///     }]
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.vertex.AiDeploymentResourcePool;
/// import com.pulumi.gcp.vertex.AiDeploymentResourcePoolArgs;
/// import com.pulumi.gcp.vertex.inputs.AiDeploymentResourcePoolDedicatedResourcesArgs;
/// import com.pulumi.gcp.vertex.inputs.AiDeploymentResourcePoolDedicatedResourcesMachineSpecArgs;
/// import com.pulumi.gcp.vertex.inputs.AiDeploymentResourcePoolDedicatedResourcesAutoscalingMetricSpecArgs;
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
///         var deploymentResourcePool = new AiDeploymentResourcePool("deploymentResourcePool", AiDeploymentResourcePoolArgs.builder()
///             .region("us-central1")
///             .name("example-deployment-resource-pool")
///             .dedicatedResources(AiDeploymentResourcePoolDedicatedResourcesArgs.builder()
///                 .machineSpec(AiDeploymentResourcePoolDedicatedResourcesMachineSpecArgs.builder()
///                     .machineType("n1-standard-4")
///                     .acceleratorType("NVIDIA_TESLA_P4")
///                     .acceleratorCount(1)
///                     .build())
///                 .minReplicaCount(1)
///                 .maxReplicaCount(2)
///                 .autoscalingMetricSpecs(AiDeploymentResourcePoolDedicatedResourcesAutoscalingMetricSpecArgs.builder()
///                     .metricName("aiplatform.googleapis.com/prediction/online/accelerator/duty_cycle")
///                     .target(60)
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   deploymentResourcePool:
///     type: gcp:vertex:AiDeploymentResourcePool
///     name: deployment_resource_pool
///     properties:
///       region: us-central1
///       name: example-deployment-resource-pool
///       dedicatedResources:
///         machineSpec:
///           machineType: n1-standard-4
///           acceleratorType: NVIDIA_TESLA_P4
///           acceleratorCount: 1
///         minReplicaCount: 1
///         maxReplicaCount: 2
///         autoscalingMetricSpecs:
///           - metricName: aiplatform.googleapis.com/prediction/online/accelerator/duty_cycle
///             target: 60
/// ```
///
///
/// ## Import
///
/// DeploymentResourcePool can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{region}}/deploymentResourcePools/{{name}}`
/// * `{{project}}/{{region}}/{{name}}`
/// * `{{region}}/{{name}}`
/// * `{{name}}`
///
///
/// When using the `pulumi import` command, DeploymentResourcePool can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:vertex/aiDeploymentResourcePool:AiDeploymentResourcePool default projects/{{project}}/locations/{{region}}/deploymentResourcePools/{{name}}
/// $ pulumi import gcp:vertex/aiDeploymentResourcePool:AiDeploymentResourcePool default {{project}}/{{region}}/{{name}}
/// $ pulumi import gcp:vertex/aiDeploymentResourcePool:AiDeploymentResourcePool default {{region}}/{{name}}
/// $ pulumi import gcp:vertex/aiDeploymentResourcePool:AiDeploymentResourcePool default {{name}}
/// ```
class AiDeploymentResourcePool extends pulumi.CustomResource {
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits.
  late final pulumi.Output<String> createTime;
  /// The underlying dedicated resources that the deployment resource pool uses.
  /// Structure is documented below.
  late final pulumi.Output<AiDeploymentResourcePoolDedicatedResources?> dedicatedResources;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// The resource name of deployment resource pool. The maximum length is 63 characters, and valid characters are `/^a-z?$/`.
  late final pulumi.Output<String> name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// The region of deployment resource pool. eg us-central1
  late final pulumi.Output<String?> region;

  /// Creates a new [AiDeploymentResourcePool].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AiDeploymentResourcePool]. {@macro pulumi_vertex_ai_deployment_resource_pool_ai_deployment_resource_pool_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AiDeploymentResourcePool(
    String name, {
    AiDeploymentResourcePoolArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:vertex/aiDeploymentResourcePool:AiDeploymentResourcePool',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.36.1').merge(options),
        ) {
    createTime = registerOutput<String>('createTime');
    dedicatedResources = registerOutput<AiDeploymentResourcePoolDedicatedResources?>('dedicatedResources', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AiDeploymentResourcePoolDedicatedResources.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    deletionPolicy = registerOutput<String>('deletionPolicy');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    region = registerOutput<String?>('region');
  }

  /// Gets an existing [AiDeploymentResourcePool] resource's state with the given [name] and [id].
  static AiDeploymentResourcePool get(
    String name,
    pulumi.Input<String> id, {
    AiDeploymentResourcePoolState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return AiDeploymentResourcePool._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  AiDeploymentResourcePool._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:vertex/aiDeploymentResourcePool:AiDeploymentResourcePool',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    createTime = registerOutput<String>('createTime');
    dedicatedResources = registerOutput<AiDeploymentResourcePoolDedicatedResources?>('dedicatedResources', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AiDeploymentResourcePoolDedicatedResources.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    deletionPolicy = registerOutput<String>('deletionPolicy');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    region = registerOutput<String?>('region');
  }

  /// Creates a typed reference to an existing [AiDeploymentResourcePool] resource.
  AiDeploymentResourcePool.reference(String urn)
    : super(
        'gcp:vertex/aiDeploymentResourcePool:AiDeploymentResourcePool',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    createTime = registerOutput<String>('createTime');
    dedicatedResources = registerOutput<AiDeploymentResourcePoolDedicatedResources?>('dedicatedResources', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AiDeploymentResourcePoolDedicatedResources.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    deletionPolicy = registerOutput<String>('deletionPolicy');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    region = registerOutput<String?>('region');
  }
}
