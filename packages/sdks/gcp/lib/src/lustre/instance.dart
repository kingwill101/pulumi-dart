import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_access_rules_options.dart';
import 'instance_args.dart';
import 'instance_dynamic_tier_options.dart';
import 'instance_maintenance_policy.dart';
import 'instance_state.dart';
import 'instance_upcoming_maintenance_schedule.dart';

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
/// 			Name: pulumi.StringRef("my-network"),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// data "gcp_compute_getnetwork" "lustre-network" {
///   name = "my-network"
/// }
///
/// resource "gcp_lustre_instance" "instance" {
///   instance_id                 = "my-instance"
///   location                    = "us-central1-a"
///   description                 = "test lustre instance"
///   filesystem                  = "testfs"
///   capacity_gib                = 18000
///   network                     = data.gcp_compute_getnetwork.lustre-network.id
///   per_unit_storage_throughput = 1000
///   labels = {
///     "test" = "value"
///   }
/// }
/// // This example assumes this network already exists.
/// // The API creates a tenant network per network authorized for a
/// // Lustre instance and that network is not deleted when the user-created
/// // network (authorized_network) is deleted, so this prevents issues
/// // with tenant network quota.
/// // If this network hasn't been created and you are using this example in your
/// // config, add an additional network resource or change
/// // this from "data"to "resource"
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
/// * `{{project}}/{{location}}/{{instance_id}}`
/// * `{{location}}/{{instance_id}}`
///
///
/// When using the `pulumi import` command, Instance can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:lustre/instance:Instance default projects/{{project}}/locations/{{location}}/instances/{{instance_id}}
/// $ pulumi import gcp:lustre/instance:Instance default {{project}}/{{location}}/{{instance_id}}
/// $ pulumi import gcp:lustre/instance:Instance default {{location}}/{{instance_id}}
/// ```
class Instance extends pulumi.CustomResource {
  /// IP-based access rules for the Managed Lustre instance. These options
  /// define the root user squash configuration.
  /// Structure is documented below.
  late final pulumi.Output<InstanceAccessRulesOptions?> accessRulesOptions;
  /// The storage capacity of the instance in gibibytes (GiB). Allowed values
  /// are from `9000` to `7632000`, depending on the `perUnitStorageThroughput`.
  /// See [Performance tiers and maximum storage
  /// capacities](https://cloud.google.com/managed-lustre/docs/create-instance#performance-tiers)
  /// for specific minimums, maximums, and step sizes for each performance tier.
  late final pulumi.Output<String> capacityGib;
  /// Timestamp when the instance was created.
  late final pulumi.Output<String> createTime;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// A user-readable description of the instance.
  late final pulumi.Output<String?> description;
  /// Dynamic tier options for a Managed Lustre instance.
  /// Structure is documented below.
  late final pulumi.Output<InstanceDynamicTierOptions?> dynamicTierOptions;
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
  /// The Cloud KMS key name to use for data encryption.
  /// If not set, the instance will use Google-managed encryption keys.
  /// If set, the instance will use customer-managed encryption keys.
  /// The key must be in the same region as the instance.
  /// The key format is:
  /// projects/{project}/locations/{location}/keyRings/{key_ring}/cryptoKeys/{key}
  late final pulumi.Output<String?> kmsKey;
  /// Labels as key value pairs.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  late final pulumi.Output<String> location;
  /// Defines a maintenance policy for a resource.
  /// Structure is documented below.
  late final pulumi.Output<InstanceMaintenancePolicy?> maintenancePolicy;
  /// Mount point of the instance in the format `IP_ADDRESS@tcp:/FILESYSTEM`.
  late final pulumi.Output<String> mountPoint;
  /// Identifier. The name of the instance.
  late final pulumi.Output<String> name;
  /// The full name of the VPC network to which the instance is connected.
  /// Must be in the format
  /// `projects/{project_id}/global/networks/{network_name}`.
  late final pulumi.Output<String> network;
  /// The throughput of the instance in MBps per TiB. Valid values are 125, 250,
  /// 500, 1000.
  /// See [Performance tiers and maximum storage
  /// capacities](https://cloud.google.com/managed-lustre/docs/create-instance#performance-tiers)
  /// for more information.
  /// If the instance is using the Dynamic tier, this field must not be set or
  /// must be set to zero.
  late final pulumi.Output<String?> perUnitStorageThroughput;
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
  /// Possible values:
  /// ACTIVE
  /// CREATING
  /// DELETING
  /// UPGRADING
  /// REPAIRING
  /// STOPPED
  /// UPDATING
  /// SUSPENDED
  late final pulumi.Output<String> state;
  /// The reason why the instance is in a certain state (e.g. SUSPENDED).
  late final pulumi.Output<String> stateReason;
  /// Unique ID of the resource.
  /// This is unrelated to the access rules which allow specifying the root
  /// squash uid.
  late final pulumi.Output<String> uid;
  /// Represents a scheduled maintenance event.
  /// Structure is documented below.
  late final pulumi.Output<List<InstanceUpcomingMaintenanceSchedule>> upcomingMaintenanceSchedules;
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
          pulumi.CustomResourceOptions(version: '9.36.1').merge(options),
          additionalSecretOutputs: const ['effectiveLabels', 'pulumiLabels'],
        ) {
    accessRulesOptions = registerOutput<InstanceAccessRulesOptions?>('accessRulesOptions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return InstanceAccessRulesOptions.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    capacityGib = registerOutput<String>('capacityGib');
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    dynamicTierOptions = registerOutput<InstanceDynamicTierOptions?>('dynamicTierOptions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return InstanceDynamicTierOptions.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    filesystem = registerOutput<String>('filesystem');
    gkeSupportEnabled = registerOutput<bool?>('gkeSupportEnabled');
    instanceId = registerOutput<String>('instanceId');
    kmsKey = registerOutput<String?>('kmsKey');
    labels = registerOutput<Map<String, String>?>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    location = registerOutput<String>('location');
    maintenancePolicy = registerOutput<InstanceMaintenancePolicy?>('maintenancePolicy', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return InstanceMaintenancePolicy.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    mountPoint = registerOutput<String>('mountPoint');
    this.name = registerOutput<String>('name');
    network = registerOutput<String>('network');
    perUnitStorageThroughput = registerOutput<String?>('perUnitStorageThroughput');
    placementPolicy = registerOutput<String?>('placementPolicy');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    state = registerOutput<String>('state');
    stateReason = registerOutput<String>('stateReason');
    uid = registerOutput<String>('uid');
    upcomingMaintenanceSchedules = registerOutput<List<InstanceUpcomingMaintenanceSchedule>>('upcomingMaintenanceSchedules', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<InstanceUpcomingMaintenanceSchedule>(guardedValue, (value) => InstanceUpcomingMaintenanceSchedule.fromMap((value as Map).cast<String, dynamic>())); });
    updateTime = registerOutput<String>('updateTime');
  }

  /// Gets an existing [Instance] resource's state with the given [name] and [id].
  static Instance get(
    String name,
    pulumi.Input<String> id, {
    InstanceState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return Instance._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
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
    accessRulesOptions = registerOutput<InstanceAccessRulesOptions?>('accessRulesOptions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return InstanceAccessRulesOptions.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    capacityGib = registerOutput<String>('capacityGib');
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    dynamicTierOptions = registerOutput<InstanceDynamicTierOptions?>('dynamicTierOptions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return InstanceDynamicTierOptions.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    filesystem = registerOutput<String>('filesystem');
    gkeSupportEnabled = registerOutput<bool?>('gkeSupportEnabled');
    instanceId = registerOutput<String>('instanceId');
    kmsKey = registerOutput<String?>('kmsKey');
    labels = registerOutput<Map<String, String>?>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    location = registerOutput<String>('location');
    maintenancePolicy = registerOutput<InstanceMaintenancePolicy?>('maintenancePolicy', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return InstanceMaintenancePolicy.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    mountPoint = registerOutput<String>('mountPoint');
    this.name = registerOutput<String>('name');
    network = registerOutput<String>('network');
    perUnitStorageThroughput = registerOutput<String?>('perUnitStorageThroughput');
    placementPolicy = registerOutput<String?>('placementPolicy');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    this.state = registerOutput<String>('state');
    stateReason = registerOutput<String>('stateReason');
    uid = registerOutput<String>('uid');
    upcomingMaintenanceSchedules = registerOutput<List<InstanceUpcomingMaintenanceSchedule>>('upcomingMaintenanceSchedules', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<InstanceUpcomingMaintenanceSchedule>(guardedValue, (value) => InstanceUpcomingMaintenanceSchedule.fromMap((value as Map).cast<String, dynamic>())); });
    updateTime = registerOutput<String>('updateTime');
  }

  /// Creates a typed reference to an existing [Instance] resource.
  Instance.reference(String urn)
    : super(
        'gcp:lustre/instance:Instance',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
          additionalSecretOutputs: const ['effectiveLabels', 'pulumiLabels'],
        isResourceReference: true,
      ) {
    accessRulesOptions = registerOutput<InstanceAccessRulesOptions?>('accessRulesOptions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return InstanceAccessRulesOptions.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    capacityGib = registerOutput<String>('capacityGib');
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    dynamicTierOptions = registerOutput<InstanceDynamicTierOptions?>('dynamicTierOptions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return InstanceDynamicTierOptions.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    filesystem = registerOutput<String>('filesystem');
    gkeSupportEnabled = registerOutput<bool?>('gkeSupportEnabled');
    instanceId = registerOutput<String>('instanceId');
    kmsKey = registerOutput<String?>('kmsKey');
    labels = registerOutput<Map<String, String>?>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    location = registerOutput<String>('location');
    maintenancePolicy = registerOutput<InstanceMaintenancePolicy?>('maintenancePolicy', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return InstanceMaintenancePolicy.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    mountPoint = registerOutput<String>('mountPoint');
    this.name = registerOutput<String>('name');
    network = registerOutput<String>('network');
    perUnitStorageThroughput = registerOutput<String?>('perUnitStorageThroughput');
    placementPolicy = registerOutput<String?>('placementPolicy');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    state = registerOutput<String>('state');
    stateReason = registerOutput<String>('stateReason');
    uid = registerOutput<String>('uid');
    upcomingMaintenanceSchedules = registerOutput<List<InstanceUpcomingMaintenanceSchedule>>('upcomingMaintenanceSchedules', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<InstanceUpcomingMaintenanceSchedule>(guardedValue, (value) => InstanceUpcomingMaintenanceSchedule.fromMap((value as Map).cast<String, dynamic>())); });
    updateTime = registerOutput<String>('updateTime');
  }
}
