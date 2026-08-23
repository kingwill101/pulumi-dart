import 'package:pulumi/pulumi.dart' as pulumi;
import 'multicast_domain_activation_args.dart';
import 'multicast_domain_activation_networkservices_state.dart';
import 'multicast_domain_activation_traffic_spec.dart';

/// Create a multicast domain activation in the specified location of the current project.
///
///
/// To get more information about MulticastDomainActivation, see:
///
/// * [API documentation](https://docs.cloud.google.com/vpc/docs/multicast/reference/rest/v1/projects.locations.multicastDomainActivations)
/// * How-to Guides
/// * [Create Multicast Domain Activation](https://docs.cloud.google.com/vpc/docs/multicast/create-domains#activate-domain)
///
/// ## Example Usage
///
/// ### Network Services Multicast Domain Activation Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const network = new gcp.compute.Network("network", {
///     name: "test-network-mda",
///     autoCreateSubnetworks: false,
/// });
/// const multicastDomain = new gcp.networkservices.MulticastDomain("multicast_domain", {
///     multicastDomainId: "test-domain-mda",
///     location: "global",
///     adminNetwork: network.id,
///     connectionConfig: {
///         connectionType: "SAME_VPC",
///     },
/// }, {
///     dependsOn: [network],
/// });
/// const mdaTest = new gcp.networkservices.MulticastDomainActivation("mda_test", {
///     multicastDomainActivationId: "test-domain-activation-mda",
///     location: "us-central1-b",
///     multicastDomain: multicastDomain.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// network = gcp.compute.Network("network",
///     name="test-network-mda",
///     auto_create_subnetworks=False)
/// multicast_domain = gcp.networkservices.MulticastDomain("multicast_domain",
///     multicast_domain_id="test-domain-mda",
///     location="global",
///     admin_network=network.id,
///     connection_config={
///         "connection_type": "SAME_VPC",
///     },
///     opts = pulumi.ResourceOptions(depends_on=[network]))
/// mda_test = gcp.networkservices.MulticastDomainActivation("mda_test",
///     multicast_domain_activation_id="test-domain-activation-mda",
///     location="us-central1-b",
///     multicast_domain=multicast_domain.id)
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
///         Name = "test-network-mda",
///         AutoCreateSubnetworks = false,
///     });
///
///     var multicastDomain = new Gcp.NetworkServices.MulticastDomain("multicast_domain", new()
///     {
///         MulticastDomainId = "test-domain-mda",
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
///     var mdaTest = new Gcp.NetworkServices.MulticastDomainActivation("mda_test", new()
///     {
///         MulticastDomainActivationId = "test-domain-activation-mda",
///         Location = "us-central1-b",
///         MulticastDomain = multicastDomain.Id,
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
/// 			Name:                  pulumi.String("test-network-mda"),
/// 			AutoCreateSubnetworks: pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		multicastDomain, err := networkservices.NewMulticastDomain(ctx, "multicast_domain", &networkservices.MulticastDomainArgs{
/// 			MulticastDomainId: pulumi.String("test-domain-mda"),
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
/// 		_, err = networkservices.NewMulticastDomainActivation(ctx, "mda_test", &networkservices.MulticastDomainActivationArgs{
/// 			MulticastDomainActivationId: pulumi.String("test-domain-activation-mda"),
/// 			Location:                    pulumi.String("us-central1-b"),
/// 			MulticastDomain:             multicastDomain.ID().ToIDOutput().ToStringOutput(),
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
/// resource "gcp_compute_network" "network" {
///   name                    = "test-network-mda"
///   auto_create_subnetworks = false
/// }
/// resource "gcp_networkservices_multicastdomain" "multicast_domain" {
///   depends_on          = [gcp_compute_network.network]
///   multicast_domain_id = "test-domain-mda"
///   location            = "global"
///   admin_network       = gcp_compute_network.network.id
///   connection_config = {
///     connection_type = "SAME_VPC"
///   }
/// }
/// resource "gcp_networkservices_multicastdomainactivation" "mda_test" {
///   multicast_domain_activation_id = "test-domain-activation-mda"
///   location                       = "us-central1-b"
///   multicast_domain               = gcp_networkservices_multicastdomain.multicast_domain.id
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
///             .name("test-network-mda")
///             .autoCreateSubnetworks(false)
///             .build());
///
///         var multicastDomain = new MulticastDomain("multicastDomain", MulticastDomainArgs.builder()
///             .multicastDomainId("test-domain-mda")
///             .location("global")
///             .adminNetwork(network.id())
///             .connectionConfig(MulticastDomainConnectionConfigArgs.builder()
///                 .connectionType("SAME_VPC")
///                 .build())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(network)
///                 .build());
///
///         var mdaTest = new MulticastDomainActivation("mdaTest", MulticastDomainActivationArgs.builder()
///             .multicastDomainActivationId("test-domain-activation-mda")
///             .location("us-central1-b")
///             .multicastDomain(multicastDomain.id())
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
///       name: test-network-mda
///       autoCreateSubnetworks: false
///   multicastDomain:
///     type: gcp:networkservices:MulticastDomain
///     name: multicast_domain
///     properties:
///       multicastDomainId: test-domain-mda
///       location: global
///       adminNetwork: ${network.id}
///       connectionConfig:
///         connectionType: SAME_VPC
///     options:
///       dependsOn:
///         - ${network}
///   mdaTest:
///     type: gcp:networkservices:MulticastDomainActivation
///     name: mda_test
///     properties:
///       multicastDomainActivationId: test-domain-activation-mda
///       location: us-central1-b
///       multicastDomain: ${multicastDomain.id}
/// ```
///
///
/// ## Import
///
/// MulticastDomainActivation can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/multicastDomainActivations/{{multicast_domain_activation_id}}`
/// * `{{project}}/{{location}}/{{multicast_domain_activation_id}}`
/// * `{{location}}/{{multicast_domain_activation_id}}`
///
///
/// When using the `pulumi import` command, MulticastDomainActivation can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:networkservices/multicastDomainActivation:MulticastDomainActivation default projects/{{project}}/locations/{{location}}/multicastDomainActivations/{{multicast_domain_activation_id}}
/// $ pulumi import gcp:networkservices/multicastDomainActivation:MulticastDomainActivation default {{project}}/{{location}}/{{multicast_domain_activation_id}}
/// $ pulumi import gcp:networkservices/multicastDomainActivation:MulticastDomainActivation default {{location}}/{{multicast_domain_activation_id}}
/// ```
class MulticastDomainActivation extends pulumi.CustomResource {
  /// The URL of the admin network.
  late final pulumi.Output<String> adminNetwork;
  /// The timestamp when the multicast domain activation was
  /// created.
  late final pulumi.Output<String> createTime;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// An optional text description of the multicast domain activation.
  late final pulumi.Output<String?> description;
  /// Option to allow disabling placement policy for multicast infrastructure.
  /// Only applicable if the activation is for a domain associating with a
  /// multicast domain group.
  late final pulumi.Output<bool> disablePlacementPolicy;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;
  /// Labels as key-value pairs
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  late final pulumi.Output<String> location;
  /// The resource name of the multicast domain to activate.
  /// Use the following format:
  /// `projects/*/locations/global/multicastDomains/*`.
  late final pulumi.Output<String> multicastDomain;
  /// A unique name for the multicast domain activation.
  /// The name is restricted to letters, numbers, and hyphen, with the first
  /// character a letter, and the last a letter or a number. The name must not
  /// exceed 48 characters.
  late final pulumi.Output<String> multicastDomainActivationId;
  /// Identifier. The resource name of the multicast domain activation.
  /// Use the following format:
  /// `projects/*/locations/*/multicastDomainActivations/*`.
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
  /// Specifies the traffic volume and multicast group scale parameters that are
  /// used to set up multicast infrastructure for a multicast domain in a zone.
  /// Structure is documented below.
  late final pulumi.Output<MulticastDomainActivationTrafficSpec?> trafficSpec;
  /// The Google-generated UUID for the resource. This value is
  /// unique across all multicast domain activation resources. If a domain
  /// activation is deleted and another with the same name is created, the new
  /// domain activation is assigned a different unique_id.
  late final pulumi.Output<String> uniqueId;
  /// The timestamp when the multicast domain activation was most
  /// recently updated.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [MulticastDomainActivation].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [MulticastDomainActivation]. {@macro pulumi_networkservices_multicast_domain_activation_multicast_domain_activation_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  MulticastDomainActivation(
    String name, {
    MulticastDomainActivationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:networkservices/multicastDomainActivation:MulticastDomainActivation',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    adminNetwork = registerOutput<String>('adminNetwork');
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    disablePlacementPolicy = registerOutput<bool>('disablePlacementPolicy');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels');
    labels = registerOutput<Map<String, String>?>('labels');
    location = registerOutput<String>('location');
    multicastDomain = registerOutput<String>('multicastDomain');
    multicastDomainActivationId = registerOutput<String>('multicastDomainActivationId');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    states = registerOutput<List<Map<String, dynamic>>>('states');
    trafficSpec = registerOutput<MulticastDomainActivationTrafficSpec?>('trafficSpec', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return MulticastDomainActivationTrafficSpec.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    uniqueId = registerOutput<String>('uniqueId');
    updateTime = registerOutput<String>('updateTime');
  }

  /// Gets an existing [MulticastDomainActivation] resource's state with the given [name] and [id].
  static MulticastDomainActivation get(
    String name,
    pulumi.Input<String> id, {
    MulticastDomainActivationNetworkservicesState? state,
  }) {
    return MulticastDomainActivation._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  MulticastDomainActivation._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:networkservices/multicastDomainActivation:MulticastDomainActivation',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    adminNetwork = registerOutput<String>('adminNetwork');
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    disablePlacementPolicy = registerOutput<bool>('disablePlacementPolicy');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels');
    labels = registerOutput<Map<String, String>?>('labels');
    location = registerOutput<String>('location');
    multicastDomain = registerOutput<String>('multicastDomain');
    multicastDomainActivationId = registerOutput<String>('multicastDomainActivationId');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    states = registerOutput<List<Map<String, dynamic>>>('states');
    trafficSpec = registerOutput<MulticastDomainActivationTrafficSpec?>('trafficSpec', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return MulticastDomainActivationTrafficSpec.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    uniqueId = registerOutput<String>('uniqueId');
    updateTime = registerOutput<String>('updateTime');
  }
}
