import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_group_args.dart';
import 'instance_group_state.dart';

/// Creates a group of dissimilar Compute Engine virtual machine instances.
/// For more information, see [the official documentation](https://cloud.google.com/compute/docs/instance-groups/#unmanaged_instance_groups)
/// and [API](https://cloud.google.com/compute/docs/reference/latest/instanceGroups)
///
///
/// ## Example Usage
///
/// ### Empty Instance Group
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const test = new gcp.compute.InstanceGroup("test", {
///     name: "test",
///     description: "Test instance group",
///     zone: "us-central1-a",
///     network: _default.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// test = gcp.compute.InstanceGroup("test",
///     name="test",
///     description="Test instance group",
///     zone="us-central1-a",
///     network=default["id"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var test = new Gcp.Compute.InstanceGroup("test", new()
///     {
///         Name = "test",
///         Description = "Test instance group",
///         Zone = "us-central1-a",
///         Network = @default.Id,
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
/// 		_, err := compute.NewInstanceGroup(ctx, "test", &compute.InstanceGroupArgs{
/// 			Name:        pulumi.String("test"),
/// 			Description: pulumi.String("Test instance group"),
/// 			Zone:        pulumi.String("us-central1-a"),
/// 			Network:     pulumi.Any(_default.Id),
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
/// import com.pulumi.gcp.compute.InstanceGroup;
/// import com.pulumi.gcp.compute.InstanceGroupArgs;
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
///         var test = new InstanceGroup("test", InstanceGroupArgs.builder()
///             .name("test")
///             .description("Test instance group")
///             .zone("us-central1-a")
///             .network(default_.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   test:
///     type: gcp:compute:InstanceGroup
///     properties:
///       name: test
///       description: Test instance group
///       zone: us-central1-a
///       network: ${default.id}
/// ```
///
///
/// ### Example Usage - With instances and named ports
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const webservers = new gcp.compute.InstanceGroup("webservers", {
///     name: "webservers",
///     description: "Test instance group",
///     instances: [
///         test.id,
///         test2.id,
///     ],
///     namedPorts: [
///         {
///             name: "http",
///             port: 8080,
///         },
///         {
///             name: "https",
///             port: 8443,
///         },
///     ],
///     zone: "us-central1-a",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// webservers = gcp.compute.InstanceGroup("webservers",
///     name="webservers",
///     description="Test instance group",
///     instances=[
///         test["id"],
///         test2["id"],
///     ],
///     named_ports=[
///         {
///             "name": "http",
///             "port": 8080,
///         },
///         {
///             "name": "https",
///             "port": 8443,
///         },
///     ],
///     zone="us-central1-a")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var webservers = new Gcp.Compute.InstanceGroup("webservers", new()
///     {
///         Name = "webservers",
///         Description = "Test instance group",
///         Instances = new[]
///         {
///             test.Id,
///             test2.Id,
///         },
///         NamedPorts = new[]
///         {
///             new Gcp.Compute.Inputs.InstanceGroupNamedPortArgs
///             {
///                 Name = "http",
///                 Port = 8080,
///             },
///             new Gcp.Compute.Inputs.InstanceGroupNamedPortArgs
///             {
///                 Name = "https",
///                 Port = 8443,
///             },
///         },
///         Zone = "us-central1-a",
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
/// 		_, err := compute.NewInstanceGroup(ctx, "webservers", &compute.InstanceGroupArgs{
/// 			Name:        pulumi.String("webservers"),
/// 			Description: pulumi.String("Test instance group"),
/// 			Instances: pulumi.StringArray{
/// 				test.Id,
/// 				test2.Id,
/// 			},
/// 			NamedPorts: compute.InstanceGroupNamedPortTypeArray{
/// 				&compute.InstanceGroupNamedPortTypeArgs{
/// 					Name: pulumi.String("http"),
/// 					Port: pulumi.Int(8080),
/// 				},
/// 				&compute.InstanceGroupNamedPortTypeArgs{
/// 					Name: pulumi.String("https"),
/// 					Port: pulumi.Int(8443),
/// 				},
/// 			},
/// 			Zone: pulumi.String("us-central1-a"),
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
/// import com.pulumi.gcp.compute.InstanceGroup;
/// import com.pulumi.gcp.compute.InstanceGroupArgs;
/// import com.pulumi.gcp.compute.inputs.InstanceGroupNamedPortArgs;
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
///         var webservers = new InstanceGroup("webservers", InstanceGroupArgs.builder()
///             .name("webservers")
///             .description("Test instance group")
///             .instances(
///                 test.id(),
///                 test2.id())
///             .namedPorts(
///                 InstanceGroupNamedPortArgs.builder()
///                     .name("http")
///                     .port(8080)
///                     .build(),
///                 InstanceGroupNamedPortArgs.builder()
///                     .name("https")
///                     .port(8443)
///                     .build())
///             .zone("us-central1-a")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   webservers:
///     type: gcp:compute:InstanceGroup
///     properties:
///       name: webservers
///       description: Test instance group
///       instances:
///         - ${test.id}
///         - ${test2.id}
///       namedPorts:
///         - name: http
///           port: '8080'
///         - name: https
///           port: '8443'
///       zone: us-central1-a
/// ```
///
///
/// ## Import
///
/// Instance groups can be imported using the `zone` and `name` with an optional `project`, e.g.
///
/// * `projects/{{project_id}}/zones/{{zone}}/instanceGroups/{{instance_group_id}}`
///
/// * `{{project_id}}/{{zone}}/{{instance_group_id}}`
///
/// * `{{zone}}/{{instance_group_id}}`
///
/// When using the `pulumi import` command, instance groups can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:compute/instanceGroup:InstanceGroup default {{zone}}/{{instance_group_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/instanceGroup:InstanceGroup default {{project_id}}/{{zone}}/{{instance_group_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/instanceGroup:InstanceGroup default projects/{{project_id}}/zones/{{zone}}/instanceGroups/{{instance_group_id}}
/// ```
class InstanceGroup extends pulumi.CustomResource {
  /// An optional textual description of the instance
  /// group.
  late final pulumi.Output<String?> description;
  /// The list of instances in the group, in `self_link` format.
  /// When adding instances they must all be in the same network and zone as the instance group.
  late final pulumi.Output<List<String>> instances;
  /// The name of the instance group. Must be 1-63
  /// characters long and comply with
  /// [RFC1035](https://www.ietf.org/rfc/rfc1035.txt). Supported characters
  /// include lowercase letters, numbers, and hyphens.
  late final pulumi.Output<String> name;
  /// The named port configuration. See the section below
  /// for details on configuration. Structure is documented below.
  late final pulumi.Output<List<Map<String, dynamic>>?> namedPorts;
  /// The URL of the network the instance group is in. If
  /// this is different from the network where the instances are in, the creation
  /// fails. Defaults to the network where the instances are in (if neither
  /// `network` nor `instances` is specified, this field will be blank).
  late final pulumi.Output<String> network;
  /// The ID of the project in which the resource belongs. If it
  /// is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// The URI of the created resource.
  late final pulumi.Output<String> selfLink;
  /// The number of instances in the group.
  late final pulumi.Output<int> size;
  /// The zone that this instance group should be created in.
  ///
  /// - - -
  late final pulumi.Output<String> zone;

  /// Creates a new [InstanceGroup].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [InstanceGroup]. {@macro pulumi_compute_instance_group_instance_group_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  InstanceGroup(
    String name, {
    InstanceGroupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:compute/instanceGroup:InstanceGroup',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    description = registerOutput<String?>('description');
    instances = registerOutput<List<String>>('instances');
    this.name = registerOutput<String>('name');
    namedPorts = registerOutput<List<Map<String, dynamic>>?>('namedPorts');
    network = registerOutput<String>('network');
    project = registerOutput<String>('project');
    selfLink = registerOutput<String>('selfLink');
    size = registerOutput<int>('size');
    zone = registerOutput<String>('zone');
  }

  /// Gets an existing [InstanceGroup] resource's state with the given [name] and [id].
  static InstanceGroup get(
    String name,
    pulumi.Input<String> id, {
    InstanceGroupState? state,
  }) {
    return InstanceGroup._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  InstanceGroup._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:compute/instanceGroup:InstanceGroup',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    description = registerOutput<String?>('description');
    instances = registerOutput<List<String>>('instances');
    this.name = registerOutput<String>('name');
    namedPorts = registerOutput<List<Map<String, dynamic>>?>('namedPorts');
    network = registerOutput<String>('network');
    project = registerOutput<String>('project');
    selfLink = registerOutput<String>('selfLink');
    size = registerOutput<int>('size');
    zone = registerOutput<String>('zone');
  }
}
