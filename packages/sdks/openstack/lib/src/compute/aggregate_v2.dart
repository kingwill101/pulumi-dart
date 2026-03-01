import 'package:pulumi/pulumi.dart' as pulumi;
import 'aggregate_v2_args.dart';
import 'aggregate_v2_state.dart';

/// Manages a Host Aggregate within Openstack Nova.
///
/// ## Example Usage
///
/// ### Full example
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as openstack from "@pulumi/openstack";
///
/// const dellServers = new openstack.compute.AggregateV2("dell_servers", {
///     region: "RegionOne",
///     name: "dell_servers",
///     zone: "nova",
///     metadata: {
///         cpus: "56",
///     },
///     hosts: [
///         "myhost01.example.com",
///         "myhost02.example.com",
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_openstack as openstack
///
/// dell_servers = openstack.compute.AggregateV2("dell_servers",
///     region="RegionOne",
///     name="dell_servers",
///     zone="nova",
///     metadata={
///         "cpus": "56",
///     },
///     hosts=[
///         "myhost01.example.com",
///         "myhost02.example.com",
///     ])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using OpenStack = Pulumi.OpenStack;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var dellServers = new OpenStack.Compute.AggregateV2("dell_servers", new()
///     {
///         Region = "RegionOne",
///         Name = "dell_servers",
///         Zone = "nova",
///         Metadata =
///         {
///             { "cpus", "56" },
///         },
///         Hosts = new[]
///         {
///             "myhost01.example.com",
///             "myhost02.example.com",
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
/// 		_, err := compute.NewAggregateV2(ctx, "dell_servers", &compute.AggregateV2Args{
/// 			Region: pulumi.String("RegionOne"),
/// 			Name:   pulumi.String("dell_servers"),
/// 			Zone:   pulumi.String("nova"),
/// 			Metadata: pulumi.StringMap{
/// 				"cpus": pulumi.String("56"),
/// 			},
/// 			Hosts: pulumi.StringArray{
/// 				pulumi.String("myhost01.example.com"),
/// 				pulumi.String("myhost02.example.com"),
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
/// import com.pulumi.openstack.compute.AggregateV2;
/// import com.pulumi.openstack.compute.AggregateV2Args;
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
///         var dellServers = new AggregateV2("dellServers", AggregateV2Args.builder()
///             .region("RegionOne")
///             .name("dell_servers")
///             .zone("nova")
///             .metadata(Map.of("cpus", "56"))
///             .hosts(
///                 "myhost01.example.com",
///                 "myhost02.example.com")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   dellServers:
///     type: openstack:compute:AggregateV2
///     name: dell_servers
///     properties:
///       region: RegionOne
///       name: dell_servers
///       zone: nova
///       metadata:
///         cpus: '56'
///       hosts:
///         - myhost01.example.com
///         - myhost02.example.com
/// ```
///
///
/// ### Minimum required example
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as openstack from "@pulumi/openstack";
///
/// const test = new openstack.compute.AggregateV2("test", {name: "test"});
/// ```
/// ```python
/// import pulumi
/// import pulumi_openstack as openstack
///
/// test = openstack.compute.AggregateV2("test", name="test")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using OpenStack = Pulumi.OpenStack;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var test = new OpenStack.Compute.AggregateV2("test", new()
///     {
///         Name = "test",
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
/// 		_, err := compute.NewAggregateV2(ctx, "test", &compute.AggregateV2Args{
/// 			Name: pulumi.String("test"),
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
/// import com.pulumi.openstack.compute.AggregateV2;
/// import com.pulumi.openstack.compute.AggregateV2Args;
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
///         var test = new AggregateV2("test", AggregateV2Args.builder()
///             .name("test")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   test:
///     type: openstack:compute:AggregateV2
///     properties:
///       name: test
/// ```
///
///
/// ## Import
///
/// You can import an existing Host Aggregate by their ID.
///
/// ```sh
/// $ pulumi import openstack:compute/aggregateV2:AggregateV2 myaggregate 24
/// ```
///
/// The ID can be obtained with an openstack command:
///
/// $ openstack aggregate list
///
/// +----+------+-------------------+
///
/// | ID | Name | Availability Zone |
///
/// +----+------+-------------------+
///
/// | 59 | test | None              |
///
/// +----+------+-------------------+
class AggregateV2 extends pulumi.CustomResource {
  /// The list of hosts contained in the Host Aggregate. The hosts must be added
  /// to Openstack and visible in the web interface, or the provider will fail to add them to the host
  /// aggregate.
  late final pulumi.Output<List<String>?> hosts;
  /// The metadata of the Host Aggregate. Can be useful to indicate scheduler hints.
  late final pulumi.Output<Map<String, String>?> metadata;
  /// The name of the Host Aggregate
  late final pulumi.Output<String> name;
  /// The region in which to create the Host Aggregate. If
  /// omitted, the `region` argument of the provider is used. Changing this
  /// creates a new Host Aggregate.
  late final pulumi.Output<String> region;
  /// The name of the Availability Zone to use. If ommited, it will take the default
  /// availability zone.
  late final pulumi.Output<String?> zone;

  /// Creates a new [AggregateV2].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AggregateV2]. {@macro pulumi_compute_aggregate_v2_aggregate_v2_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AggregateV2(
    String name, {
    AggregateV2Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'openstack:compute/aggregateV2:AggregateV2',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.hosts = registerOutput<List<String>?>('hosts');
    this.metadata = registerOutput<Map<String, String>?>('metadata');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.zone = registerOutput<String?>('zone');
  }

  /// Gets an existing [AggregateV2] resource's state with the given [name] and [id].
  static AggregateV2 get(
    String name,
    pulumi.Input<String> id, {
    AggregateV2State? state,
  }) {
    return AggregateV2._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  AggregateV2._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'openstack:compute/aggregateV2:AggregateV2',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.hosts = registerOutput<List<String>?>('hosts');
    this.metadata = registerOutput<Map<String, String>?>('metadata');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.zone = registerOutput<String?>('zone');
  }
}
