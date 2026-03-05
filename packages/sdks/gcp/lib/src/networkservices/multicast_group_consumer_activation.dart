import 'package:pulumi/pulumi.dart' as pulumi;
import 'multicast_group_consumer_activation_args.dart';
import 'multicast_group_consumer_activation_log_config.dart';
import 'multicast_group_consumer_activation_networkservices_state.dart';

/// Create a multicast group consumer activation in the specified location of the current project.
///
///
/// To get more information about MulticastGroupConsumerActivation, see:
///
/// * [API documentation](https://docs.cloud.google.com/vpc/docs/multicast/reference/rest/v1/projects.locations.multicastGroupConsumerActivations)
/// * How-to Guides
/// * [Create Multicast Group Consumer Activation](https://docs.cloud.google.com/vpc/docs/multicast/enable-consumer-network#activate-consumer)
///
/// ## Example Usage
///
/// ### Network Services Multicast Group Consumer Activation Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const network = new gcp.compute.Network("network", {
///     name: "test-network-mgca",
///     autoCreateSubnetworks: false,
/// });
/// const multicastDomain = new gcp.networkservices.MulticastDomain("multicast_domain", {
///     multicastDomainId: "test-domain-mgca",
///     location: "global",
///     adminNetwork: network.id,
///     connectionConfig: {
///         connectionType: "SAME_VPC",
///     },
/// }, {
///     dependsOn: [network],
/// });
/// const multicastDomainActivation = new gcp.networkservices.MulticastDomainActivation("multicast_domain_activation", {
///     multicastDomainActivationId: "test-domain-activation-mgca",
///     location: "us-central1-b",
///     multicastDomain: multicastDomain.id,
/// });
/// const consumerAssociation = new gcp.networkservices.MulticastConsumerAssociation("consumer_association", {
///     multicastConsumerAssociationId: "test-consumer-association-mgca",
///     location: "us-central1-b",
///     network: network.id,
///     multicastDomainActivation: multicastDomainActivation.id,
/// }, {
///     dependsOn: [network],
/// });
/// const internalRange = new gcp.networkconnectivity.InternalRange("internal_range", {
///     name: "test-internal-range-mgca",
///     network: network.selfLink,
///     usage: "FOR_VPC",
///     peering: "FOR_SELF",
///     ipCidrRange: "224.2.0.2/32",
/// });
/// const groupRange = new gcp.networkservices.MulticastGroupRange("group_range", {
///     multicastGroupRangeId: "test-group-range-mgca",
///     location: "global",
///     reservedInternalRange: internalRange.id,
///     multicastDomain: multicastDomain.id,
/// });
/// const groupRangeActivation = new gcp.networkservices.MulticastGroupRangeActivation("group_range_activation", {
///     multicastGroupRangeActivationId: "test-mgra-mgca",
///     location: "us-central1-b",
///     multicastGroupRange: groupRange.id,
///     multicastDomainActivation: multicastDomainActivation.id,
/// });
/// const mgcaTest = new gcp.networkservices.MulticastGroupConsumerActivation("mgca_test", {
///     multicastGroupConsumerActivationId: "test-mgca-mgca",
///     location: "us-central1-b",
///     multicastGroupRangeActivation: groupRangeActivation.id,
///     multicastConsumerAssociation: consumerAssociation.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// network = gcp.compute.Network("network",
///     name="test-network-mgca",
///     auto_create_subnetworks=False)
/// multicast_domain = gcp.networkservices.MulticastDomain("multicast_domain",
///     multicast_domain_id="test-domain-mgca",
///     location="global",
///     admin_network=network.id,
///     connection_config={
///         "connection_type": "SAME_VPC",
///     },
///     opts = pulumi.ResourceOptions(depends_on=[network]))
/// multicast_domain_activation = gcp.networkservices.MulticastDomainActivation("multicast_domain_activation",
///     multicast_domain_activation_id="test-domain-activation-mgca",
///     location="us-central1-b",
///     multicast_domain=multicast_domain.id)
/// consumer_association = gcp.networkservices.MulticastConsumerAssociation("consumer_association",
///     multicast_consumer_association_id="test-consumer-association-mgca",
///     location="us-central1-b",
///     network=network.id,
///     multicast_domain_activation=multicast_domain_activation.id,
///     opts = pulumi.ResourceOptions(depends_on=[network]))
/// internal_range = gcp.networkconnectivity.InternalRange("internal_range",
///     name="test-internal-range-mgca",
///     network=network.self_link,
///     usage="FOR_VPC",
///     peering="FOR_SELF",
///     ip_cidr_range="224.2.0.2/32")
/// group_range = gcp.networkservices.MulticastGroupRange("group_range",
///     multicast_group_range_id="test-group-range-mgca",
///     location="global",
///     reserved_internal_range=internal_range.id,
///     multicast_domain=multicast_domain.id)
/// group_range_activation = gcp.networkservices.MulticastGroupRangeActivation("group_range_activation",
///     multicast_group_range_activation_id="test-mgra-mgca",
///     location="us-central1-b",
///     multicast_group_range=group_range.id,
///     multicast_domain_activation=multicast_domain_activation.id)
/// mgca_test = gcp.networkservices.MulticastGroupConsumerActivation("mgca_test",
///     multicast_group_consumer_activation_id="test-mgca-mgca",
///     location="us-central1-b",
///     multicast_group_range_activation=group_range_activation.id,
///     multicast_consumer_association=consumer_association.id)
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
///         Name = "test-network-mgca",
///         AutoCreateSubnetworks = false,
///     });
///
///     var multicastDomain = new Gcp.NetworkServices.MulticastDomain("multicast_domain", new()
///     {
///         MulticastDomainId = "test-domain-mgca",
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
///     var multicastDomainActivation = new Gcp.NetworkServices.MulticastDomainActivation("multicast_domain_activation", new()
///     {
///         MulticastDomainActivationId = "test-domain-activation-mgca",
///         Location = "us-central1-b",
///         MulticastDomain = multicastDomain.Id,
///     });
///
///     var consumerAssociation = new Gcp.NetworkServices.MulticastConsumerAssociation("consumer_association", new()
///     {
///         MulticastConsumerAssociationId = "test-consumer-association-mgca",
///         Location = "us-central1-b",
///         Network = network.Id,
///         MulticastDomainActivation = multicastDomainActivation.Id,
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
///         Name = "test-internal-range-mgca",
///         Network = network.SelfLink,
///         Usage = "FOR_VPC",
///         Peering = "FOR_SELF",
///         IpCidrRange = "224.2.0.2/32",
///     });
///
///     var groupRange = new Gcp.NetworkServices.MulticastGroupRange("group_range", new()
///     {
///         MulticastGroupRangeId = "test-group-range-mgca",
///         Location = "global",
///         ReservedInternalRange = internalRange.Id,
///         MulticastDomain = multicastDomain.Id,
///     });
///
///     var groupRangeActivation = new Gcp.NetworkServices.MulticastGroupRangeActivation("group_range_activation", new()
///     {
///         MulticastGroupRangeActivationId = "test-mgra-mgca",
///         Location = "us-central1-b",
///         MulticastGroupRange = groupRange.Id,
///         MulticastDomainActivation = multicastDomainActivation.Id,
///     });
///
///     var mgcaTest = new Gcp.NetworkServices.MulticastGroupConsumerActivation("mgca_test", new()
///     {
///         MulticastGroupConsumerActivationId = "test-mgca-mgca",
///         Location = "us-central1-b",
///         MulticastGroupRangeActivation = groupRangeActivation.Id,
///         MulticastConsumerAssociation = consumerAssociation.Id,
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
/// 			Name:                  pulumi.String("test-network-mgca"),
/// 			AutoCreateSubnetworks: pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		multicastDomain, err := networkservices.NewMulticastDomain(ctx, "multicast_domain", &networkservices.MulticastDomainArgs{
/// 			MulticastDomainId: pulumi.String("test-domain-mgca"),
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
/// 		multicastDomainActivation, err := networkservices.NewMulticastDomainActivation(ctx, "multicast_domain_activation", &networkservices.MulticastDomainActivationArgs{
/// 			MulticastDomainActivationId: pulumi.String("test-domain-activation-mgca"),
/// 			Location:                    pulumi.String("us-central1-b"),
/// 			MulticastDomain:             multicastDomain.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		consumerAssociation, err := networkservices.NewMulticastConsumerAssociation(ctx, "consumer_association", &networkservices.MulticastConsumerAssociationArgs{
/// 			MulticastConsumerAssociationId: pulumi.String("test-consumer-association-mgca"),
/// 			Location:                       pulumi.String("us-central1-b"),
/// 			Network:                        network.ID(),
/// 			MulticastDomainActivation:      multicastDomainActivation.ID(),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			network,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		internalRange, err := networkconnectivity.NewInternalRange(ctx, "internal_range", &networkconnectivity.InternalRangeArgs{
/// 			Name:        pulumi.String("test-internal-range-mgca"),
/// 			Network:     network.SelfLink,
/// 			Usage:       pulumi.String("FOR_VPC"),
/// 			Peering:     pulumi.String("FOR_SELF"),
/// 			IpCidrRange: pulumi.String("224.2.0.2/32"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		groupRange, err := networkservices.NewMulticastGroupRange(ctx, "group_range", &networkservices.MulticastGroupRangeArgs{
/// 			MulticastGroupRangeId: pulumi.String("test-group-range-mgca"),
/// 			Location:              pulumi.String("global"),
/// 			ReservedInternalRange: internalRange.ID(),
/// 			MulticastDomain:       multicastDomain.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		groupRangeActivation, err := networkservices.NewMulticastGroupRangeActivation(ctx, "group_range_activation", &networkservices.MulticastGroupRangeActivationArgs{
/// 			MulticastGroupRangeActivationId: pulumi.String("test-mgra-mgca"),
/// 			Location:                        pulumi.String("us-central1-b"),
/// 			MulticastGroupRange:             groupRange.ID(),
/// 			MulticastDomainActivation:       multicastDomainActivation.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = networkservices.NewMulticastGroupConsumerActivation(ctx, "mgca_test", &networkservices.MulticastGroupConsumerActivationArgs{
/// 			MulticastGroupConsumerActivationId: pulumi.String("test-mgca-mgca"),
/// 			Location:                           pulumi.String("us-central1-b"),
/// 			MulticastGroupRangeActivation:      groupRangeActivation.ID(),
/// 			MulticastConsumerAssociation:       consumerAssociation.ID(),
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
/// import com.pulumi.gcp.networkservices.MulticastDomainActivation;
/// import com.pulumi.gcp.networkservices.MulticastDomainActivationArgs;
/// import com.pulumi.gcp.networkservices.MulticastConsumerAssociation;
/// import com.pulumi.gcp.networkservices.MulticastConsumerAssociationArgs;
/// import com.pulumi.gcp.networkconnectivity.InternalRange;
/// import com.pulumi.gcp.networkconnectivity.InternalRangeArgs;
/// import com.pulumi.gcp.networkservices.MulticastGroupRange;
/// import com.pulumi.gcp.networkservices.MulticastGroupRangeArgs;
/// import com.pulumi.gcp.networkservices.MulticastGroupRangeActivation;
/// import com.pulumi.gcp.networkservices.MulticastGroupRangeActivationArgs;
/// import com.pulumi.gcp.networkservices.MulticastGroupConsumerActivation;
/// import com.pulumi.gcp.networkservices.MulticastGroupConsumerActivationArgs;
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
///             .name("test-network-mgca")
///             .autoCreateSubnetworks(false)
///             .build());
///
///         var multicastDomain = new MulticastDomain("multicastDomain", MulticastDomainArgs.builder()
///             .multicastDomainId("test-domain-mgca")
///             .location("global")
///             .adminNetwork(network.id())
///             .connectionConfig(MulticastDomainConnectionConfigArgs.builder()
///                 .connectionType("SAME_VPC")
///                 .build())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(network)
///                 .build());
///
///         var multicastDomainActivation = new MulticastDomainActivation("multicastDomainActivation", MulticastDomainActivationArgs.builder()
///             .multicastDomainActivationId("test-domain-activation-mgca")
///             .location("us-central1-b")
///             .multicastDomain(multicastDomain.id())
///             .build());
///
///         var consumerAssociation = new MulticastConsumerAssociation("consumerAssociation", MulticastConsumerAssociationArgs.builder()
///             .multicastConsumerAssociationId("test-consumer-association-mgca")
///             .location("us-central1-b")
///             .network(network.id())
///             .multicastDomainActivation(multicastDomainActivation.id())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(network)
///                 .build());
///
///         var internalRange = new InternalRange("internalRange", InternalRangeArgs.builder()
///             .name("test-internal-range-mgca")
///             .network(network.selfLink())
///             .usage("FOR_VPC")
///             .peering("FOR_SELF")
///             .ipCidrRange("224.2.0.2/32")
///             .build());
///
///         var groupRange = new MulticastGroupRange("groupRange", MulticastGroupRangeArgs.builder()
///             .multicastGroupRangeId("test-group-range-mgca")
///             .location("global")
///             .reservedInternalRange(internalRange.id())
///             .multicastDomain(multicastDomain.id())
///             .build());
///
///         var groupRangeActivation = new MulticastGroupRangeActivation("groupRangeActivation", MulticastGroupRangeActivationArgs.builder()
///             .multicastGroupRangeActivationId("test-mgra-mgca")
///             .location("us-central1-b")
///             .multicastGroupRange(groupRange.id())
///             .multicastDomainActivation(multicastDomainActivation.id())
///             .build());
///
///         var mgcaTest = new MulticastGroupConsumerActivation("mgcaTest", MulticastGroupConsumerActivationArgs.builder()
///             .multicastGroupConsumerActivationId("test-mgca-mgca")
///             .location("us-central1-b")
///             .multicastGroupRangeActivation(groupRangeActivation.id())
///             .multicastConsumerAssociation(consumerAssociation.id())
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
///       name: test-network-mgca
///       autoCreateSubnetworks: false
///   multicastDomain:
///     type: gcp:networkservices:MulticastDomain
///     name: multicast_domain
///     properties:
///       multicastDomainId: test-domain-mgca
///       location: global
///       adminNetwork: ${network.id}
///       connectionConfig:
///         connectionType: SAME_VPC
///     options:
///       dependsOn:
///         - ${network}
///   multicastDomainActivation:
///     type: gcp:networkservices:MulticastDomainActivation
///     name: multicast_domain_activation
///     properties:
///       multicastDomainActivationId: test-domain-activation-mgca
///       location: us-central1-b
///       multicastDomain: ${multicastDomain.id}
///   consumerAssociation:
///     type: gcp:networkservices:MulticastConsumerAssociation
///     name: consumer_association
///     properties:
///       multicastConsumerAssociationId: test-consumer-association-mgca
///       location: us-central1-b
///       network: ${network.id}
///       multicastDomainActivation: ${multicastDomainActivation.id}
///     options:
///       dependsOn:
///         - ${network}
///   internalRange:
///     type: gcp:networkconnectivity:InternalRange
///     name: internal_range
///     properties:
///       name: test-internal-range-mgca
///       network: ${network.selfLink}
///       usage: FOR_VPC
///       peering: FOR_SELF
///       ipCidrRange: 224.2.0.2/32
///   groupRange:
///     type: gcp:networkservices:MulticastGroupRange
///     name: group_range
///     properties:
///       multicastGroupRangeId: test-group-range-mgca
///       location: global
///       reservedInternalRange: ${internalRange.id}
///       multicastDomain: ${multicastDomain.id}
///   groupRangeActivation:
///     type: gcp:networkservices:MulticastGroupRangeActivation
///     name: group_range_activation
///     properties:
///       multicastGroupRangeActivationId: test-mgra-mgca
///       location: us-central1-b
///       multicastGroupRange: ${groupRange.id}
///       multicastDomainActivation: ${multicastDomainActivation.id}
///   mgcaTest:
///     type: gcp:networkservices:MulticastGroupConsumerActivation
///     name: mgca_test
///     properties:
///       multicastGroupConsumerActivationId: test-mgca-mgca
///       location: us-central1-b
///       multicastGroupRangeActivation: ${groupRangeActivation.id}
///       multicastConsumerAssociation: ${consumerAssociation.id}
/// ```
///
///
/// ## Import
///
/// MulticastGroupConsumerActivation can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/multicastGroupConsumerActivations/{{multicast_group_consumer_activation_id}}`
///
/// * `{{project}}/{{location}}/{{multicast_group_consumer_activation_id}}`
///
/// * `{{location}}/{{multicast_group_consumer_activation_id}}`
///
/// When using the `pulumi import` command, MulticastGroupConsumerActivation can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:networkservices/multicastGroupConsumerActivation:MulticastGroupConsumerActivation default projects/{{project}}/locations/{{location}}/multicastGroupConsumerActivations/{{multicast_group_consumer_activation_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:networkservices/multicastGroupConsumerActivation:MulticastGroupConsumerActivation default {{project}}/{{location}}/{{multicast_group_consumer_activation_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:networkservices/multicastGroupConsumerActivation:MulticastGroupConsumerActivation default {{location}}/{{multicast_group_consumer_activation_id}}
/// ```
class MulticastGroupConsumerActivation extends pulumi.CustomResource {
  /// The timestamp when the multicast group consumer activation
  /// was created.
  late final pulumi.Output<String> createTime;

