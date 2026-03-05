import 'package:pulumi/pulumi.dart' as pulumi;
import 'server_group_args.dart';
import 'server_group_rules.dart';
import 'server_group_state.dart';

/// Manages a V2 Server Group resource within OpenStack.
///
/// ## Example Usage
///
/// ### Compute service API version 2.63 or below:
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as openstack from "@pulumi/openstack";
///
/// const test_sg = new openstack.compute.ServerGroup("test-sg", {
///     name: "my-sg",
///     policies: "anti-affinity",
/// });
/// const test_instance = new openstack.compute.Instance("test-instance", {
///     name: "my-instance",
///     imageId: "ad091b52-742f-469e-8f3c-fd81cadf0743",
///     flavorId: "3",
///     schedulerHints: [{
///         group: test_sg.id,
///     }],
///     networks: [{
///         name: "my_network",
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_openstack as openstack
///
/// test_sg = openstack.compute.ServerGroup("test-sg",
///     name="my-sg",
///     policies="anti-affinity")
/// test_instance = openstack.compute.Instance("test-instance",
///     name="my-instance",
///     image_id="ad091b52-742f-469e-8f3c-fd81cadf0743",
///     flavor_id="3",
///     scheduler_hints=[{
///         "group": test_sg.id,
///     }],
///     networks=[{
///         "name": "my_network",
///     }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using OpenStack = Pulumi.OpenStack;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var test_sg = new OpenStack.Compute.ServerGroup("test-sg", new()
///     {
///         Name = "my-sg",
///         Policies = "anti-affinity",
///     });
///
///     var test_instance = new OpenStack.Compute.Instance("test-instance", new()
///     {
///         Name = "my-instance",
///         ImageId = "ad091b52-742f-469e-8f3c-fd81cadf0743",
///         FlavorId = "3",
///         SchedulerHints = new[]
///         {
///             new OpenStack.Compute.Inputs.InstanceSchedulerHintArgs
///             {
///                 Group = test_sg.Id,
///             },
///         },
///         Networks = new[]
///         {
///             new OpenStack.Compute.Inputs.InstanceNetworkArgs
///             {
///                 Name = "my_network",
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
/// 	"github.com/pulumi/pulumi-openstack/sdk/v5/go/openstack/compute"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		test_sg, err := compute.NewServerGroup(ctx, "test-sg", &compute.ServerGroupArgs{
/// 			Name:     pulumi.String("my-sg"),
/// 			Policies: pulumi.String("anti-affinity"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewInstance(ctx, "test-instance", &compute.InstanceArgs{
/// 			Name:     pulumi.String("my-instance"),
/// 			ImageId:  pulumi.String("ad091b52-742f-469e-8f3c-fd81cadf0743"),
/// 			FlavorId: pulumi.String("3"),
/// 			SchedulerHints: compute.InstanceSchedulerHintArray{
/// 				&compute.InstanceSchedulerHintArgs{
/// 					Group: test_sg.ID(),
/// 				},
/// 			},
/// 			Networks: compute.InstanceNetworkArray{
/// 				&compute.InstanceNetworkArgs{
/// 					Name: pulumi.String("my_network"),
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
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.openstack.compute.ServerGroup;
/// import com.pulumi.openstack.compute.ServerGroupArgs;
/// import com.pulumi.openstack.compute.Instance;
/// import com.pulumi.openstack.compute.InstanceArgs;
/// import com.pulumi.openstack.compute.inputs.InstanceSchedulerHintArgs;
/// import com.pulumi.openstack.compute.inputs.InstanceNetworkArgs;
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
///         var test_sg = new ServerGroup("test-sg", ServerGroupArgs.builder()
///             .name("my-sg")
///             .policies("anti-affinity")
///             .build());
///
///         var test_instance = new Instance("test-instance", InstanceArgs.builder()
///             .name("my-instance")
///             .imageId("ad091b52-742f-469e-8f3c-fd81cadf0743")
///             .flavorId("3")
///             .schedulerHints(InstanceSchedulerHintArgs.builder()
///                 .group(test_sg.id())
///                 .build())
///             .networks(InstanceNetworkArgs.builder()
///                 .name("my_network")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   test-sg:
///     type: openstack:compute:ServerGroup
///     properties:
///       name: my-sg
///       policies: anti-affinity
///   test-instance:
///     type: openstack:compute:Instance
///     properties:
///       name: my-instance
///       imageId: ad091b52-742f-469e-8f3c-fd81cadf0743
///       flavorId: '3'
///       schedulerHints:
///         - group: ${["test-sg"].id}
///       networks:
///         - name: my_network
/// ```
///
///
/// ### Compute service API version 2.64 or above:
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as openstack from "@pulumi/openstack";
///
/// const test_sg = new openstack.compute.ServerGroup("test-sg", {
///     name: "my-sg",
///     policies: "anti-affinity",
///     rules: {
///         maxServerPerHost: 3,
///     },
/// });
/// const test_instance = new openstack.compute.Instance("test-instance", {
///     name: "my-instance",
///     imageId: "ad091b52-742f-469e-8f3c-fd81cadf0743",
///     flavorId: "3",
///     schedulerHints: [{
///         group: test_sg.id,
///     }],
///     networks: [{
///         name: "my_network",
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_openstack as openstack
///
/// test_sg = openstack.compute.ServerGroup("test-sg",
///     name="my-sg",
///     policies="anti-affinity",
///     rules={
///         "max_server_per_host": 3,
///     })
/// test_instance = openstack.compute.Instance("test-instance",
///     name="my-instance",
///     image_id="ad091b52-742f-469e-8f3c-fd81cadf0743",
///     flavor_id="3",
///     scheduler_hints=[{
///         "group": test_sg.id,
///     }],
///     networks=[{
///         "name": "my_network",
///     }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using OpenStack = Pulumi.OpenStack;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var test_sg = new OpenStack.Compute.ServerGroup("test-sg", new()
///     {
///         Name = "my-sg",
///         Policies = "anti-affinity",
///         Rules = new OpenStack.Compute.Inputs.ServerGroupRulesArgs
///         {
///             MaxServerPerHost = 3,
///         },
///     });
///
///     var test_instance = new OpenStack.Compute.Instance("test-instance", new()
///     {
///         Name = "my-instance",
///         ImageId = "ad091b52-742f-469e-8f3c-fd81cadf0743",
///         FlavorId = "3",
///         SchedulerHints = new[]
///         {
///             new OpenStack.Compute.Inputs.InstanceSchedulerHintArgs
///             {
///                 Group = test_sg.Id,
///             },
///         },
///         Networks = new[]
///         {
///             new OpenStack.Compute.Inputs.InstanceNetworkArgs
///             {
///                 Name = "my_network",
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
/// 	"github.com/pulumi/pulumi-openstack/sdk/v5/go/openstack/compute"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		test_sg, err := compute.NewServerGroup(ctx, "test-sg", &compute.ServerGroupArgs{
/// 			Name:     pulumi.String("my-sg"),
/// 			Policies: pulumi.String("anti-affinity"),
/// 			Rules: &compute.ServerGroupRulesArgs{
/// 				MaxServerPerHost: pulumi.Int(3),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewInstance(ctx, "test-instance", &compute.InstanceArgs{
/// 			Name:     pulumi.String("my-instance"),
/// 			ImageId:  pulumi.String("ad091b52-742f-469e-8f3c-fd81cadf0743"),
/// 			FlavorId: pulumi.String("3"),
/// 			SchedulerHints: compute.InstanceSchedulerHintArray{
/// 				&compute.InstanceSchedulerHintArgs{
/// 					Group: test_sg.ID(),
/// 				},
/// 			},
/// 			Networks: compute.InstanceNetworkArray{
/// 				&compute.InstanceNetworkArgs{
/// 					Name: pulumi.String("my_network"),
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
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.openstack.compute.ServerGroup;
/// import com.pulumi.openstack.compute.ServerGroupArgs;
/// import com.pulumi.openstack.compute.inputs.ServerGroupRulesArgs;
/// import com.pulumi.openstack.compute.Instance;
/// import com.pulumi.openstack.compute.InstanceArgs;
/// import com.pulumi.openstack.compute.inputs.InstanceSchedulerHintArgs;
/// import com.pulumi.openstack.compute.inputs.InstanceNetworkArgs;
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
///         var test_sg = new ServerGroup("test-sg", ServerGroupArgs.builder()
///             .name("my-sg")
///             .policies("anti-affinity")
///             .rules(ServerGroupRulesArgs.builder()
///                 .maxServerPerHost(3)
///                 .build())
///             .build());
///
///         var test_instance = new Instance("test-instance", InstanceArgs.builder()
///             .name("my-instance")
///             .imageId("ad091b52-742f-469e-8f3c-fd81cadf0743")
///             .flavorId("3")
///             .schedulerHints(InstanceSchedulerHintArgs.builder()
///                 .group(test_sg.id())
///                 .build())
///             .networks(InstanceNetworkArgs.builder()
///                 .name("my_network")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   test-sg:
///     type: openstack:compute:ServerGroup
///     properties:
///       name: my-sg
///       policies: anti-affinity
///       rules:
///         maxServerPerHost: 3
///   test-instance:
///     type: openstack:compute:Instance
///     properties:
///       name: my-instance
///       imageId: ad091b52-742f-469e-8f3c-fd81cadf0743
///       flavorId: '3'
///       schedulerHints:
///         - group: ${["test-sg"].id}
///       networks:
///         - name: my_network
/// ```
///
///
/// ## Policies
///
/// * `affinity` - All instances/servers launched in this group will be hosted on
/// the same compute node.
///
/// * `anti-affinity` - All instances/servers launched in this group will be
/// hosted on different compute nodes.
///
/// * `soft-affinity` - All instances/servers launched in this group will be hosted
/// on the same compute node if possible, but if not possible they
/// still will be scheduled instead of failure. To use this policy your
/// OpenStack environment should support Compute service API 2.15 or above.
///
/// * `soft-anti-affinity` - All instances/servers launched in this group will be
/// hosted on different compute nodes if possible, but if not possible they
/// still will be scheduled instead of failure. To use this policy your
/// OpenStack environment should support Compute service API 2.15 or above.
///
/// ## Import
///
/// Server Groups can be imported using the `id`, e.g.
///
/// ```sh
/// $ pulumi import openstack:compute/serverGroup:ServerGroup test-sg 1bc30ee9-9d5b-4c30-bdd5-7f1e663f5edf
/// ```
class ServerGroup extends pulumi.CustomResource {
  /// The instances that are part of this server group.
  late final pulumi.Output<List<String>> members;

