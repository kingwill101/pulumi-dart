import 'package:pulumi/pulumi.dart' as pulumi;
import 'multicast_domain_args.dart';
import 'multicast_domain_connection_config.dart';
import 'multicast_domain_networkservices_state.dart';

/// Create a multicast domain in the current project.
///
///
/// To get more information about MulticastDomain, see:
///
/// * [API documentation](https://docs.cloud.google.com/vpc/docs/multicast/reference/rest/v1/projects.locations.multicastDomains)
/// * How-to Guides
/// * [Create Multicast Domain](https://docs.cloud.google.com/vpc/docs/multicast/create-domains#create-domain)
///
/// ## Example Usage
///
/// ### Network Services Multicast Domain Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const network = new gcp.compute.Network("network", {
///     name: "test-md-network",
///     autoCreateSubnetworks: false,
/// });
/// const mdTest = new gcp.networkservices.MulticastDomain("md_test", {
///     multicastDomainId: "test-md-domain",
///     location: "global",
///     description: "A sample domain",
///     labels: {
///         "label-one": "value-one",
///     },
///     adminNetwork: network.id,
///     connectionConfig: {
///         connectionType: "SAME_VPC",
///         nccHub: "",
///     },
///     multicastDomainGroup: "",
/// }, {
///     dependsOn: [network],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// network = gcp.compute.Network("network",
///     name="test-md-network",
///     auto_create_subnetworks=False)
/// md_test = gcp.networkservices.MulticastDomain("md_test",
///     multicast_domain_id="test-md-domain",
///     location="global",
///     description="A sample domain",
///     labels={
///         "label-one": "value-one",
///     },
///     admin_network=network.id,
///     connection_config={
///         "connection_type": "SAME_VPC",
///         "ncc_hub": "",
///     },
///     multicast_domain_group="",
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
///         Name = "test-md-network",
///         AutoCreateSubnetworks = false,
///     });
///
///     var mdTest = new Gcp.NetworkServices.MulticastDomain("md_test", new()
///     {
///         MulticastDomainId = "test-md-domain",
///         Location = "global",
///         Description = "A sample domain",
///         Labels =
///         {
///             { "label-one", "value-one" },
///         },
///         AdminNetwork = network.Id,
///         ConnectionConfig = new Gcp.NetworkServices.Inputs.MulticastDomainConnectionConfigArgs
///         {
///             ConnectionType = "SAME_VPC",
///             NccHub = "",
///         },
///         MulticastDomainGroup = "",
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
/// 			Name:                  pulumi.String("test-md-network"),
/// 			AutoCreateSubnetworks: pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = networkservices.NewMulticastDomain(ctx, "md_test", &networkservices.MulticastDomainArgs{
/// 			MulticastDomainId: pulumi.String("test-md-domain"),
/// 			Location:          pulumi.String("global"),
/// 			Description:       pulumi.String("A sample domain"),
/// 			Labels: pulumi.StringMap{
/// 				"label-one": pulumi.String("value-one"),
/// 			},
/// 			AdminNetwork: network.ID(),
/// 			ConnectionConfig: &networkservices.MulticastDomainConnectionConfigArgs{
/// 				ConnectionType: pulumi.String("SAME_VPC"),
/// 				NccHub:         pulumi.String(""),
/// 			},
/// 			MulticastDomainGroup: pulumi.String(""),
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
///             .name("test-md-network")
///             .autoCreateSubnetworks(false)
///             .build());
///
///         var mdTest = new MulticastDomain("mdTest", MulticastDomainArgs.builder()
///             .multicastDomainId("test-md-domain")
///             .location("global")
///             .description("A sample domain")
///             .labels(Map.of("label-one", "value-one"))
///             .adminNetwork(network.id())
///             .connectionConfig(MulticastDomainConnectionConfigArgs.builder()
///                 .connectionType("SAME_VPC")
///                 .nccHub("")
///                 .build())
///             .multicastDomainGroup("")
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
///       name: test-md-network
///       autoCreateSubnetworks: false
///   mdTest:
///     type: gcp:networkservices:MulticastDomain
///     name: md_test
///     properties:
///       multicastDomainId: test-md-domain
///       location: global
///       description: A sample domain
///       labels:
///         label-one: value-one
///       adminNetwork: ${network.id}
///       connectionConfig:
///         connectionType: SAME_VPC
///         nccHub: ""
///       multicastDomainGroup: ""
///     options:
///       dependsOn:
///         - ${network}
/// ```
///
///
/// ## Import
///
/// MulticastDomain can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/multicastDomains/{{multicast_domain_id}}`
///
/// * `{{project}}/{{location}}/{{multicast_domain_id}}`
///
/// * `{{location}}/{{multicast_domain_id}}`
///
/// When using the `pulumi import` command, MulticastDomain can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:networkservices/multicastDomain:MulticastDomain default projects/{{project}}/locations/{{location}}/multicastDomains/{{multicast_domain_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:networkservices/multicastDomain:MulticastDomain default {{project}}/{{location}}/{{multicast_domain_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:networkservices/multicastDomain:MulticastDomain default {{location}}/{{multicast_domain_id}}
/// ```
class MulticastDomain extends pulumi.CustomResource {
  /// The resource name of the multicast admin VPC network.
  /// Use the following format:
  /// `projects/{project}/locations/global/networks/{network}`.
  late final pulumi.Output<String> adminNetwork;