  /// An optional text description of the multicast group consumer activation.
  late final pulumi.Output<String?> description;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;

  /// Labels as key-value pairs
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;

  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  late final pulumi.Output<String> location;

  /// The logging configuration.
  /// Structure is documented below.
  late final pulumi.Output<MulticastGroupConsumerActivationLogConfig?>
  logConfig;

  /// The resource name of the multicast consumer association that is in the
  /// same zone as this multicast group consumer activation.
  /// Use the following format:
  /// `projects/*/locations/*/multicastConsumerAssociations/*`.
  late final pulumi.Output<String> multicastConsumerAssociation;

  /// A unique name for the multicast group consumer activation.
  /// The name is restricted to letters, numbers, and hyphen, with the first
  /// character a letter, and the last a letter or a number. The name must not
  /// exceed 48 characters.
  late final pulumi.Output<String> multicastGroupConsumerActivationId;

  /// The resource name of the multicast group range activation created by the
  /// admin in the same zone as this multicast group consumer activation. Use the
  /// following format:
  /// // `projects/*/locations/*/multicastGroupRangeActivations/*`.
  late final pulumi.Output<String> multicastGroupRangeActivation;

  /// Identifier. The resource name of the multicast group consumer activation.
  /// Use the following format:
  /// `projects/*/locations/*/multicastGroupConsumerActivations/*`.
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