  /// A unique name for the server group. Changing this creates
  /// a new server group.
  late final pulumi.Output<String> name;

  /// A list of exactly one policy name to associate with
  /// the server group. See the Policies section for more information. Changing this
  /// creates a new server group.
  late final pulumi.Output<String?> policies;

  /// The region in which to obtain the V2 Compute client.
  /// If omitted, the `region` argument of the provider is used. Changing
  /// this creates a new server group.
  late final pulumi.Output<String> region;

  /// The rules which are applied to specified `policy`. Currently,
  /// only the `max_server_per_host` rule is supported for the `anti-affinity` policy.
  late final pulumi.Output<ServerGroupRules> rules;

  /// Map of additional options.
  late final pulumi.Output<Map<String, String>?> valueSpecs;

  /// Creates a new [ServerGroup].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ServerGroup]. {@macro pulumi_compute_server_group_server_group_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ServerGroup(
    String name, {
    ServerGroupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'openstack:compute/serverGroup:ServerGroup',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    members = registerOutput<List<String>>('members');
    this.name = registerOutput<String>('name');
    policies = registerOutput<String?>('policies');
    region = registerOutput<String>('region');
    rules = registerOutput<ServerGroupRules>(
      'rules',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return ServerGroupRules.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    valueSpecs = registerOutput<Map<String, String>?>('valueSpecs');
  }

  /// Gets an existing [ServerGroup] resource's state with the given [name] and [id].
  static ServerGroup get(
    String name,
    pulumi.Input<String> id, {
    ServerGroupState? state,
  }) {
    return ServerGroup._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ServerGroup._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'openstack:compute/serverGroup:ServerGroup',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    members = registerOutput<List<String>>('members');
    this.name = registerOutput<String>('name');
    policies = registerOutput<String?>('policies');
    region = registerOutput<String>('region');
    rules = registerOutput<ServerGroupRules>(
      'rules',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return ServerGroupRules.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    valueSpecs = registerOutput<Map<String, String>?>('valueSpecs');
  }
}
