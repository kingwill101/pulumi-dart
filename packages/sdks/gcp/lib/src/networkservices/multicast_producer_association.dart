import 'package:pulumi/pulumi.dart' as pulumi;
import 'multicast_producer_association_args.dart';
import 'multicast_producer_association_networkservices_state.dart';

/// Create a multicast producer association in the specified location of the current project.
///
///
/// To get more information about MulticastProducerAssociation, see:
///
/// * [API documentation](https://docs.cloud.google.com/vpc/docs/multicast/reference/rest/v1/projects.locations.multicastProducerAssociations)
/// * How-to Guides
/// * [Create Multicast Producer Association](https://docs.cloud.google.com/vpc/docs/multicast/enable-producer-network#create-producer)
///
/// ## Example Usage
///
/// ### Network Services Multicast Producer Association Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const network = new gcp.compute.Network("network", {
///     name: "test-network-mpa",
///     autoCreateSubnetworks: false,
/// });
/// const multicastDomain = new gcp.networkservices.MulticastDomain("multicast_domain", {
///     multicastDomainId: "test-domain-mpa",
///     location: "global",
///     adminNetwork: network.id,
///     connectionConfig: {
///         connectionType: "SAME_VPC",
///     },
/// }, {
///     dependsOn: [network],
/// });
/// const multicastDomainActivation = new gcp.networkservices.MulticastDomainActivation("multicast_domain_activation", {
///     multicastDomainActivationId: "test-domain-activation-mpa",
///     location: "us-central1-b",
///     multicastDomain: multicastDomain.id,
/// });
/// const mpaTest = new gcp.networkservices.MulticastProducerAssociation("mpa_test", {
///     multicastProducerAssociationId: "test-producer-association-mpa",
///     location: "us-central1-b",
///     network: network.id,
///     multicastDomainActivation: multicastDomainActivation.id,
/// }, {
///     dependsOn: [network],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// network = gcp.compute.Network("network",
///     name="test-network-mpa",
///     auto_create_subnetworks=False)
/// multicast_domain = gcp.networkservices.MulticastDomain("multicast_domain",
///     multicast_domain_id="test-domain-mpa",
///     location="global",
///     admin_network=network.id,
///     connection_config={
///         "connection_type": "SAME_VPC",
///     },
///     opts = pulumi.ResourceOptions(depends_on=[network]))
/// multicast_domain_activation = gcp.networkservices.MulticastDomainActivation("multicast_domain_activation",
///     multicast_domain_activation_id="test-domain-activation-mpa",
///     location="us-central1-b",
///     multicast_domain=multicast_domain.id)
/// mpa_test = gcp.networkservices.MulticastProducerAssociation("mpa_test",
///     multicast_producer_association_id="test-producer-association-mpa",
///     location="us-central1-b",
///     network=network.id,
///     multicast_domain_activation=multicast_domain_activation.id,
///     opts = pulumi.ResourceOptions(depends_on=[network]))
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
///         Name = "test-network-mpa",
///         AutoCreateSubnetworks = false,
///     });
///
///     var multicastDomain = new Gcp.NetworkServices.MulticastDomain("multicast_domain", new()
///     {
///         MulticastDomainId = "test-domain-mpa",
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
///         MulticastDomainActivationId = "test-domain-activation-mpa",
///         Location = "us-central1-b",
///         MulticastDomain = multicastDomain.Id,
///     });
///
///     var mpaTest = new Gcp.NetworkServices.MulticastProducerAssociation("mpa_test", new()
///     {
///         MulticastProducerAssociationId = "test-producer-association-mpa",
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
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/networkservices"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		network, err := compute.NewNetwork(ctx, "network", &compute.NetworkArgs{
/// 			Name:                  pulumi.String("test-network-mpa"),
/// 			AutoCreateSubnetworks: pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		multicastDomain, err := networkservices.NewMulticastDomain(ctx, "multicast_domain", &networkservices.MulticastDomainArgs{
/// 			MulticastDomainId: pulumi.String("test-domain-mpa"),
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
/// 			MulticastDomainActivationId: pulumi.String("test-domain-activation-mpa"),
/// 			Location:                    pulumi.String("us-central1-b"),
/// 			MulticastDomain:             multicastDomain.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = networkservices.NewMulticastProducerAssociation(ctx, "mpa_test", &networkservices.MulticastProducerAssociationArgs{
/// 			MulticastProducerAssociationId: pulumi.String("test-producer-association-mpa"),
/// 			Location:                       pulumi.String("us-central1-b"),
/// 			Network:                        network.ID(),
/// 			MulticastDomainActivation:      multicastDomainActivation.ID(),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			network,
/// 		}))
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
/// import com.pulumi.gcp.networkservices.MulticastProducerAssociation;
/// import com.pulumi.gcp.networkservices.MulticastProducerAssociationArgs;
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
///             .name("test-network-mpa")
///             .autoCreateSubnetworks(false)
///             .build());
///
///         var multicastDomain = new MulticastDomain("multicastDomain", MulticastDomainArgs.builder()
///             .multicastDomainId("test-domain-mpa")
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
///             .multicastDomainActivationId("test-domain-activation-mpa")
///             .location("us-central1-b")
///             .multicastDomain(multicastDomain.id())
///             .build());
///
///         var mpaTest = new MulticastProducerAssociation("mpaTest", MulticastProducerAssociationArgs.builder()
///             .multicastProducerAssociationId("test-producer-association-mpa")
///             .location("us-central1-b")
///             .network(network.id())
///             .multicastDomainActivation(multicastDomainActivation.id())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(network)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   network:
///     type: gcp:compute:Network
///     properties:
///       name: test-network-mpa
///       autoCreateSubnetworks: false
///   multicastDomain:
///     type: gcp:networkservices:MulticastDomain
///     name: multicast_domain
///     properties:
///       multicastDomainId: test-domain-mpa
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
///       multicastDomainActivationId: test-domain-activation-mpa
///       location: us-central1-b
///       multicastDomain: ${multicastDomain.id}
///   mpaTest:
///     type: gcp:networkservices:MulticastProducerAssociation
///     name: mpa_test
///     properties:
///       multicastProducerAssociationId: test-producer-association-mpa
///       location: us-central1-b
///       network: ${network.id}
///       multicastDomainActivation: ${multicastDomainActivation.id}
///     options:
///       dependsOn:
///         - ${network}
/// ```
///
///
/// ## Import
///
/// MulticastProducerAssociation can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/multicastProducerAssociations/{{multicast_producer_association_id}}`
///
/// * `{{project}}/{{location}}/{{multicast_producer_association_id}}`
///
/// * `{{location}}/{{multicast_producer_association_id}}`
///
/// When using the `pulumi import` command, MulticastProducerAssociation can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:networkservices/multicastProducerAssociation:MulticastProducerAssociation default projects/{{project}}/locations/{{location}}/multicastProducerAssociations/{{multicast_producer_association_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:networkservices/multicastProducerAssociation:MulticastProducerAssociation default {{project}}/{{location}}/{{multicast_producer_association_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:networkservices/multicastProducerAssociation:MulticastProducerAssociation default {{location}}/{{multicast_producer_association_id}}
/// ```
class MulticastProducerAssociation extends pulumi.CustomResource {
  /// [Output only] The timestamp when the multicast producer association was
  /// created.
  late final pulumi.Output<String> createTime;
  /// An optional text description of the multicast producer association.
  late final pulumi.Output<String?> description;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;
  /// Labels as key-value pairs
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  late final pulumi.Output<String> location;
  /// The resource name of the multicast domain activation that is in the
  /// same zone as this multicast producer association.
  /// Use the following format:
  /// // `projects/*/locations/*/multicastDomainActivations/*`.
  late final pulumi.Output<String> multicastDomainActivation;
  /// A unique name for the multicast producer association.
  /// The name is restricted to letters, numbers, and hyphen, with the first
  /// character a letter, and the last a letter or a number. The name must not
  /// exceed 48 characters.
  late final pulumi.Output<String> multicastProducerAssociationId;
  /// Identifier. The resource name of the multicast producer association.
  /// Use the following format:
  /// `projects/*/locations/*/multicastProducerAssociations/*`.
  late final pulumi.Output<String> name;
  /// The resource name of the multicast producer VPC network.
  /// Use following format:
  /// `projects/{project}/locations/global/networks/{network}`.
  late final pulumi.Output<String> network;
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
  /// unique across all multicast producer association resources. If a producer
  /// association is deleted and another with the same name is created, the new
  /// producer association is assigned a different unique_id.
  late final pulumi.Output<String> uniqueId;
  /// [Output only] The timestamp when the Multicast Producer Association was
  /// most recently updated.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [MulticastProducerAssociation].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [MulticastProducerAssociation]. {@macro pulumi_networkservices_multicast_producer_association_multicast_producer_association_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  MulticastProducerAssociation(
    String name, {
    MulticastProducerAssociationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:networkservices/multicastProducerAssociation:MulticastProducerAssociation',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    createTime = registerOutput<String>('createTime');
    description = registerOutput<String?>('description');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels');
    labels = registerOutput<Map<String, String>?>('labels');
    location = registerOutput<String>('location');
    multicastDomainActivation = registerOutput<String>('multicastDomainActivation');
    multicastProducerAssociationId = registerOutput<String>('multicastProducerAssociationId');
    this.name = registerOutput<String>('name');
    network = registerOutput<String>('network');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    states = registerOutput<List<Map<String, dynamic>>>('states');
    uniqueId = registerOutput<String>('uniqueId');
    updateTime = registerOutput<String>('updateTime');
  }

  /// Gets an existing [MulticastProducerAssociation] resource's state with the given [name] and [id].
  static MulticastProducerAssociation get(
    String name,
    pulumi.Input<String> id, {
    MulticastProducerAssociationNetworkservicesState? state,
  }) {
    return MulticastProducerAssociation._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  MulticastProducerAssociation._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:networkservices/multicastProducerAssociation:MulticastProducerAssociation',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    createTime = registerOutput<String>('createTime');
    description = registerOutput<String?>('description');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels');
    labels = registerOutput<Map<String, String>?>('labels');
    location = registerOutput<String>('location');
    multicastDomainActivation = registerOutput<String>('multicastDomainActivation');
    multicastProducerAssociationId = registerOutput<String>('multicastProducerAssociationId');
    this.name = registerOutput<String>('name');
    network = registerOutput<String>('network');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    states = registerOutput<List<Map<String, dynamic>>>('states');
    uniqueId = registerOutput<String>('uniqueId');
    updateTime = registerOutput<String>('updateTime');
  }
}
