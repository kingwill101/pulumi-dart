import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_access_rules_options.dart';
import 'instance_args.dart';
import 'instance_state.dart';

/// A Managed Lustre instance
///
///
/// To get more information about Instance, see:
///
/// * [API documentation](https://cloud.google.com/managed-lustre/docs/reference/rest/v1/projects.locations.instances)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/managed-lustre/docs/create-instance)
///
/// ## Example Usage
///
/// ### Lustre Instance Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// // This example assumes this network already exists.
/// // The API creates a tenant network per network authorized for a
/// // Lustre instance and that network is not deleted when the user-created
/// // network (authorized_network) is deleted, so this prevents issues
/// // with tenant network quota.
/// // If this network hasn't been created and you are using this example in your
/// // config, add an additional network resource or change
/// // this from "data"to "resource"
/// const lustre_network = gcp.compute.getNetwork({
///     name: "my-network",
/// });
/// const instance = new gcp.lustre.Instance("instance", {
///     instanceId: "my-instance",
///     location: "us-central1-a",
///     description: "test lustre instance",
///     filesystem: "testfs",
///     capacityGib: "18000",
///     network: lustre_network.then(lustre_network => lustre_network.id),
///     perUnitStorageThroughput: "1000",
///     labels: {
///         test: "value",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// # This example assumes this network already exists.
/// # The API creates a tenant network per network authorized for a
/// # Lustre instance and that network is not deleted when the user-created
/// # network (authorized_network) is deleted, so this prevents issues
/// # with tenant network quota.
/// # If this network hasn't been created and you are using this example in your
/// # config, add an additional network resource or change
/// # this from "data"to "resource"
/// lustre_network = gcp.compute.get_network(name="my-network")
/// instance = gcp.lustre.Instance("instance",
///     instance_id="my-instance",
///     location="us-central1-a",
///     description="test lustre instance",
///     filesystem="testfs",
///     capacity_gib="18000",
///     network=lustre_network.id,
///     per_unit_storage_throughput="1000",
///     labels={
///         "test": "value",
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
///     // This example assumes this network already exists.
///     // The API creates a tenant network per network authorized for a
///     // Lustre instance and that network is not deleted when the user-created
///     // network (authorized_network) is deleted, so this prevents issues
///     // with tenant network quota.
///     // If this network hasn't been created and you are using this example in your
///     // config, add an additional network resource or change
///     // this from "data"to "resource"
///     var lustre_network = Gcp.Compute.GetNetwork.Invoke(new()
///     {
///         Name = "my-network",
///     });
///
///     var instance = new Gcp.Lustre.Instance("instance", new()
///     {
///         InstanceId = "my-instance",
///         Location = "us-central1-a",
///         Description = "test lustre instance",
///         Filesystem = "testfs",
///         CapacityGib = "18000",
///         Network = lustre_network.Apply(lustre_network => lustre_network.Apply(getNetworkResult => getNetworkResult.Id)),
///         PerUnitStorageThroughput = "1000",
///         Labels =
///         {
///             { "test", "value" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/lustre"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		// This example assumes this network already exists.
/// 		// The API creates a tenant network per network authorized for a
/// 		// Lustre instance and that network is not deleted when the user-created
/// 		// network (authorized_network) is deleted, so this prevents issues
/// 		// with tenant network quota.
/// 		// If this network hasn't been created and you are using this example in your
/// 		// config, add an additional network resource or change
/// 		// this from "data"to "resource"
/// 		lustre_network, err := compute.LookupNetwork(ctx, &compute.LookupNetworkArgs{
/// 			Name: "my-network",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = lustre.NewInstance(ctx, "instance", &lustre.InstanceArgs{
/// 			InstanceId:               pulumi.String("my-instance"),
/// 			Location:                 pulumi.String("us-central1-a"),
/// 			Description:              pulumi.String("test lustre instance"),
/// 			Filesystem:               pulumi.String("testfs"),
/// 			CapacityGib:              pulumi.String("18000"),
/// 			Network:                  pulumi.String(lustre_network.Id),
/// 			PerUnitStorageThroughput: pulumi.String("1000"),
/// 			Labels: pulumi.StringMap{
/// 				"test": pulumi.String("value"),
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
/// import com.pulumi.gcp.compute.ComputeFunctions;
/// import com.pulumi.gcp.compute.inputs.GetNetworkArgs;
/// import com.pulumi.gcp.lustre.Instance;
/// import com.pulumi.gcp.lustre.InstanceArgs;
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
///         // This example assumes this network already exists.
///         // The API creates a tenant network per network authorized for a
///         // Lustre instance and that network is not deleted when the user-created
///         // network (authorized_network) is deleted, so this prevents issues
///         // with tenant network quota.
///         // If this network hasn't been created and you are using this example in your
///         // config, add an additional network resource or change
///         // this from "data"to "resource"
///         final var lustre-network = ComputeFunctions.getNetwork(GetNetworkArgs.builder()
///             .name("my-network")
///             .build());
///
///         var instance = new Instance("instance", InstanceArgs.builder()
///             .instanceId("my-instance")
///             .location("us-central1-a")
///             .description("test lustre instance")
///             .filesystem("testfs")
///             .capacityGib("18000")
///             .network(lustre_network.id())
///             .perUnitStorageThroughput("1000")
///             .labels(Map.of("test", "value"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   instance:
///     type: gcp:lustre:Instance
///     properties:
///       instanceId: my-instance
///       location: us-central1-a
///       description: test lustre instance
///       filesystem: testfs
///       capacityGib: 18000
///       network: ${["lustre-network"].id}
///       perUnitStorageThroughput: 1000
///       labels:
///         test: value
/// variables:
///   # This example assumes this network already exists.
///   # // The API creates a tenant network per network authorized for a
///   # // Lustre instance and that network is not deleted when the user-created
///   # // network (authorized_network) is deleted, so this prevents issues
///   # // with tenant network quota.
///   # // If this network hasn't been created and you are using this example in your
///   # // config, add an additional network resource or change
///   # // this from "data"to "resource"
///   lustre-network:
///     fn::invoke:
///       function: gcp:compute:getNetwork
///       arguments:
///         name: my-network
/// ```
///
///
/// ## Import
///
/// Instance can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/instances/{{instance_id}}`
///
/// * `{{project}}/{{location}}/{{instance_id}}`
///
/// * `{{location}}/{{instance_id}}`
///
/// When using the `pulumi import` command, Instance can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:lustre/instance:Instance default projects/{{project}}/locations/{{location}}/instances/{{instance_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:lustre/instance:Instance default {{project}}/{{location}}/{{instance_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:lustre/instance:Instance default {{location}}/{{instance_id}}
/// ```
class Instance extends pulumi.CustomResource {
  /// Access control rules for the Lustre instance. Configures default root
  /// squashing behavior and specific access rules based on IP addresses.
  /// Structure is documented below.
  late final pulumi.Output<InstanceAccessRulesOptions?> accessRulesOptions;

