import 'package:pulumi/pulumi.dart' as pulumi;
import 'multicast_group_range_activation_args.dart';
import 'multicast_group_range_activation_log_config.dart';
import 'multicast_group_range_activation_networkservices_state.dart';

/// Create a multicast group range activation in the specified location of the current project.
///
///
/// To get more information about MulticastGroupRangeActivation, see:
///
/// * [API documentation](https://docs.cloud.google.com/vpc/docs/multicast/reference/rest/v1/projects.locations.multicastGroupRangeActivations)
/// * How-to Guides
/// * [Create Multicast Group Range Activation](https://docs.cloud.google.com/vpc/docs/multicast/create-group-ranges#activate_the_group_range)
///
/// ## Example Usage
///
/// ### Network Services Multicast Group Range Activation Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const network = new gcp.compute.Network("network", {
///     name: "test-network-mgra",
///     autoCreateSubnetworks: false,
/// });
/// const multicastDomain = new gcp.networkservices.MulticastDomain("multicast_domain", {
///     multicastDomainId: "test-domain-mgra",
///     location: "global",
///     adminNetwork: network.id,
///     connectionConfig: {
///         connectionType: "SAME_VPC",
///     },
/// }, {
///     dependsOn: [network],
/// });
/// const internalRange = new gcp.networkconnectivity.InternalRange("internal_range", {
///     name: "test-internal-range-mgra",
///     network: network.selfLink,
///     usage: "FOR_VPC",
///     peering: "FOR_SELF",
///     ipCidrRange: "224.2.0.2/32",
/// });
/// const groupRange = new gcp.networkservices.MulticastGroupRange("group_range", {
///     multicastGroupRangeId: "test-group-range-mgra",
///     location: "global",
///     reservedInternalRange: internalRange.id,
///     multicastDomain: multicastDomain.id,
/// });
/// const multicastDomainActivation = new gcp.networkservices.MulticastDomainActivation("multicast_domain_activation", {
///     multicastDomainActivationId: "test-domain-activation-mgra",
///     location: "us-central1-b",
///     multicastDomain: multicastDomain.id,
/// });
/// const mgraTest = new gcp.networkservices.MulticastGroupRangeActivation("mgra_test", {
///     multicastGroupRangeActivationId: "test-mgra-mgra",
///     location: "us-central1-b",
///     description: "my description",
///     labels: {
///         "test-label": "test-value",
///     },
///     multicastGroupRange: groupRange.id,
///     multicastDomainActivation: multicastDomainActivation.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// network = gcp.compute.Network("network",
///     name="test-network-mgra",
///     auto_create_subnetworks=False)
/// multicast_domain = gcp.networkservices.MulticastDomain("multicast_domain",
///     multicast_domain_id="test-domain-mgra",
///     location="global",
///     admin_network=network.id,
///     connection_config={
///         "connection_type": "SAME_VPC",
///     },
///     opts = pulumi.ResourceOptions(depends_on=[network]))
/// internal_range = gcp.networkconnectivity.InternalRange("internal_range",
///     name="test-internal-range-mgra",
///     network=network.self_link,
///     usage="FOR_VPC",
///     peering="FOR_SELF",
///     ip_cidr_range="224.2.0.2/32")
/// group_range = gcp.networkservices.MulticastGroupRange("group_range",
///     multicast_group_range_id="test-group-range-mgra",
///     location="global",
///     reserved_internal_range=internal_range.id,
///     multicast_domain=multicast_domain.id)
/// multicast_domain_activation = gcp.networkservices.MulticastDomainActivation("multicast_domain_activation",
///     multicast_domain_activation_id="test-domain-activation-mgra",
///     location="us-central1-b",
///     multicast_domain=multicast_domain.id)
/// mgra_test = gcp.networkservices.MulticastGroupRangeActivation("mgra_test",
///     multicast_group_range_activation_id="test-mgra-mgra",
///     location="us-central1-b",
///     description="my description",
///     labels={
///         "test-label": "test-value",
///     },
///     multicast_group_range=group_range.id,
///     multicast_domain_activation=multicast_domain_activation.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var network = new Gcp.Compute.Network("network", new()
///     {
///         Name = "test-network-mgra",
///         AutoCreateSubnetworks = false,
///     });
///
///     var multicastDomain = new Gcp.NetworkServices.MulticastDomain("multicast_domain", new()
///     {
///         MulticastDomainId = "test-domain-mgra",
///         Location = "global",
///         AdminNetwork = network.Id,
///         ConnectionConfig = new Gcp.NetworkServices.Inputs.MulticastDomainConnectionConfigArgs
///         {
///             ConnectionType = "SAME_VPC",
///         },
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             network,
///         },
///     });
///
///     var internalRange = new Gcp.NetworkConnectivity.InternalRange("internal_range", new()
///     {
///         Name = "test-internal-range-mgra",
///         Network = network.SelfLink,
///         Usage = "FOR_VPC",
///         Peering = "FOR_SELF",
///         IpCidrRange = "224.2.0.2/32",
///     });
///
///     var groupRange = new Gcp.NetworkServices.MulticastGroupRange("group_range", new()
///     {
///         MulticastGroupRangeId = "test-group-range-mgra",
///         Location = "global",
///         ReservedInternalRange = internalRange.Id,
///         MulticastDomain = multicastDomain.Id,
///     });
///
///     var multicastDomainActivation = new Gcp.NetworkServices.MulticastDomainActivation("multicast_domain_activation", new()
///     {
///         MulticastDomainActivationId = "test-domain-activation-mgra",
///         Location = "us-central1-b",
///         MulticastDomain = multicastDomain.Id,
///     });
///
///     var mgraTest = new Gcp.NetworkServices.MulticastGroupRangeActivation("mgra_test", new()
///     {
///         MulticastGroupRangeActivationId = "test-mgra-mgra",
///         Location = "us-central1-b",
///         Description = "my description",
///         Labels =
///         {
///             { "test-label", "test-value" },
///         },
///         MulticastGroupRange = groupRange.Id,
///         MulticastDomainActivation = multicastDomainActivation.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/networkconnectivity"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/networkservices"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		network, err := compute.NewNetwork(ctx, "network", &compute.NetworkArgs{
/// 			Name:                  pulumi.String("test-network-mgra"),
/// 			AutoCreateSubnetworks: pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		multicastDomain, err := networkservices.NewMulticastDomain(ctx, "multicast_domain", &networkservices.MulticastDomainArgs{
/// 			MulticastDomainId: pulumi.String("test-domain-mgra"),
/// 			Location:          pulumi.String("global"),
/// 			AdminNetwork:      network.ID(),
/// 			ConnectionConfig: &networkservices.MulticastDomainConnectionConfigArgs{
/// 				ConnectionType: pulumi.String("SAME_VPC"),
/// 			},
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			network,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		internalRange, err := networkconnectivity.NewInternalRange(ctx, "internal_range", &networkconnectivity.InternalRangeArgs{
/// 			Name:        pulumi.String("test-internal-range-mgra"),
/// 			Network:     network.SelfLink,
/// 			Usage:       pulumi.String("FOR_VPC"),
/// 			Peering:     pulumi.String("FOR_SELF"),
/// 			IpCidrRange: pulumi.String("224.2.0.2/32"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		groupRange, err := networkservices.NewMulticastGroupRange(ctx, "group_range", &networkservices.MulticastGroupRangeArgs{
/// 			MulticastGroupRangeId: pulumi.String("test-group-range-mgra"),
/// 			Location:              pulumi.String("global"),
/// 			ReservedInternalRange: internalRange.ID(),
/// 			MulticastDomain:       multicastDomain.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		multicastDomainActivation, err := networkservices.NewMulticastDomainActivation(ctx, "multicast_domain_activation", &networkservices.MulticastDomainActivationArgs{
/// 			MulticastDomainActivationId: pulumi.String("test-domain-activation-mgra"),
/// 			Location:                    pulumi.String("us-central1-b"),
/// 			MulticastDomain:             multicastDomain.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = networkservices.NewMulticastGroupRangeActivation(ctx, "mgra_test", &networkservices.MulticastGroupRangeActivationArgs{
/// 			MulticastGroupRangeActivationId: pulumi.String("test-mgra-mgra"),
/// 			Location:                        pulumi.String("us-central1-b"),
/// 			Description:                     pulumi.String("my description"),
/// 			Labels: pulumi.StringMap{
/// 				"test-label": pulumi.String("test-value"),
/// 			},
/// 			MulticastGroupRange:       groupRange.ID(),
/// 			MulticastDomainActivation: multicastDomainActivation.ID(),
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
/// import com.pulumi.gcp.networkservices.MulticastDomain;
/// import com.pulumi.gcp.networkservices.MulticastDomainArgs;
/// import com.pulumi.gcp.networkservices.inputs.MulticastDomainConnectionConfigArgs;
/// import com.pulumi.gcp.networkconnectivity.InternalRange;
/// import com.pulumi.gcp.networkconnectivity.InternalRangeArgs;
/// import com.pulumi.gcp.networkservices.MulticastGroupRange;
/// import com.pulumi.gcp.networkservices.MulticastGroupRangeArgs;
/// import com.pulumi.gcp.networkservices.MulticastDomainActivation;
/// import com.pulumi.gcp.networkservices.MulticastDomainActivationArgs;
/// import com.pulumi.gcp.networkservices.MulticastGroupRangeActivation;
/// import com.pulumi.gcp.networkservices.MulticastGroupRangeActivationArgs;
/// import com.pulumi.resources.CustomResourceOptions;
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
///         var network = new Network("network", NetworkArgs.builder()
///             .name("test-network-mgra")
///             .autoCreateSubnetworks(false)
///             .build());
///
///         var multicastDomain = new MulticastDomain("multicastDomain", MulticastDomainArgs.builder()
///             .multicastDomainId("test-domain-mgra")
///             .location("global")
///             .adminNetwork(network.id())
///             .connectionConfig(MulticastDomainConnectionConfigArgs.builder()
///                 .connectionType("SAME_VPC")
///                 .build())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(network)
///                 .build());
///
///         var internalRange = new InternalRange("internalRange", InternalRangeArgs.builder()
///             .name("test-internal-range-mgra")
///             .network(network.selfLink())
///             .usage("FOR_VPC")
///             .peering("FOR_SELF")
///             .ipCidrRange("224.2.0.2/32")
///             .build());
///
///         var groupRange = new MulticastGroupRange("groupRange", MulticastGroupRangeArgs.builder()
///             .multicastGroupRangeId("test-group-range-mgra")
///             .location("global")
///             .reservedInternalRange(internalRange.id())
///             .multicastDomain(multicastDomain.id())
///             .build());
///
///         var multicastDomainActivation = new MulticastDomainActivation("multicastDomainActivation", MulticastDomainActivationArgs.builder()
///             .multicastDomainActivationId("test-domain-activation-mgra")
///             .location("us-central1-b")
///             .multicastDomain(multicastDomain.id())
///             .build());
///
///         var mgraTest = new MulticastGroupRangeActivation("mgraTest", MulticastGroupRangeActivationArgs.builder()
///             .multicastGroupRangeActivationId("test-mgra-mgra")
///             .location("us-central1-b")
///             .description("my description")
///             .labels(Map.of("test-label", "test-value"))
///             .multicastGroupRange(groupRange.id())
///             .multicastDomainActivation(multicastDomainActivation.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   network:
///     type: gcp:compute:Network
///     properties:
///       name: test-network-mgra
///       autoCreateSubnetworks: false
///   multicastDomain:
///     type: gcp:networkservices:MulticastDomain
///     name: multicast_domain
///     properties:
///       multicastDomainId: test-domain-mgra
///       location: global
///       adminNetwork: ${network.id}
///       connectionConfig:
///         connectionType: SAME_VPC
///     options:
///       dependsOn:
///         - ${network}
///   internalRange:
///     type: gcp:networkconnectivity:InternalRange
///     name: internal_range
///     properties:
///       name: test-internal-range-mgra
///       network: ${network.selfLink}
///       usage: FOR_VPC
///       peering: FOR_SELF
///       ipCidrRange: 224.2.0.2/32
///   groupRange:
///     type: gcp:networkservices:MulticastGroupRange
///     name: group_range
///     properties:
///       multicastGroupRangeId: test-group-range-mgra
///       location: global
///       reservedInternalRange: ${internalRange.id}
///       multicastDomain: ${multicastDomain.id}
///   multicastDomainActivation:
///     type: gcp:networkservices:MulticastDomainActivation
///     name: multicast_domain_activation
///     properties:
///       multicastDomainActivationId: test-domain-activation-mgra
///       location: us-central1-b
///       multicastDomain: ${multicastDomain.id}
///   mgraTest:
///     type: gcp:networkservices:MulticastGroupRangeActivation
///     name: mgra_test
///     properties:
///       multicastGroupRangeActivationId: test-mgra-mgra
///       location: us-central1-b
///       description: my description
///       labels:
///         test-label: test-value
///       multicastGroupRange: ${groupRange.id}
///       multicastDomainActivation: ${multicastDomainActivation.id}
/// ```
///
///
/// ## Import
///
/// MulticastGroupRangeActivation can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/multicastGroupRangeActivations/{{multicast_group_range_activation_id}}`
///
/// * `{{project}}/{{location}}/{{multicast_group_range_activation_id}}`
///
/// * `{{location}}/{{multicast_group_range_activation_id}}`
///
/// When using the `pulumi import` command, MulticastGroupRangeActivation can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:networkservices/multicastGroupRangeActivation:MulticastGroupRangeActivation default projects/{{project}}/locations/{{location}}/multicastGroupRangeActivations/{{multicast_group_range_activation_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:networkservices/multicastGroupRangeActivation:MulticastGroupRangeActivation default {{project}}/{{location}}/{{multicast_group_range_activation_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:networkservices/multicastGroupRangeActivation:MulticastGroupRangeActivation default {{location}}/{{multicast_group_range_activation_id}}
/// ```
class MulticastGroupRangeActivation extends pulumi.CustomResource {
  /// [Output only] The timestamp when the multicast group range activation was
  /// created.
  late final pulumi.Output<String> createTime;
  /// An optional text description of the multicast group range activation.
  late final pulumi.Output<String?> description;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;
  /// [Output only] The multicast group IP address range.
  late final pulumi.Output<String> ipCidrRange;
  /// Labels as key-value pairs.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  late final pulumi.Output<String> location;
  /// The logging configuration.
  /// Structure is documented below.
  late final pulumi.Output<MulticastGroupRangeActivationLogConfig?> logConfig;
  /// The resource name of a multicast domain activation that is in the
  /// same zone as this multicast group.
  /// Use the following format:
  /// `projects/*/locations/*/multicastDomainActivations/*`
  late final pulumi.Output<String> multicastDomainActivation;
  /// The resource names of associated multicast group consumer activations.
  /// Use the following format:
  /// `projects/*/locations/*/multicastGroupConsumerActivations/*`.
  late final pulumi.Output<List<String>> multicastGroupConsumerActivations;
  /// The resource name of the global multicast group range for the
  /// group. Use the following format:
  /// `projects/*/locations/global/multicastGroupRanges/*`
  late final pulumi.Output<String> multicastGroupRange;
  /// A unique name for the multicast group range activation.
  /// The name is restricted to letters, numbers, and hyphen, with the first
  /// character a letter, and the last a letter or a number. The name must not
  /// exceed 48 characters.
  late final pulumi.Output<String> multicastGroupRangeActivationId;
  /// Identifier. The resource name of the multicast group range activation.
  /// Use the following format:
  /// `projects/*/locations/*/multicastGroupRangeActivations/*`.
  late final pulumi.Output<String> name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;
  /// (Output)
  /// The state of the multicast resource.
  /// Possible values:
  /// CREATING
  /// ACTIVE
  /// DELETING
  /// DELETE_FAILED
  /// UPDATING
  /// UPDATE_FAILED
  /// INACTIVE
  late final pulumi.Output<List<Map<String, dynamic>>> states;
  /// [Output only] The Google-generated UUID for the resource. This value is
  /// unique across all multicast group resources. If a group is deleted and
  /// another with the same name is created, the new group is assigned a
  /// different unique_id.
  late final pulumi.Output<String> uniqueId;
  /// [Output only] The timestamp when the multicast group range activation was
  /// most recently updated.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [MulticastGroupRangeActivation].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [MulticastGroupRangeActivation]. {@macro pulumi_networkservices_multicast_group_range_activation_multicast_group_range_activation_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  MulticastGroupRangeActivation(
    String name, {
    MulticastGroupRangeActivationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:networkservices/multicastGroupRangeActivation:MulticastGroupRangeActivation',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    createTime = registerOutput<String>('createTime');
    description = registerOutput<String?>('description');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels');
    ipCidrRange = registerOutput<String>('ipCidrRange');
    labels = registerOutput<Map<String, String>?>('labels');
    location = registerOutput<String>('location');
    logConfig = registerOutput<MulticastGroupRangeActivationLogConfig?>('logConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return MulticastGroupRangeActivationLogConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    multicastDomainActivation = registerOutput<String>('multicastDomainActivation');
    multicastGroupConsumerActivations = registerOutput<List<String>>('multicastGroupConsumerActivations');
    multicastGroupRange = registerOutput<String>('multicastGroupRange');
    multicastGroupRangeActivationId = registerOutput<String>('multicastGroupRangeActivationId');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    states = registerOutput<List<Map<String, dynamic>>>('states');
    uniqueId = registerOutput<String>('uniqueId');
    updateTime = registerOutput<String>('updateTime');
  }

  /// Gets an existing [MulticastGroupRangeActivation] resource's state with the given [name] and [id].
  static MulticastGroupRangeActivation get(
    String name,
    pulumi.Input<String> id, {
    MulticastGroupRangeActivationNetworkservicesState? state,
  }) {
    return MulticastGroupRangeActivation._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  MulticastGroupRangeActivation._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:networkservices/multicastGroupRangeActivation:MulticastGroupRangeActivation',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    createTime = registerOutput<String>('createTime');
    description = registerOutput<String?>('description');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels');
    ipCidrRange = registerOutput<String>('ipCidrRange');
    labels = registerOutput<Map<String, String>?>('labels');
    location = registerOutput<String>('location');
    logConfig = registerOutput<MulticastGroupRangeActivationLogConfig?>('logConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return MulticastGroupRangeActivationLogConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    multicastDomainActivation = registerOutput<String>('multicastDomainActivation');
    multicastGroupConsumerActivations = registerOutput<List<String>>('multicastGroupConsumerActivations');
    multicastGroupRange = registerOutput<String>('multicastGroupRange');
    multicastGroupRangeActivationId = registerOutput<String>('multicastGroupRangeActivationId');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    states = registerOutput<List<Map<String, dynamic>>>('states');
    uniqueId = registerOutput<String>('uniqueId');
    updateTime = registerOutput<String>('updateTime');
  }
}
