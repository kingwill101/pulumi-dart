import 'package:pulumi/pulumi.dart' as pulumi;
import 'flavor_args.dart';
import 'flavor_state.dart';

/// Manages a V2 flavor resource within OpenStack.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as openstack from "@pulumi/openstack";
///
/// const test_flavor = new openstack.compute.Flavor("test-flavor", {
///     name: "my-flavor",
///     ram: 8096,
///     vcpus: 2,
///     disk: 20,
///     extraSpecs: {
///         "hw:cpu_policy": "CPU-POLICY",
///         "hw:cpu_thread_policy": "CPU-THREAD-POLICY",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_openstack as openstack
///
/// test_flavor = openstack.compute.Flavor("test-flavor",
///     name="my-flavor",
///     ram=8096,
///     vcpus=2,
///     disk=20,
///     extra_specs={
///         "hw:cpu_policy": "CPU-POLICY",
///         "hw:cpu_thread_policy": "CPU-THREAD-POLICY",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using OpenStack = Pulumi.OpenStack;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var test_flavor = new OpenStack.Compute.Flavor("test-flavor", new()
///     {
///         Name = "my-flavor",
///         Ram = 8096,
///         Vcpus = 2,
///         Disk = 20,
///         ExtraSpecs =
///         {
///             { "hw:cpu_policy", "CPU-POLICY" },
///             { "hw:cpu_thread_policy", "CPU-THREAD-POLICY" },
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
/// 		_, err := compute.NewFlavor(ctx, "test-flavor", &compute.FlavorArgs{
/// 			Name:  pulumi.String("my-flavor"),
/// 			Ram:   pulumi.Int(8096),
/// 			Vcpus: pulumi.Int(2),
/// 			Disk:  pulumi.Int(20),
/// 			ExtraSpecs: pulumi.StringMap{
/// 				"hw:cpu_policy":        pulumi.String("CPU-POLICY"),
/// 				"hw:cpu_thread_policy": pulumi.String("CPU-THREAD-POLICY"),
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
/// import com.pulumi.openstack.compute.Flavor;
/// import com.pulumi.openstack.compute.FlavorArgs;
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
///         var test_flavor = new Flavor("test-flavor", FlavorArgs.builder()
///             .name("my-flavor")
///             .ram(8096)
///             .vcpus(2)
///             .disk(20)
///             .extraSpecs(Map.ofEntries(
///                 Map.entry("hw:cpu_policy", "CPU-POLICY"),
///                 Map.entry("hw:cpu_thread_policy", "CPU-THREAD-POLICY")
///             ))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   test-flavor:
///     type: openstack:compute:Flavor
///     properties:
///       name: my-flavor
///       ram: '8096'
///       vcpus: '2'
///       disk: '20'
///       extraSpecs:
///         hw:cpu_policy: CPU-POLICY
///         hw:cpu_thread_policy: CPU-THREAD-POLICY
/// ```
///
///
/// ## Import
///
/// Flavors can be imported using the `ID`, e.g.
///
/// ```sh
/// $ pulumi import openstack:compute/flavor:Flavor my-flavor 4142e64b-1b35-44a0-9b1e-5affc7af1106
/// ```
class Flavor extends pulumi.CustomResource {
  /// The description of the flavor. Changing this
  /// updates the description of the flavor. Requires microversion &gt;= 2.55.
  late final pulumi.Output<String?> description;
  /// The amount of disk space in GiB to use for the root
  /// (/) partition. Changing this creates a new flavor.
  late final pulumi.Output<int> disk;
  /// The amount of ephemeral in GiB. If unspecified,
  /// the default is 0. Changing this creates a new flavor.
  late final pulumi.Output<int?> ephemeral;
  /// Key/Value pairs of metadata for the flavor.
  late final pulumi.Output<Map<String, String>> extraSpecs;
  /// Unique ID (integer or UUID) of flavor to create. Changing
  /// this creates a new flavor.
  late final pulumi.Output<String> flavorId;
  /// Whether the flavor is public. Changing this creates
  /// a new flavor.
  late final pulumi.Output<bool?> isPublic;
  /// A unique name for the flavor. Changing this creates a new
  /// flavor.
  late final pulumi.Output<String> name;
  /// The amount of RAM to use, in megabytes. Changing this
  /// creates a new flavor.
  late final pulumi.Output<int> ram;
  /// The region in which to obtain the V2 Compute client.
  /// Flavors are associated with accounts, but a Compute client is needed to
  /// create one. If omitted, the `region` argument of the provider is used.
  /// Changing this creates a new flavor.
  late final pulumi.Output<String> region;
  /// RX/TX bandwith factor. The default is 1. Changing
  /// this creates a new flavor.
  late final pulumi.Output<double?> rxTxFactor;
  /// The amount of disk space in megabytes to use. If
  /// unspecified, the default is 0. Changing this creates a new flavor.
  late final pulumi.Output<int?> swap;
  /// The number of virtual CPUs to use. Changing this creates
  /// a new flavor.
  late final pulumi.Output<int> vcpus;

  /// Creates a new [Flavor].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Flavor]. {@macro pulumi_compute_flavor_flavor_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Flavor(
    String name, {
    FlavorArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'openstack:compute/flavor:Flavor',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    description = registerOutput<String?>('description');
    disk = registerOutput<int>('disk');
    ephemeral = registerOutput<int?>('ephemeral');
    extraSpecs = registerOutput<Map<String, String>>('extraSpecs');
    flavorId = registerOutput<String>('flavorId');
    isPublic = registerOutput<bool?>('isPublic');
    this.name = registerOutput<String>('name');
    ram = registerOutput<int>('ram');
    region = registerOutput<String>('region');
    rxTxFactor = registerOutput<double?>('rxTxFactor');
    swap = registerOutput<int?>('swap');
    vcpus = registerOutput<int>('vcpus');
  }

  /// Gets an existing [Flavor] resource's state with the given [name] and [id].
  static Flavor get(
    String name,
    pulumi.Input<String> id, {
    FlavorState? state,
  }) {
    return Flavor._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Flavor._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'openstack:compute/flavor:Flavor',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    description = registerOutput<String?>('description');
    disk = registerOutput<int>('disk');
    ephemeral = registerOutput<int?>('ephemeral');
    extraSpecs = registerOutput<Map<String, String>>('extraSpecs');
    flavorId = registerOutput<String>('flavorId');
    isPublic = registerOutput<bool?>('isPublic');
    this.name = registerOutput<String>('name');
    ram = registerOutput<int>('ram');
    region = registerOutput<String>('region');
    rxTxFactor = registerOutput<double?>('rxTxFactor');
    swap = registerOutput<int?>('swap');
    vcpus = registerOutput<int>('vcpus');
  }
}