  /// The storage capacity of the instance in gibibytes (GiB). Allowed values
  /// are from `18000` to `954000`, in increments of 9000.
  late final pulumi.Output<String> capacityGib;

  /// Timestamp when the instance was created.
  late final pulumi.Output<String> createTime;

  /// A user-readable description of the instance.
  late final pulumi.Output<String?> description;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;

  /// The filesystem name for this instance. This name is used by client-side
  /// tools, including when mounting the instance. Must be eight characters or
  /// less and can only contain letters and numbers.
  late final pulumi.Output<String> filesystem;

  /// Indicates whether you want to enable support for GKE clients. By default,
  /// GKE clients are not supported.
  late final pulumi.Output<bool?> gkeSupportEnabled;

  /// The name of the Managed Lustre instance.
  /// * Must contain only lowercase letters, numbers, and hyphens.
  /// * Must start with a letter.
  /// * Must be between 1-63 characters.
  /// * Must end with a number or a letter.
  late final pulumi.Output<String> instanceId;

  /// The KMS key id to use for encryption of the Lustre instance.
  late final pulumi.Output<String?> kmsKey;

  /// Labels as key value pairs.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;

  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  late final pulumi.Output<String> location;

  /// Mount point of the instance in the format `IP_ADDRESS@tcp:/FILESYSTEM`.
  late final pulumi.Output<String> mountPoint;

