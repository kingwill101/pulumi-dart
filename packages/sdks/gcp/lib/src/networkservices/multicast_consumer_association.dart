import 'package:pulumi/pulumi.dart' as pulumi;
import 'multicast_consumer_association_args.dart';
import 'multicast_consumer_association_networkservices_state.dart';
import 'multicast_consumer_association_state.dart';

/// Create a multicast consumer association in the specified location of the current project.
///
///
/// To get more information about MulticastConsumerAssociation, see:
///
/// * [API documentation](https://docs.cloud.google.com/vpc/docs/multicast/reference/rest/v1/projects.locations.multicastConsumerAssociations)
/// * How-to Guides
/// * [Create Multicast Consumer Association](https://docs.cloud.google.com/vpc/docs/multicast/enable-consumer-network#add-consumer)
///
/// ## Example Usage
///
/// ### Network Services Multicast Consumer Association Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const network = new gcp.compute.Network("network", {
///     name: "test-network-mca",
///     autoCreateSubnetworks: false,
/// });
/// const multicastDomain = new gcp.networkservices.MulticastDomain("multicast_domain", {
///     multicastDomainId: "test-domain-mca",
///     location: "global",
///     adminNetwork: network.id,
///     connectionConfig: {
///         connectionType: "SAME_VPC",
///     },
/// }, {
///     dependsOn: [network],
/// });
/// const multicastDomainActivation = new gcp.networkservices.MulticastDomainActivation("multicast_domain_activation", {
///     multicastDomainActivationId: "test-domain-activation-mca",
///     location: "us-central1-b",
///     multicastDomain: multicastDomain.id,
/// });
/// const mcaTest = new gcp.networkservices.MulticastConsumerAssociation("mca_test", {
///     multicastConsumerAssociationId: "test-consumer-association-mca",
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
///     name="test-network-mca",
///     auto_create_subnetworks=False)
/// multicast_domain = gcp.networkservices.MulticastDomain("multicast_domain",
///     multicast_domain_id="test-domain-mca",
///     location="global",
///     admin_network=network.id,
///     connection_config={
///         "connection_type": "SAME_VPC",
///     },
///     opts = pulumi.ResourceOptions(depends_on=[network]))
/// multicast_domain_activation = gcp.networkservices.MulticastDomainActivation("multicast_domain_activation",
///     multicast_domain_activation_id="test-domain-activation-mca",
///     location="us-central1-b",
///     multicast_domain=multicast_domain.id)
/// mca_test = gcp.networkservices.MulticastConsumerAssociation("mca_test",
///     multicast_consumer_association_id="test-consumer-association-mca",
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
///         Name = "test-network-mca",
///         AutoCreateSubnetworks = false,
///     });
///
///     var multicastDomain = new Gcp.NetworkServices.MulticastDomain("multicast_domain", new()
///     {
///         MulticastDomainId = "test-domain-mca",
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
///         MulticastDomainActivationId = "test-domain-activation-mca",
///         Location = "us-central1-b",
///         MulticastDomain = multicastDomain.Id,
///     });
///
///     var mcaTest = new Gcp.NetworkServices.MulticastConsumerAssociation("mca_test", new()
///     {
///         MulticastConsumerAssociationId = "test-consumer-association-mca",
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
/// 			Name:                  pulumi.String("test-network-mca"),
/// 			AutoCreateSubnetworks: pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		multicastDomain, err := networkservices.NewMulticastDomain(ctx, "multicast_domain", &networkservices.MulticastDomainArgs{
/// 			MulticastDomainId: pulumi.String("test-domain-mca"),
/// 			Location:          pulumi.String("global"),
/// 			AdminNetwork:      network.ID().ToIDOutput().ToStringOutput(),
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
/// 			MulticastDomainActivationId: pulumi.String("test-domain-activation-mca"),
/// 			Location:                    pulumi.String("us-central1-b"),
/// 			MulticastDomain:             multicastDomain.ID().ToIDOutput().ToStringOutput(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = networkservices.NewMulticastConsumerAssociation(ctx, "mca_test", &networkservices.MulticastConsumerAssociationArgs{
/// 			MulticastConsumerAssociationId: pulumi.String("test-consumer-association-mca"),
/// 			Location:                       pulumi.String("us-central1-b"),
/// 			Network:                        network.ID().ToIDOutput().ToStringOutput(),
/// 			MulticastDomainActivation:      multicastDomainActivation.ID().ToIDOutput().ToStringOutput(),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_compute_network" "network" {
///   name                    = "test-network-mca"
///   auto_create_subnetworks = false
/// }
/// resource "gcp_networkservices_multicastdomain" "multicast_domain" {
///   depends_on          = [gcp_compute_network.network]
///   multicast_domain_id = "test-domain-mca"
///   location            = "global"
///   admin_network       = gcp_compute_network.network.id
///   connection_config = {
///     connection_type = "SAME_VPC"
///   }
/// }
/// resource "gcp_networkservices_multicastdomainactivation" "multicast_domain_activation" {
///   multicast_domain_activation_id = "test-domain-activation-mca"
///   location                       = "us-central1-b"
///   multicast_domain               = gcp_networkservices_multicastdomain.multicast_domain.id
/// }
/// resource "gcp_networkservices_multicastconsumerassociation" "mca_test" {
///   depends_on                        = [gcp_compute_network.network]
///   multicast_consumer_association_id = "test-consumer-association-mca"
///   location                          = "us-central1-b"
///   network                           = gcp_compute_network.network.id
///   multicast_domain_activation       = gcp_networkservices_multicastdomainactivation.multicast_domain_activation.id
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
/// import com.pulumi.resources.CustomResourceOptions;
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
///         var network = new Network("network", NetworkArgs.builder()
///             .name("test-network-mca")
///             .autoCreateSubnetworks(false)
///             .build());
///
///         var multicastDomain = new MulticastDomain("multicastDomain", MulticastDomainArgs.builder()
///             .multicastDomainId("test-domain-mca")
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
///             .multicastDomainActivationId("test-domain-activation-mca")
///             .location("us-central1-b")
///             .multicastDomain(multicastDomain.id())
///             .build());
///
///         var mcaTest = new MulticastConsumerAssociation("mcaTest", MulticastConsumerAssociationArgs.builder()
///             .multicastConsumerAssociationId("test-consumer-association-mca")
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
///       name: test-network-mca
///       autoCreateSubnetworks: false
///   multicastDomain:
///     type: gcp:networkservices:MulticastDomain
///     name: multicast_domain
///     properties:
///       multicastDomainId: test-domain-mca
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
///       multicastDomainActivationId: test-domain-activation-mca
///       location: us-central1-b
///       multicastDomain: ${multicastDomain.id}
///   mcaTest:
///     type: gcp:networkservices:MulticastConsumerAssociation
///     name: mca_test
///     properties:
///       multicastConsumerAssociationId: test-consumer-association-mca
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
/// MulticastConsumerAssociation can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/multicastConsumerAssociations/{{multicast_consumer_association_id}}`
/// * `{{project}}/{{location}}/{{multicast_consumer_association_id}}`
/// * `{{location}}/{{multicast_consumer_association_id}}`
///
///
/// When using the `pulumi import` command, MulticastConsumerAssociation can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:networkservices/multicastConsumerAssociation:MulticastConsumerAssociation default projects/{{project}}/locations/{{location}}/multicastConsumerAssociations/{{multicast_consumer_association_id}}
/// $ pulumi import gcp:networkservices/multicastConsumerAssociation:MulticastConsumerAssociation default {{project}}/{{location}}/{{multicast_consumer_association_id}}
/// $ pulumi import gcp:networkservices/multicastConsumerAssociation:MulticastConsumerAssociation default {{location}}/{{multicast_consumer_association_id}}
/// ```
class MulticastConsumerAssociation extends pulumi.CustomResource {
  /// [Output only] The timestamp when the multicast consumer association was
  /// created.
  late final pulumi.Output<String> createTime;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// An optional text description of the multicast consumer association.
  late final pulumi.Output<String?> description;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;
  /// Labels as key-value pairs
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  late final pulumi.Output<String> location;
  /// A unique name for the multicast consumer association.
  /// The name is restricted to letters, numbers, and hyphen, with the first
  /// character a letter, and the last a letter or a number. The name must not
  /// exceed 48 characters.
  late final pulumi.Output<String> multicastConsumerAssociationId;
  /// The resource name of the multicast domain activation that is in the
  /// same zone as this multicast consumer association.
  /// Use the following format:
  /// // `projects/*/locations/*/multicastDomainActivations/*`.
  late final pulumi.Output<String> multicastDomainActivation;
  /// Identifier. The resource name of the multicast consumer association.
  /// Use the following format:
  /// `projects/*/locations/*/multicastConsumerAssociations/*`.
  late final pulumi.Output<String> name;
  /// The resource name of the multicast consumer VPC network.
  /// Use following format:
  /// `projects/{project}/locations/global/networks/{network}`.
  late final pulumi.Output<String> network;
  /// [Output only] A Compute Engine (placement
  /// policy)[https://cloud.google.com/compute/docs/instances/placement-policies-overview]
  /// that can be used to place virtual machine (VM) instances as multicast
  /// consumers close to the multicast infrastructure created for this domain,
  /// on a best effort basis.
  late final pulumi.Output<String> placementPolicy;
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
  late final pulumi.Output<List<MulticastConsumerAssociationState>> states;
  /// [Output only] The Google-generated UUID for the resource. This value is
  /// unique across all multicast consumer association resources. If a consumer
  /// association is deleted and another with the same name is created, the new
  /// consumer association is assigned a different unique_id.
  late final pulumi.Output<String> uniqueId;
  /// [Output only] The timestamp when the Multicast Consumer Association was
  /// most recently updated.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [MulticastConsumerAssociation].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [MulticastConsumerAssociation]. {@macro pulumi_networkservices_multicast_consumer_association_multicast_consumer_association_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  MulticastConsumerAssociation(
    String name, {
    MulticastConsumerAssociationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:networkservices/multicastConsumerAssociation:MulticastConsumerAssociation',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.36.1').merge(options),
          additionalSecretOutputs: const ['effectiveLabels', 'pulumiLabels'],
        ) {
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    labels = registerOutput<Map<String, String>?>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    location = registerOutput<String>('location');
    multicastConsumerAssociationId = registerOutput<String>('multicastConsumerAssociationId');
    multicastDomainActivation = registerOutput<String>('multicastDomainActivation');
    this.name = registerOutput<String>('name');
    network = registerOutput<String>('network');
    placementPolicy = registerOutput<String>('placementPolicy');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    states = registerOutput<List<MulticastConsumerAssociationState>>('states', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<MulticastConsumerAssociationState>(guardedValue, (value) => MulticastConsumerAssociationState.fromMap((value as Map).cast<String, dynamic>())); });
    uniqueId = registerOutput<String>('uniqueId');
    updateTime = registerOutput<String>('updateTime');
  }

  /// Gets an existing [MulticastConsumerAssociation] resource's state with the given [name] and [id].
  static MulticastConsumerAssociation get(
    String name,
    pulumi.Input<String> id, {
    MulticastConsumerAssociationNetworkservicesState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return MulticastConsumerAssociation._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  MulticastConsumerAssociation._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:networkservices/multicastConsumerAssociation:MulticastConsumerAssociation',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    labels = registerOutput<Map<String, String>?>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    location = registerOutput<String>('location');
    multicastConsumerAssociationId = registerOutput<String>('multicastConsumerAssociationId');
    multicastDomainActivation = registerOutput<String>('multicastDomainActivation');
    this.name = registerOutput<String>('name');
    network = registerOutput<String>('network');
    placementPolicy = registerOutput<String>('placementPolicy');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    states = registerOutput<List<MulticastConsumerAssociationState>>('states', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<MulticastConsumerAssociationState>(guardedValue, (value) => MulticastConsumerAssociationState.fromMap((value as Map).cast<String, dynamic>())); });
    uniqueId = registerOutput<String>('uniqueId');
    updateTime = registerOutput<String>('updateTime');
  }

  /// Creates a typed reference to an existing [MulticastConsumerAssociation] resource.
  MulticastConsumerAssociation.reference(String urn)
    : super(
        'gcp:networkservices/multicastConsumerAssociation:MulticastConsumerAssociation',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
          additionalSecretOutputs: const ['effectiveLabels', 'pulumiLabels'],
        isResourceReference: true,
      ) {
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    labels = registerOutput<Map<String, String>?>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    location = registerOutput<String>('location');
    multicastConsumerAssociationId = registerOutput<String>('multicastConsumerAssociationId');
    multicastDomainActivation = registerOutput<String>('multicastDomainActivation');
    this.name = registerOutput<String>('name');
    network = registerOutput<String>('network');
    placementPolicy = registerOutput<String>('placementPolicy');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    states = registerOutput<List<MulticastConsumerAssociationState>>('states', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<MulticastConsumerAssociationState>(guardedValue, (value) => MulticastConsumerAssociationState.fromMap((value as Map).cast<String, dynamic>())); });
    uniqueId = registerOutput<String>('uniqueId');
    updateTime = registerOutput<String>('updateTime');
  }
}
