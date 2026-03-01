import 'package:pulumi/pulumi.dart' as pulumi;
import 'region_autoscaler_args.dart';
import 'region_autoscaler_autoscaling_policy.dart';
import 'region_autoscaler_state.dart';

/// Represents an Autoscaler resource.
///
/// Autoscalers allow you to automatically scale virtual machine instances in
/// managed instance groups according to an autoscaling policy that you
/// define.
///
///
/// To get more information about RegionAutoscaler, see:
///
/// * [API documentation](https://cloud.google.com/compute/docs/reference/rest/v1/regionAutoscalers)
/// * How-to Guides
/// * [Autoscaling Groups of Instances](https://cloud.google.com/compute/docs/autoscaler/)
///
/// ## Example Usage
///
/// ### Region Autoscaler Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const foobarInstanceTemplate = new gcp.compute.InstanceTemplate("foobar", {
///     name: "my-instance-template",
///     machineType: "e2-standard-4",
///     disks: [{
///         sourceImage: "debian-cloud/debian-11",
///         diskSizeGb: 250,
///     }],
///     networkInterfaces: [{
///         network: "default",
///         accessConfigs: [{
///             networkTier: "PREMIUM",
///         }],
///     }],
///     serviceAccount: {
///         scopes: [
///             "https://www.googleapis.com/auth/devstorage.read_only",
///             "https://www.googleapis.com/auth/logging.write",
///             "https://www.googleapis.com/auth/monitoring.write",
///             "https://www.googleapis.com/auth/pubsub",
///             "https://www.googleapis.com/auth/service.management.readonly",
///             "https://www.googleapis.com/auth/servicecontrol",
///             "https://www.googleapis.com/auth/trace.append",
///         ],
///     },
/// });
/// const foobarTargetPool = new gcp.compute.TargetPool("foobar", {name: "my-target-pool"});
/// const foobarRegionInstanceGroupManager = new gcp.compute.RegionInstanceGroupManager("foobar", {
///     name: "my-region-igm",
///     region: "us-central1",
///     versions: [{
///         instanceTemplate: foobarInstanceTemplate.id,
///         name: "primary",
///     }],
///     targetPools: [foobarTargetPool.id],
///     baseInstanceName: "foobar",
/// });
/// const foobar = new gcp.compute.RegionAutoscaler("foobar", {
///     name: "my-region-autoscaler",
///     region: "us-central1",
///     target: foobarRegionInstanceGroupManager.id,
///     autoscalingPolicy: {
///         maxReplicas: 5,
///         minReplicas: 1,
///         cooldownPeriod: 60,
///         cpuUtilization: {
///             target: 0.5,
///         },
///     },
/// });
/// const debian9 = gcp.compute.getImage({
///     family: "debian-11",
///     project: "debian-cloud",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// foobar_instance_template = gcp.compute.InstanceTemplate("foobar",
///     name="my-instance-template",
///     machine_type="e2-standard-4",
///     disks=[{
///         "source_image": "debian-cloud/debian-11",
///         "disk_size_gb": 250,
///     }],
///     network_interfaces=[{
///         "network": "default",
///         "access_configs": [{
///             "network_tier": "PREMIUM",
///         }],
///     }],
///     service_account={
///         "scopes": [
///             "https://www.googleapis.com/auth/devstorage.read_only",
///             "https://www.googleapis.com/auth/logging.write",
///             "https://www.googleapis.com/auth/monitoring.write",
///             "https://www.googleapis.com/auth/pubsub",
///             "https://www.googleapis.com/auth/service.management.readonly",
///             "https://www.googleapis.com/auth/servicecontrol",
///             "https://www.googleapis.com/auth/trace.append",
///         ],
///     })
/// foobar_target_pool = gcp.compute.TargetPool("foobar", name="my-target-pool")
/// foobar_region_instance_group_manager = gcp.compute.RegionInstanceGroupManager("foobar",
///     name="my-region-igm",
///     region="us-central1",
///     versions=[{
///         "instance_template": foobar_instance_template.id,
///         "name": "primary",
///     }],
///     target_pools=[foobar_target_pool.id],
///     base_instance_name="foobar")
/// foobar = gcp.compute.RegionAutoscaler("foobar",
///     name="my-region-autoscaler",
///     region="us-central1",
///     target=foobar_region_instance_group_manager.id,
///     autoscaling_policy={
///         "max_replicas": 5,
///         "min_replicas": 1,
///         "cooldown_period": 60,
///         "cpu_utilization": {
///             "target": 0.5,
///         },
///     })
/// debian9 = gcp.compute.get_image(family="debian-11",
///     project="debian-cloud")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var foobarInstanceTemplate = new Gcp.Compute.InstanceTemplate("foobar", new()
///     {
///         Name = "my-instance-template",
///         MachineType = "e2-standard-4",
///         Disks = new[]
///         {
///             new Gcp.Compute.Inputs.InstanceTemplateDiskArgs
///             {
///                 SourceImage = "debian-cloud/debian-11",
///                 DiskSizeGb = 250,
///             },
///         },
///         NetworkInterfaces = new[]
///         {
///             new Gcp.Compute.Inputs.InstanceTemplateNetworkInterfaceArgs
///             {
///                 Network = "default",
///                 AccessConfigs = new[]
///                 {
///                     new Gcp.Compute.Inputs.InstanceTemplateNetworkInterfaceAccessConfigArgs
///                     {
///                         NetworkTier = "PREMIUM",
///                     },
///                 },
///             },
///         },
///         ServiceAccount = new Gcp.Compute.Inputs.InstanceTemplateServiceAccountArgs
///         {
///             Scopes = new[]
///             {
///                 "https://www.googleapis.com/auth/devstorage.read_only",
///                 "https://www.googleapis.com/auth/logging.write",
///                 "https://www.googleapis.com/auth/monitoring.write",
///                 "https://www.googleapis.com/auth/pubsub",
///                 "https://www.googleapis.com/auth/service.management.readonly",
///                 "https://www.googleapis.com/auth/servicecontrol",
///                 "https://www.googleapis.com/auth/trace.append",
///             },
///         },
///     });
///
///     var foobarTargetPool = new Gcp.Compute.TargetPool("foobar", new()
///     {
///         Name = "my-target-pool",
///     });
///
///     var foobarRegionInstanceGroupManager = new Gcp.Compute.RegionInstanceGroupManager("foobar", new()
///     {
///         Name = "my-region-igm",
///         Region = "us-central1",
///         Versions = new[]
///         {
///             new Gcp.Compute.Inputs.RegionInstanceGroupManagerVersionArgs
///             {
///                 InstanceTemplate = foobarInstanceTemplate.Id,
///                 Name = "primary",
///             },
///         },
///         TargetPools = new[]
///         {
///             foobarTargetPool.Id,
///         },
///         BaseInstanceName = "foobar",
///     });
///
///     var foobar = new Gcp.Compute.RegionAutoscaler("foobar", new()
///     {
///         Name = "my-region-autoscaler",
///         Region = "us-central1",
///         Target = foobarRegionInstanceGroupManager.Id,
///         AutoscalingPolicy = new Gcp.Compute.Inputs.RegionAutoscalerAutoscalingPolicyArgs
///         {
///             MaxReplicas = 5,
///             MinReplicas = 1,
///             CooldownPeriod = 60,
///             CpuUtilization = new Gcp.Compute.Inputs.RegionAutoscalerAutoscalingPolicyCpuUtilizationArgs
///             {
///                 Target = 0.5,
///             },
///         },
///     });
///
///     var debian9 = Gcp.Compute.GetImage.Invoke(new()
///     {
///         Family = "debian-11",
///         Project = "debian-cloud",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		foobarInstanceTemplate, err := compute.NewInstanceTemplate(ctx, "foobar", &compute.InstanceTemplateArgs{
/// 			Name:        pulumi.String("my-instance-template"),
/// 			MachineType: pulumi.String("e2-standard-4"),
/// 			Disks: compute.InstanceTemplateDiskArray{
/// 				&compute.InstanceTemplateDiskArgs{
/// 					SourceImage: pulumi.String("debian-cloud/debian-11"),
/// 					DiskSizeGb:  pulumi.Int(250),
/// 				},
/// 			},
/// 			NetworkInterfaces: compute.InstanceTemplateNetworkInterfaceArray{
/// 				&compute.InstanceTemplateNetworkInterfaceArgs{
/// 					Network: pulumi.String("default"),
/// 					AccessConfigs: compute.InstanceTemplateNetworkInterfaceAccessConfigArray{
/// 						&compute.InstanceTemplateNetworkInterfaceAccessConfigArgs{
/// 							NetworkTier: pulumi.String("PREMIUM"),
/// 						},
/// 					},
/// 				},
/// 			},
/// 			ServiceAccount: &compute.InstanceTemplateServiceAccountArgs{
/// 				Scopes: pulumi.StringArray{
/// 					pulumi.String("https://www.googleapis.com/auth/devstorage.read_only"),
/// 					pulumi.String("https://www.googleapis.com/auth/logging.write"),
/// 					pulumi.String("https://www.googleapis.com/auth/monitoring.write"),
/// 					pulumi.String("https://www.googleapis.com/auth/pubsub"),
/// 					pulumi.String("https://www.googleapis.com/auth/service.management.readonly"),
/// 					pulumi.String("https://www.googleapis.com/auth/servicecontrol"),
/// 					pulumi.String("https://www.googleapis.com/auth/trace.append"),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		foobarTargetPool, err := compute.NewTargetPool(ctx, "foobar", &compute.TargetPoolArgs{
/// 			Name: pulumi.String("my-target-pool"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		foobarRegionInstanceGroupManager, err := compute.NewRegionInstanceGroupManager(ctx, "foobar", &compute.RegionInstanceGroupManagerArgs{
/// 			Name:   pulumi.String("my-region-igm"),
/// 			Region: pulumi.String("us-central1"),
/// 			Versions: compute.RegionInstanceGroupManagerVersionArray{
/// 				&compute.RegionInstanceGroupManagerVersionArgs{
/// 					InstanceTemplate: foobarInstanceTemplate.ID(),
/// 					Name:             pulumi.String("primary"),
/// 				},
/// 			},
/// 			TargetPools: pulumi.StringArray{
/// 				foobarTargetPool.ID(),
/// 			},
/// 			BaseInstanceName: pulumi.String("foobar"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewRegionAutoscaler(ctx, "foobar", &compute.RegionAutoscalerArgs{
/// 			Name:   pulumi.String("my-region-autoscaler"),
/// 			Region: pulumi.String("us-central1"),
/// 			Target: foobarRegionInstanceGroupManager.ID(),
/// 			AutoscalingPolicy: &compute.RegionAutoscalerAutoscalingPolicyArgs{
/// 				MaxReplicas:    pulumi.Int(5),
/// 				MinReplicas:    pulumi.Int(1),
/// 				CooldownPeriod: pulumi.Int(60),
/// 				CpuUtilization: &compute.RegionAutoscalerAutoscalingPolicyCpuUtilizationArgs{
/// 					Target: pulumi.Float64(0.5),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.LookupImage(ctx, &compute.LookupImageArgs{
/// 			Family:  pulumi.StringRef("debian-11"),
/// 			Project: pulumi.StringRef("debian-cloud"),
/// 		}, nil)
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
/// import com.pulumi.gcp.compute.InstanceTemplate;
/// import com.pulumi.gcp.compute.InstanceTemplateArgs;
/// import com.pulumi.gcp.compute.inputs.InstanceTemplateDiskArgs;
/// import com.pulumi.gcp.compute.inputs.InstanceTemplateNetworkInterfaceArgs;
/// import com.pulumi.gcp.compute.inputs.InstanceTemplateServiceAccountArgs;
/// import com.pulumi.gcp.compute.TargetPool;
/// import com.pulumi.gcp.compute.TargetPoolArgs;
/// import com.pulumi.gcp.compute.RegionInstanceGroupManager;
/// import com.pulumi.gcp.compute.RegionInstanceGroupManagerArgs;
/// import com.pulumi.gcp.compute.inputs.RegionInstanceGroupManagerVersionArgs;
/// import com.pulumi.gcp.compute.RegionAutoscaler;
/// import com.pulumi.gcp.compute.RegionAutoscalerArgs;
/// import com.pulumi.gcp.compute.inputs.RegionAutoscalerAutoscalingPolicyArgs;
/// import com.pulumi.gcp.compute.inputs.RegionAutoscalerAutoscalingPolicyCpuUtilizationArgs;
/// import com.pulumi.gcp.compute.ComputeFunctions;
/// import com.pulumi.gcp.compute.inputs.GetImageArgs;
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
///         var foobarInstanceTemplate = new InstanceTemplate("foobarInstanceTemplate", InstanceTemplateArgs.builder()
///             .name("my-instance-template")
///             .machineType("e2-standard-4")
///             .disks(InstanceTemplateDiskArgs.builder()
///                 .sourceImage("debian-cloud/debian-11")
///                 .diskSizeGb(250)
///                 .build())
///             .networkInterfaces(InstanceTemplateNetworkInterfaceArgs.builder()
///                 .network("default")
///                 .accessConfigs(InstanceTemplateNetworkInterfaceAccessConfigArgs.builder()
///                     .networkTier("PREMIUM")
///                     .build())
///                 .build())
///             .serviceAccount(InstanceTemplateServiceAccountArgs.builder()
///                 .scopes(
///                     "https://www.googleapis.com/auth/devstorage.read_only",
///                     "https://www.googleapis.com/auth/logging.write",
///                     "https://www.googleapis.com/auth/monitoring.write",
///                     "https://www.googleapis.com/auth/pubsub",
///                     "https://www.googleapis.com/auth/service.management.readonly",
///                     "https://www.googleapis.com/auth/servicecontrol",
///                     "https://www.googleapis.com/auth/trace.append")
///                 .build())
///             .build());
///
///         var foobarTargetPool = new TargetPool("foobarTargetPool", TargetPoolArgs.builder()
///             .name("my-target-pool")
///             .build());
///
///         var foobarRegionInstanceGroupManager = new RegionInstanceGroupManager("foobarRegionInstanceGroupManager", RegionInstanceGroupManagerArgs.builder()
///             .name("my-region-igm")
///             .region("us-central1")
///             .versions(RegionInstanceGroupManagerVersionArgs.builder()
///                 .instanceTemplate(foobarInstanceTemplate.id())
///                 .name("primary")
///                 .build())
///             .targetPools(foobarTargetPool.id())
///             .baseInstanceName("foobar")
///             .build());
///
///         var foobar = new RegionAutoscaler("foobar", RegionAutoscalerArgs.builder()
///             .name("my-region-autoscaler")
///             .region("us-central1")
///             .target(foobarRegionInstanceGroupManager.id())
///             .autoscalingPolicy(RegionAutoscalerAutoscalingPolicyArgs.builder()
///                 .maxReplicas(5)
///                 .minReplicas(1)
///                 .cooldownPeriod(60)
///                 .cpuUtilization(RegionAutoscalerAutoscalingPolicyCpuUtilizationArgs.builder()
///                     .target(0.5)
///                     .build())
///                 .build())
///             .build());
///
///         final var debian9 = ComputeFunctions.getImage(GetImageArgs.builder()
///             .family("debian-11")
///             .project("debian-cloud")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   foobar:
///     type: gcp:compute:RegionAutoscaler
///     properties:
///       name: my-region-autoscaler
///       region: us-central1
///       target: ${foobarRegionInstanceGroupManager.id}
///       autoscalingPolicy:
///         maxReplicas: 5
///         minReplicas: 1
///         cooldownPeriod: 60
///         cpuUtilization:
///           target: 0.5
///   foobarInstanceTemplate:
///     type: gcp:compute:InstanceTemplate
///     name: foobar
///     properties:
///       name: my-instance-template
///       machineType: e2-standard-4
///       disks:
///         - sourceImage: debian-cloud/debian-11
///           diskSizeGb: 250
///       networkInterfaces:
///         - network: default
///           accessConfigs:
///             - networkTier: PREMIUM
///       serviceAccount:
///         scopes:
///           - https://www.googleapis.com/auth/devstorage.read_only
///           - https://www.googleapis.com/auth/logging.write
///           - https://www.googleapis.com/auth/monitoring.write
///           - https://www.googleapis.com/auth/pubsub
///           - https://www.googleapis.com/auth/service.management.readonly
///           - https://www.googleapis.com/auth/servicecontrol
///           - https://www.googleapis.com/auth/trace.append
///   foobarTargetPool:
///     type: gcp:compute:TargetPool
///     name: foobar
///     properties:
///       name: my-target-pool
///   foobarRegionInstanceGroupManager:
///     type: gcp:compute:RegionInstanceGroupManager
///     name: foobar
///     properties:
///       name: my-region-igm
///       region: us-central1
///       versions:
///         - instanceTemplate: ${foobarInstanceTemplate.id}
///           name: primary
///       targetPools:
///         - ${foobarTargetPool.id}
///       baseInstanceName: foobar
/// variables:
///   debian9:
///     fn::invoke:
///       function: gcp:compute:getImage
///       arguments:
///         family: debian-11
///         project: debian-cloud
/// ```
///
///
/// ## Import
///
/// RegionAutoscaler can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/regions/{{region}}/autoscalers/{{name}}`
///
/// * `{{project}}/{{region}}/{{name}}`
///
/// * `{{region}}/{{name}}`
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, RegionAutoscaler can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:compute/regionAutoscaler:RegionAutoscaler default projects/{{project}}/regions/{{region}}/autoscalers/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/regionAutoscaler:RegionAutoscaler default {{project}}/{{region}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/regionAutoscaler:RegionAutoscaler default {{region}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/regionAutoscaler:RegionAutoscaler default {{name}}
/// ```
class RegionAutoscaler extends pulumi.CustomResource {
  /// The configuration parameters for the autoscaling algorithm. You can
  /// define one or more of the policies for an autoscaler: cpuUtilization,
  /// customMetricUtilizations, and loadBalancingUtilization.
  /// If none of these are specified, the default will be to autoscale based
  /// on cpuUtilization to 0.6 or 60%.
  /// Structure is documented below.
  late final pulumi.Output<RegionAutoscalerAutoscalingPolicy> autoscalingPolicy;
  /// Creation timestamp in RFC3339 text format.
  late final pulumi.Output<String> creationTimestamp;
  /// An optional description of this resource.
  late final pulumi.Output<String?> description;
  /// Name of the resource. The name must be 1-63 characters long and match
  /// the regular expression `a-z?` which means the
  /// first character must be a lowercase letter, and all following
  /// characters must be a dash, lowercase letter, or digit, except the last
  /// character, which cannot be a dash.
  late final pulumi.Output<String> name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// URL of the region where the instance group resides.
  late final pulumi.Output<String> region;
  /// The URI of the created resource.
  late final pulumi.Output<String> selfLink;
  /// URL of the managed instance group that this autoscaler will scale.
  late final pulumi.Output<String> target;

  /// Creates a new [RegionAutoscaler].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [RegionAutoscaler]. {@macro pulumi_compute_region_autoscaler_region_autoscaler_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  RegionAutoscaler(
    String name, {
    RegionAutoscalerArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:compute/regionAutoscaler:RegionAutoscaler',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.autoscalingPolicy = registerOutput<RegionAutoscalerAutoscalingPolicy>('autoscalingPolicy');
    this.creationTimestamp = registerOutput<String>('creationTimestamp');
    this.description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.region = registerOutput<String>('region');
    this.selfLink = registerOutput<String>('selfLink');
    this.target = registerOutput<String>('target');
  }

  /// Gets an existing [RegionAutoscaler] resource's state with the given [name] and [id].
  static RegionAutoscaler get(
    String name,
    pulumi.Input<String> id, {
    RegionAutoscalerState? state,
  }) {
    return RegionAutoscaler._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  RegionAutoscaler._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:compute/regionAutoscaler:RegionAutoscaler',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.autoscalingPolicy = registerOutput<RegionAutoscalerAutoscalingPolicy>('autoscalingPolicy');
    this.creationTimestamp = registerOutput<String>('creationTimestamp');
    this.description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.region = registerOutput<String>('region');
    this.selfLink = registerOutput<String>('selfLink');
    this.target = registerOutput<String>('target');
  }
}
