import 'package:pulumi/pulumi.dart' as pulumi;
import 'multicast_domain_group_args.dart';
import 'multicast_domain_group_networkservices_state.dart';
import 'multicast_domain_group_state.dart';

/// Create a multicast domain group in the current project.
///
///
/// To get more information about MulticastDomainGroup, see:
///
/// * [API documentation](https://docs.cloud.google.com/vpc/docs/multicast/reference/rest/v1/projects.locations.multicastDomainGroups)
/// * How-to Guides
/// * [Create Multicast Domain Group](https://docs.cloud.google.com/vpc/docs/multicast/create-domains#create-domain-group)
///
/// ## Example Usage
///
/// ### Network Services Multicast Domain Group Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const mdgTest = new gcp.networkservices.MulticastDomainGroup("mdg_test", {
///     multicastDomainGroupId: "test-mdg-resource",
///     location: "global",
///     description: "my description",
///     labels: {
///         fake_label: "label123",
///     },
/// });
/// const network = new gcp.compute.Network("network", {
///     name: "test-mdg-network",
///     autoCreateSubnetworks: false,
/// });
/// const multicastDomainA = new gcp.networkservices.MulticastDomain("multicast_domain_a", {
///     multicastDomainId: "test-mdg-domain-a",
///     location: "global",
///     adminNetwork: network.id,
///     connectionConfig: {
///         connectionType: "SAME_VPC",
///     },
///     multicastDomainGroup: mdgTest.id,
/// }, {
///     dependsOn: [network],
/// });
/// const multicastDomainB = new gcp.networkservices.MulticastDomain("multicast_domain_b", {
///     multicastDomainId: "test-mdg-domain-b",
///     location: "global",
///     adminNetwork: network.id,
///     connectionConfig: {
///         connectionType: "SAME_VPC",
///     },
///     multicastDomainGroup: mdgTest.id,
/// }, {
///     dependsOn: [network],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// mdg_test = gcp.networkservices.MulticastDomainGroup("mdg_test",
///     multicast_domain_group_id="test-mdg-resource",
///     location="global",
///     description="my description",
///     labels={
///         "fake_label": "label123",
///     })
/// network = gcp.compute.Network("network",
///     name="test-mdg-network",
///     auto_create_subnetworks=False)
/// multicast_domain_a = gcp.networkservices.MulticastDomain("multicast_domain_a",
///     multicast_domain_id="test-mdg-domain-a",
///     location="global",
///     admin_network=network.id,
///     connection_config={
///         "connection_type": "SAME_VPC",
///     },
///     multicast_domain_group=mdg_test.id,
///     opts = pulumi.ResourceOptions(depends_on=[network]))
/// multicast_domain_b = gcp.networkservices.MulticastDomain("multicast_domain_b",
///     multicast_domain_id="test-mdg-domain-b",
///     location="global",
///     admin_network=network.id,
///     connection_config={
///         "connection_type": "SAME_VPC",
///     },
///     multicast_domain_group=mdg_test.id,
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
///     var mdgTest = new Gcp.NetworkServices.MulticastDomainGroup("mdg_test", new()
///     {
///         MulticastDomainGroupId = "test-mdg-resource",
///         Location = "global",
///         Description = "my description",
///         Labels =
///         {
///             { "fake_label", "label123" },
///         },
///     });
///
///     var network = new Gcp.Compute.Network("network", new()
///     {
///         Name = "test-mdg-network",
///         AutoCreateSubnetworks = false,
///     });
///
///     var multicastDomainA = new Gcp.NetworkServices.MulticastDomain("multicast_domain_a", new()
///     {
///         MulticastDomainId = "test-mdg-domain-a",
///         Location = "global",
///         AdminNetwork = network.Id,
///         ConnectionConfig = new Gcp.NetworkServices.Inputs.MulticastDomainConnectionConfigArgs
///         {
///             ConnectionType = "SAME_VPC",
///         },
///         MulticastDomainGroup = mdgTest.Id,
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             network,
///         },
///     });
///
///     var multicastDomainB = new Gcp.NetworkServices.MulticastDomain("multicast_domain_b", new()
///     {
///         MulticastDomainId = "test-mdg-domain-b",
///         Location = "global",
///         AdminNetwork = network.Id,
///         ConnectionConfig = new Gcp.NetworkServices.Inputs.MulticastDomainConnectionConfigArgs
///         {
///             ConnectionType = "SAME_VPC",
///         },
///         MulticastDomainGroup = mdgTest.Id,
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
/// 		mdgTest, err := networkservices.NewMulticastDomainGroup(ctx, "mdg_test", &networkservices.MulticastDomainGroupArgs{
/// 			MulticastDomainGroupId: pulumi.String("test-mdg-resource"),
/// 			Location:               pulumi.String("global"),
/// 			Description:            pulumi.String("my description"),
/// 			Labels: pulumi.StringMap{
/// 				"fake_label": pulumi.String("label123"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		network, err := compute.NewNetwork(ctx, "network", &compute.NetworkArgs{
/// 			Name:                  pulumi.String("test-mdg-network"),
/// 			AutoCreateSubnetworks: pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = networkservices.NewMulticastDomain(ctx, "multicast_domain_a", &networkservices.MulticastDomainArgs{
/// 			MulticastDomainId: pulumi.String("test-mdg-domain-a"),
/// 			Location:          pulumi.String("global"),
/// 			AdminNetwork:      network.ID().ToIDOutput().ToStringOutput(),
/// 			ConnectionConfig: &networkservices.MulticastDomainConnectionConfigArgs{
/// 				ConnectionType: pulumi.String("SAME_VPC"),
/// 			},
/// 			MulticastDomainGroup: mdgTest.ID().ToIDOutput().ToStringOutput(),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			network,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = networkservices.NewMulticastDomain(ctx, "multicast_domain_b", &networkservices.MulticastDomainArgs{
/// 			MulticastDomainId: pulumi.String("test-mdg-domain-b"),
/// 			Location:          pulumi.String("global"),
/// 			AdminNetwork:      network.ID().ToIDOutput().ToStringOutput(),
/// 			ConnectionConfig: &networkservices.MulticastDomainConnectionConfigArgs{
/// 				ConnectionType: pulumi.String("SAME_VPC"),
/// 			},
/// 			MulticastDomainGroup: mdgTest.ID().ToIDOutput().ToStringOutput(),
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
/// resource "gcp_networkservices_multicastdomaingroup" "mdg_test" {
///   multicast_domain_group_id = "test-mdg-resource"
///   location                  = "global"
///   description               = "my description"
///   labels = {
///     "fake_label" = "label123"
///   }
/// }
/// resource "gcp_compute_network" "network" {
///   name                    = "test-mdg-network"
///   auto_create_subnetworks = false
/// }
/// resource "gcp_networkservices_multicastdomain" "multicast_domain_a" {
///   depends_on          = [gcp_compute_network.network]
///   multicast_domain_id = "test-mdg-domain-a"
///   location            = "global"
///   admin_network       = gcp_compute_network.network.id
///   connection_config = {
///     connection_type = "SAME_VPC"
///   }
///   multicast_domain_group = gcp_networkservices_multicastdomaingroup.mdg_test.id
/// }
/// resource "gcp_networkservices_multicastdomain" "multicast_domain_b" {
///   depends_on          = [gcp_compute_network.network]
///   multicast_domain_id = "test-mdg-domain-b"
///   location            = "global"
///   admin_network       = gcp_compute_network.network.id
///   connection_config = {
///     connection_type = "SAME_VPC"
///   }
///   multicast_domain_group = gcp_networkservices_multicastdomaingroup.mdg_test.id
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.networkservices.MulticastDomainGroup;
/// import com.pulumi.gcp.networkservices.MulticastDomainGroupArgs;
/// import com.pulumi.gcp.compute.Network;
/// import com.pulumi.gcp.compute.NetworkArgs;
/// import com.pulumi.gcp.networkservices.MulticastDomain;
/// import com.pulumi.gcp.networkservices.MulticastDomainArgs;
/// import com.pulumi.gcp.networkservices.inputs.MulticastDomainConnectionConfigArgs;
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
///         var mdgTest = new MulticastDomainGroup("mdgTest", MulticastDomainGroupArgs.builder()
///             .multicastDomainGroupId("test-mdg-resource")
///             .location("global")
///             .description("my description")
///             .labels(Map.of("fake_label", "label123"))
///             .build());
///
///         var network = new Network("network", NetworkArgs.builder()
///             .name("test-mdg-network")
///             .autoCreateSubnetworks(false)
///             .build());
///
///         var multicastDomainA = new MulticastDomain("multicastDomainA", MulticastDomainArgs.builder()
///             .multicastDomainId("test-mdg-domain-a")
///             .location("global")
///             .adminNetwork(network.id())
///             .connectionConfig(MulticastDomainConnectionConfigArgs.builder()
///                 .connectionType("SAME_VPC")
///                 .build())
///             .multicastDomainGroup(mdgTest.id())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(network)
///                 .build());
///
///         var multicastDomainB = new MulticastDomain("multicastDomainB", MulticastDomainArgs.builder()
///             .multicastDomainId("test-mdg-domain-b")
///             .location("global")
///             .adminNetwork(network.id())
///             .connectionConfig(MulticastDomainConnectionConfigArgs.builder()
///                 .connectionType("SAME_VPC")
///                 .build())
///             .multicastDomainGroup(mdgTest.id())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(network)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   mdgTest:
///     type: gcp:networkservices:MulticastDomainGroup
///     name: mdg_test
///     properties:
///       multicastDomainGroupId: test-mdg-resource
///       location: global
///       description: my description
///       labels:
///         fake_label: label123
///   network:
///     type: gcp:compute:Network
///     properties:
///       name: test-mdg-network
///       autoCreateSubnetworks: false
///   multicastDomainA:
///     type: gcp:networkservices:MulticastDomain
///     name: multicast_domain_a
///     properties:
///       multicastDomainId: test-mdg-domain-a
///       location: global
///       adminNetwork: ${network.id}
///       connectionConfig:
///         connectionType: SAME_VPC
///       multicastDomainGroup: ${mdgTest.id}
///     options:
///       dependsOn:
///         - ${network}
///   multicastDomainB:
///     type: gcp:networkservices:MulticastDomain
///     name: multicast_domain_b
///     properties:
///       multicastDomainId: test-mdg-domain-b
///       location: global
///       adminNetwork: ${network.id}
///       connectionConfig:
///         connectionType: SAME_VPC
///       multicastDomainGroup: ${mdgTest.id}
///     options:
///       dependsOn:
///         - ${network}
/// ```
///
///
/// ## Import
///
/// MulticastDomainGroup can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/multicastDomainGroups/{{multicast_domain_group_id}}`
/// * `{{project}}/{{location}}/{{multicast_domain_group_id}}`
/// * `{{location}}/{{multicast_domain_group_id}}`
///
///
/// When using the `pulumi import` command, MulticastDomainGroup can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:networkservices/multicastDomainGroup:MulticastDomainGroup default projects/{{project}}/locations/{{location}}/multicastDomainGroups/{{multicast_domain_group_id}}
/// $ pulumi import gcp:networkservices/multicastDomainGroup:MulticastDomainGroup default {{project}}/{{location}}/{{multicast_domain_group_id}}
/// $ pulumi import gcp:networkservices/multicastDomainGroup:MulticastDomainGroup default {{location}}/{{multicast_domain_group_id}}
/// ```
class MulticastDomainGroup extends pulumi.CustomResource {
  /// The timestamp when the multicast domain group was created.
  late final pulumi.Output<String> createTime;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// An optional text description of the multicast domain group.
  late final pulumi.Output<String?> description;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;
  /// Labels as key-value pairs.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  late final pulumi.Output<String> location;
  /// A unique name for the multicast domain group.
  /// The name is restricted to letters, numbers, and hyphen, with the first
  /// character a letter, and the last a letter or a number. The name must not
  /// exceed 48 characters.
  late final pulumi.Output<String> multicastDomainGroupId;
  /// Multicast domains associated with the group.
  /// There can be at most 2 multicast domains in a group.
  late final pulumi.Output<List<String>> multicastDomains;
  /// Identifier. The resource name of the multicast domain group.
  /// Use the following format:
  /// `projects/*/locations/global/multicastDomainGroups/*`
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
  late final pulumi.Output<List<MulticastDomainGroupState>> states;
  /// The Google-generated UUID for the resource. This value is
  /// unique across all multicast domain group resources. If a domain is deleted
  /// and another with the same name is created, the new domain is assigned a
  /// different unique_id.
  late final pulumi.Output<String> uniqueId;
  /// The timestamp when the multicast domain group was most
  /// recently updated.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [MulticastDomainGroup].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [MulticastDomainGroup]. {@macro pulumi_networkservices_multicast_domain_group_multicast_domain_group_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  MulticastDomainGroup(
    String name, {
    MulticastDomainGroupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:networkservices/multicastDomainGroup:MulticastDomainGroup',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.35.1').merge(options),
          additionalSecretOutputs: const ['effectiveLabels', 'pulumiLabels'],
        ) {
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    labels = registerOutput<Map<String, String>?>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    location = registerOutput<String>('location');
    multicastDomainGroupId = registerOutput<String>('multicastDomainGroupId');
    multicastDomains = registerOutput<List<String>>('multicastDomains', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    states = registerOutput<List<MulticastDomainGroupState>>('states', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<MulticastDomainGroupState>(guardedValue, (value) => MulticastDomainGroupState.fromMap((value as Map).cast<String, dynamic>())); });
    uniqueId = registerOutput<String>('uniqueId');
    updateTime = registerOutput<String>('updateTime');
  }

  /// Gets an existing [MulticastDomainGroup] resource's state with the given [name] and [id].
  static MulticastDomainGroup get(
    String name,
    pulumi.Input<String> id, {
    MulticastDomainGroupNetworkservicesState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return MulticastDomainGroup._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  MulticastDomainGroup._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:networkservices/multicastDomainGroup:MulticastDomainGroup',
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
    multicastDomainGroupId = registerOutput<String>('multicastDomainGroupId');
    multicastDomains = registerOutput<List<String>>('multicastDomains', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    states = registerOutput<List<MulticastDomainGroupState>>('states', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<MulticastDomainGroupState>(guardedValue, (value) => MulticastDomainGroupState.fromMap((value as Map).cast<String, dynamic>())); });
    uniqueId = registerOutput<String>('uniqueId');
    updateTime = registerOutput<String>('updateTime');
  }

  /// Creates a typed reference to an existing [MulticastDomainGroup] resource.
  MulticastDomainGroup.reference(String urn)
    : super(
        'gcp:networkservices/multicastDomainGroup:MulticastDomainGroup',
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
    multicastDomainGroupId = registerOutput<String>('multicastDomainGroupId');
    multicastDomains = registerOutput<List<String>>('multicastDomains', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    states = registerOutput<List<MulticastDomainGroupState>>('states', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<MulticastDomainGroupState>(guardedValue, (value) => MulticastDomainGroupState.fromMap((value as Map).cast<String, dynamic>())); });
    uniqueId = registerOutput<String>('uniqueId');
    updateTime = registerOutput<String>('updateTime');
  }
}
