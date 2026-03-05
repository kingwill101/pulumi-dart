import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_group_membership_args.dart';
import 'instance_group_membership_state.dart';

/// Represents the Instance membership to the Instance Group.
///
/// &gt; **NOTE** You can use this resource instead of the `instances` field in the
/// `gcp.compute.InstanceGroup`, however it's not recommended to use it alongside this field.
/// It might cause inconsistencies, as they can end up competing over control.
///
/// &gt; **NOTE** This resource has been added to avoid a situation, where after
/// Instance is recreated, it's removed from Instance Group and it's needed to
/// perform `apply` twice. To avoid situations like this, please use this resource
/// with the lifecycle `replace_triggered_by` method, with the passed Instance's ID.
///
///
/// To get more information about InstanceGroupMembership, see:
///
/// * [API documentation](https://cloud.google.com/compute/docs/reference/rest/v1/instanceGroups)
/// * How-to Guides
/// * [Add instances](https://cloud.google.com/compute/docs/reference/rest/v1/instanceGroups/addInstances)
/// * [List instances](https://cloud.google.com/compute/docs/reference/rest/v1/instanceGroups/listInstances)
/// * [Remove instances](https://cloud.google.com/compute/docs/reference/rest/v1/instanceGroups/removeInstances)
///
/// ## Example Usage
///
/// ### Instance Group Membership
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const default_network = new gcp.compute.Network("default-network", {name: "network"});
/// const default_instance = new gcp.compute.Instance("default-instance", {
///     name: "instance",
///     machineType: "e2-medium",
///     bootDisk: {
///         initializeParams: {
///             image: "debian-cloud/debian-11",
///         },
///     },
///     networkInterfaces: [{
///         network: default_network.name,
///     }],
/// });
/// const default_instance_group = new gcp.compute.InstanceGroup("default-instance-group", {name: "instance-group"});
/// const default_ig_membership = new gcp.compute.InstanceGroupMembership("default-ig-membership", {
///     instance: default_instance.selfLink,
///     instanceGroup: default_instance_group.name,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default_network = gcp.compute.Network("default-network", name="network")
/// default_instance = gcp.compute.Instance("default-instance",
///     name="instance",
///     machine_type="e2-medium",
///     boot_disk={
///         "initialize_params": {
///             "image": "debian-cloud/debian-11",
///         },
///     },
///     network_interfaces=[{
///         "network": default_network.name,
///     }])
/// default_instance_group = gcp.compute.InstanceGroup("default-instance-group", name="instance-group")
/// default_ig_membership = gcp.compute.InstanceGroupMembership("default-ig-membership",
///     instance=default_instance.self_link,
///     instance_group=default_instance_group.name)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var default_network = new Gcp.Compute.Network("default-network", new()
///     {
///         Name = "network",
///     });
///
///     var default_instance = new Gcp.Compute.Instance("default-instance", new()
///     {
///         Name = "instance",
///         MachineType = "e2-medium",
///         BootDisk = new Gcp.Compute.Inputs.InstanceBootDiskArgs
///         {
///             InitializeParams = new Gcp.Compute.Inputs.InstanceBootDiskInitializeParamsArgs
///             {
///                 Image = "debian-cloud/debian-11",
///             },
///         },
///         NetworkInterfaces = new[]
///         {
///             new Gcp.Compute.Inputs.InstanceNetworkInterfaceArgs
///             {
///                 Network = default_network.Name,
///             },
///         },
///     });
///
///     var default_instance_group = new Gcp.Compute.InstanceGroup("default-instance-group", new()
///     {
///         Name = "instance-group",
///     });
///
///     var default_ig_membership = new Gcp.Compute.InstanceGroupMembership("default-ig-membership", new()
///     {
///         Instance = default_instance.SelfLink,
///         InstanceGroup = default_instance_group.Name,
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
/// 		default_network, err := compute.NewNetwork(ctx, "default-network", &compute.NetworkArgs{
/// 			Name: pulumi.String("network"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		default_instance, err := compute.NewInstance(ctx, "default-instance", &compute.InstanceArgs{
/// 			Name:        pulumi.String("instance"),
/// 			MachineType: pulumi.String("e2-medium"),
/// 			BootDisk: &compute.InstanceBootDiskArgs{
/// 				InitializeParams: &compute.InstanceBootDiskInitializeParamsArgs{
/// 					Image: pulumi.String("debian-cloud/debian-11"),
/// 				},
/// 			},
/// 			NetworkInterfaces: compute.InstanceNetworkInterfaceArray{
/// 				&compute.InstanceNetworkInterfaceArgs{
/// 					Network: default_network.Name,
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		default_instance_group, err := compute.NewInstanceGroup(ctx, "default-instance-group", &compute.InstanceGroupArgs{
/// 			Name: pulumi.String("instance-group"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewInstanceGroupMembership(ctx, "default-ig-membership", &compute.InstanceGroupMembershipArgs{
/// 			Instance:      default_instance.SelfLink,
/// 			InstanceGroup: default_instance_group.Name,
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
/// import com.pulumi.gcp.compute.Network;
/// import com.pulumi.gcp.compute.NetworkArgs;
/// import com.pulumi.gcp.compute.Instance;
/// import com.pulumi.gcp.compute.InstanceArgs;
/// import com.pulumi.gcp.compute.inputs.InstanceBootDiskArgs;
/// import com.pulumi.gcp.compute.inputs.InstanceBootDiskInitializeParamsArgs;
/// import com.pulumi.gcp.compute.inputs.InstanceNetworkInterfaceArgs;
/// import com.pulumi.gcp.compute.InstanceGroup;
/// import com.pulumi.gcp.compute.InstanceGroupArgs;
/// import com.pulumi.gcp.compute.InstanceGroupMembership;
/// import com.pulumi.gcp.compute.InstanceGroupMembershipArgs;
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
///         var default_network = new Network("default-network", NetworkArgs.builder()
///             .name("network")
///             .build());
///
///         var default_instance = new Instance("default-instance", InstanceArgs.builder()
///             .name("instance")
///             .machineType("e2-medium")
///             .bootDisk(InstanceBootDiskArgs.builder()
///                 .initializeParams(InstanceBootDiskInitializeParamsArgs.builder()
///                     .image("debian-cloud/debian-11")
///                     .build())
///                 .build())
///             .networkInterfaces(InstanceNetworkInterfaceArgs.builder()
///                 .network(default_network.name())
///                 .build())
///             .build());
///
///         var default_instance_group = new InstanceGroup("default-instance-group", InstanceGroupArgs.builder()
///             .name("instance-group")
///             .build());
///
///         var default_ig_membership = new InstanceGroupMembership("default-ig-membership", InstanceGroupMembershipArgs.builder()
///             .instance(default_instance.selfLink())
///             .instanceGroup(default_instance_group.name())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default-network:
///     type: gcp:compute:Network
///     properties:
///       name: network
///   default-instance:
///     type: gcp:compute:Instance
///     properties:
///       name: instance
///       machineType: e2-medium
///       bootDisk:
///         initializeParams:
///           image: debian-cloud/debian-11
///       networkInterfaces:
///         - network: ${["default-network"].name}
///   default-instance-group:
///     type: gcp:compute:InstanceGroup
///     properties:
///       name: instance-group
///   default-ig-membership:
///     type: gcp:compute:InstanceGroupMembership
///     properties:
///       instance: ${["default-instance"].selfLink}
///       instanceGroup: ${["default-instance-group"].name}
/// ```
///
///
/// ## Import
///
/// InstanceGroupMembership can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/zones/{{zone}}/instanceGroups/{{instance_group}}/{{instance}}`
///
/// * `{{project}}/{{zone}}/{{instance_group}}/{{instance}}`
///
/// * `{{zone}}/{{instance_group}}/{{instance}}`
///
/// * `{{instance_group}}/{{instance}}`
///
/// When using the `pulumi import` command, InstanceGroupMembership can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:compute/instanceGroupMembership:InstanceGroupMembership default projects/{{project}}/zones/{{zone}}/instanceGroups/{{instance_group}}/{{instance}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/instanceGroupMembership:InstanceGroupMembership default {{project}}/{{zone}}/{{instance_group}}/{{instance}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/instanceGroupMembership:InstanceGroupMembership default {{zone}}/{{instance_group}}/{{instance}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/instanceGroupMembership:InstanceGroupMembership default {{instance_group}}/{{instance}}
/// ```
class InstanceGroupMembership extends pulumi.CustomResource {
  /// An instance being added to the InstanceGroup
  late final pulumi.Output<String> instance;
  /// Represents an Instance Group resource name that the instance belongs to.
  late final pulumi.Output<String> instanceGroup;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// A reference to the zone where the instance group resides.
  late final pulumi.Output<String?> zone;

  /// Creates a new [InstanceGroupMembership].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [InstanceGroupMembership]. {@macro pulumi_compute_instance_group_membership_instance_group_membership_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  InstanceGroupMembership(
    String name, {
    InstanceGroupMembershipArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:compute/instanceGroupMembership:InstanceGroupMembership',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    instance = registerOutput<String>('instance');
    instanceGroup = registerOutput<String>('instanceGroup');
    project = registerOutput<String>('project');
    zone = registerOutput<String?>('zone');
  }

  /// Gets an existing [InstanceGroupMembership] resource's state with the given [name] and [id].
  static InstanceGroupMembership get(
    String name,
    pulumi.Input<String> id, {
    InstanceGroupMembershipState? state,
  }) {
    return InstanceGroupMembership._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  InstanceGroupMembership._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:compute/instanceGroupMembership:InstanceGroupMembership',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    instance = registerOutput<String>('instance');
    instanceGroup = registerOutput<String>('instanceGroup');
    project = registerOutput<String>('project');
    zone = registerOutput<String?>('zone');
  }
}