  /// VPC connectivity information.
  /// Structure is documented below.
  late final pulumi.Output<MulticastDomainConnectionConfig> connectionConfig;

  /// The timestamp when the multicast domain was created.
  late final pulumi.Output<String> createTime;

  /// An optional text description of the multicast domain.
  late final pulumi.Output<String?> description;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;

  /// Labels as key-value pairs.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;

  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  late final pulumi.Output<String> location;

  /// The multicast domain group this domain should be associated with.
  /// Use the following format:
  /// `projects/{project}/locations/global/multicastDomainGroups/{multicast_domain_group}`.
  late final pulumi.Output<String?> multicastDomainGroup;

  /// A unique name for the multicast domain.
  /// The name is restricted to letters, numbers, and hyphen, with the first
  /// character a letter, and the last a letter or a number. The name must not
  /// exceed 48 characters.
  late final pulumi.Output<String> multicastDomainId;

  /// Identifier. The resource name of the multicast domain.
  /// Use the following format:
  /// `projects/*/locations/global/multicastDomains/*`
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
  /// unique across all multicast domain resources. If a domain is deleted and
  /// another with the same name is created, the new domain is assigned a
  /// different unique_id.
  late final pulumi.Output<String> uniqueId;

  /// The timestamp when the multicast domain was most recently
  /// updated.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [MulticastDomain].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [MulticastDomain]. {@macro pulumi_networkservices_multicast_domain_multicast_domain_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  MulticastDomain(
    String name, {
    MulticastDomainArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'gcp:networkservices/multicastDomain:MulticastDomain',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    adminNetwork = registerOutput<String>('adminNetwork');
    connectionConfig = registerOutput<MulticastDomainConnectionConfig>(
      'connectionConfig',
    );
    createTime = registerOutput<String>('createTime');
    description = registerOutput<String?>('description');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels');
    labels = registerOutput<Map<String, String>?>('labels');
    location = registerOutput<String>('location');
    multicastDomainGroup = registerOutput<String?>('multicastDomainGroup');
    multicastDomainId = registerOutput<String>('multicastDomainId');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    states = registerOutput<List<Map<String, dynamic>>>('states');
    uniqueId = registerOutput<String>('uniqueId');
    updateTime = registerOutput<String>('updateTime');
  }

  /// Gets an existing [MulticastDomain] resource's state with the given [name] and [id].
  static MulticastDomain get(
    String name,
    pulumi.Input<String> id, {
    MulticastDomainNetworkservicesState? state,
  }) {
    return MulticastDomain._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  MulticastDomain._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'gcp:networkservices/multicastDomain:MulticastDomain',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    adminNetwork = registerOutput<String>('adminNetwork');
    connectionConfig = registerOutput<MulticastDomainConnectionConfig>(
      'connectionConfig',
    );
    createTime = registerOutput<String>('createTime');
    description = registerOutput<String?>('description');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels');
    labels = registerOutput<Map<String, String>?>('labels');
    location = registerOutput<String>('location');
    multicastDomainGroup = registerOutput<String?>('multicastDomainGroup');
    multicastDomainId = registerOutput<String>('multicastDomainId');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    states = registerOutput<List<Map<String, dynamic>>>('states');
    uniqueId = registerOutput<String>('uniqueId');
    updateTime = registerOutput<String>('updateTime');
  }
}