  /// Identifier. The name of the instance.
  late final pulumi.Output<String> name;

  /// The full name of the VPC network to which the instance is connected.
  /// Must be in the format
  /// `projects/{project_id}/global/networks/{network_name}`.
  late final pulumi.Output<String> network;

  /// The throughput of the instance in MB/s/TiB.
  /// Valid values are 125, 250, 500, 1000.
  late final pulumi.Output<String> perUnitStorageThroughput;

  /// The placement policy name for the instance in the format of
  /// projects/{project}/locations/{location}/resourcePolicies/{resource_policy}
  late final pulumi.Output<String?> placementPolicy;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;

  /// The state of the instance.
  /// Please see https://cloud.google.com/managed-lustre/docs/reference/rest/v1/projects.locations.instances#state for values
  late final pulumi.Output<String> state;

  /// The reason why the instance is in a certain state.
  late final pulumi.Output<String> stateReason;

  /// Timestamp when the instance was last updated.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [Instance].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Instance]. {@macro pulumi_lustre_instance_instance_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Instance(
    String name, {
    InstanceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'gcp:lustre/instance:Instance',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    accessRulesOptions = registerOutput<InstanceAccessRulesOptions?>(
      'accessRulesOptions',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return InstanceAccessRulesOptions.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    capacityGib = registerOutput<String>('capacityGib');
    createTime = registerOutput<String>('createTime');
    description = registerOutput<String?>('description');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels');
    filesystem = registerOutput<String>('filesystem');
    gkeSupportEnabled = registerOutput<bool?>('gkeSupportEnabled');
    instanceId = registerOutput<String>('instanceId');
    kmsKey = registerOutput<String?>('kmsKey');
    labels = registerOutput<Map<String, String>?>('labels');
    location = registerOutput<String>('location');
    mountPoint = registerOutput<String>('mountPoint');
    this.name = registerOutput<String>('name');
    network = registerOutput<String>('network');
    perUnitStorageThroughput = registerOutput<String>(
      'perUnitStorageThroughput',
    );
    placementPolicy = registerOutput<String?>('placementPolicy');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    state = registerOutput<String>('state');
    stateReason = registerOutput<String>('stateReason');
    updateTime = registerOutput<String>('updateTime');
  }

  /// Gets an existing [Instance] resource's state with the given [name] and [id].
  static Instance get(
    String name,
    pulumi.Input<String> id, {
    InstanceState? state,
  }) {
    return Instance._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Instance._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'gcp:lustre/instance:Instance',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    accessRulesOptions = registerOutput<InstanceAccessRulesOptions?>(
      'accessRulesOptions',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return InstanceAccessRulesOptions.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    capacityGib = registerOutput<String>('capacityGib');
    createTime = registerOutput<String>('createTime');
    description = registerOutput<String?>('description');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels');
    filesystem = registerOutput<String>('filesystem');
    gkeSupportEnabled = registerOutput<bool?>('gkeSupportEnabled');
    instanceId = registerOutput<String>('instanceId');
    kmsKey = registerOutput<String?>('kmsKey');
    labels = registerOutput<Map<String, String>?>('labels');
    location = registerOutput<String>('location');
    mountPoint = registerOutput<String>('mountPoint');
    this.name = registerOutput<String>('name');
    network = registerOutput<String>('network');
    perUnitStorageThroughput = registerOutput<String>(
      'perUnitStorageThroughput',
    );
    placementPolicy = registerOutput<String?>('placementPolicy');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.state = registerOutput<String>('state');
    stateReason = registerOutput<String>('stateReason');
    updateTime = registerOutput<String>('updateTime');
  }
}