  /// The Google-generated UUID for the resource. This value is
  /// unique across all multicast group consumer activation resources. If a group
  /// consumer activation is deleted and another with the same name is created,
  /// the new group consumer activation is assigned a different unique_id.
  late final pulumi.Output<String> uniqueId;

  /// The timestamp when the multicast group consumer activation
  /// was most recently updated.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [MulticastGroupConsumerActivation].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [MulticastGroupConsumerActivation]. {@macro pulumi_networkservices_multicast_group_consumer_activation_multicast_group_consumer_activation_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  MulticastGroupConsumerActivation(
    String name, {
    MulticastGroupConsumerActivationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'gcp:networkservices/multicastGroupConsumerActivation:MulticastGroupConsumerActivation',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    createTime = registerOutput<String>('createTime');
    description = registerOutput<String?>('description');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels');
    labels = registerOutput<Map<String, String>?>('labels');
    location = registerOutput<String>('location');
    logConfig = registerOutput<MulticastGroupConsumerActivationLogConfig?>(
      'logConfig',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return MulticastGroupConsumerActivationLogConfig.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    multicastConsumerAssociation = registerOutput<String>(
      'multicastConsumerAssociation',
    );
    multicastGroupConsumerActivationId = registerOutput<String>(
      'multicastGroupConsumerActivationId',
    );
    multicastGroupRangeActivation = registerOutput<String>(
      'multicastGroupRangeActivation',
    );
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    states = registerOutput<List<Map<String, dynamic>>>('states');
    uniqueId = registerOutput<String>('uniqueId');
    updateTime = registerOutput<String>('updateTime');
  }

  /// Gets an existing [MulticastGroupConsumerActivation] resource's state with the given [name] and [id].
  static MulticastGroupConsumerActivation get(
    String name,
    pulumi.Input<String> id, {
    MulticastGroupConsumerActivationNetworkservicesState? state,
  }) {
    return MulticastGroupConsumerActivation._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  MulticastGroupConsumerActivation._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'gcp:networkservices/multicastGroupConsumerActivation:MulticastGroupConsumerActivation',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    createTime = registerOutput<String>('createTime');
    description = registerOutput<String?>('description');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels');
    labels = registerOutput<Map<String, String>?>('labels');
    location = registerOutput<String>('location');
    logConfig = registerOutput<MulticastGroupConsumerActivationLogConfig?>(
      'logConfig',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return MulticastGroupConsumerActivationLogConfig.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    multicastConsumerAssociation = registerOutput<String>(
      'multicastConsumerAssociation',
    );
    multicastGroupConsumerActivationId = registerOutput<String>(
      'multicastGroupConsumerActivationId',
    );
    multicastGroupRangeActivation = registerOutput<String>(
      'multicastGroupRangeActivation',
    );
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    states = registerOutput<List<Map<String, dynamic>>>('states');
    uniqueId = registerOutput<String>('uniqueId');
    updateTime = registerOutput<String>('updateTime');
  }
}
