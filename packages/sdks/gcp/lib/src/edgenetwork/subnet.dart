import 'package:pulumi/pulumi.dart' as pulumi;
import 'subnet_args.dart';
import 'subnet_state.dart';

/// A Distributed Cloud Edge subnet, which provides L2 isolation within a network.
///
///
/// To get more information about Subnet, see:
///
/// * [API documentation](https://cloud.google.com/distributed-cloud/edge/latest/docs/reference/network/rest/v1/projects.locations.zones.subnets)
/// * How-to Guides
/// * [Create and manage subnetworks](https://cloud.google.com/distributed-cloud/edge/latest/docs/subnetworks#api)
///
/// ## Example Usage
///
/// ### Edgenetwork Subnet
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const exampleNetwork = new gcp.edgenetwork.Network("example_network", {
///     networkId: "example-network",
///     location: "us-west1",
///     zone: "",
///     description: "Example network.",
///     mtu: 9000,
/// });
/// const exampleSubnet = new gcp.edgenetwork.Subnet("example_subnet", {
///     subnetId: "example-subnet",
///     location: "us-west1",
///     zone: "",
///     description: "Example subnet.",
///     network: exampleNetwork.id,
///     ipv4Cidrs: ["4.4.4.1/24"],
///     labels: {
///         environment: "dev",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// example_network = gcp.edgenetwork.Network("example_network",
///     network_id="example-network",
///     location="us-west1",
///     zone="",
///     description="Example network.",
///     mtu=9000)
/// example_subnet = gcp.edgenetwork.Subnet("example_subnet",
///     subnet_id="example-subnet",
///     location="us-west1",
///     zone="",
///     description="Example subnet.",
///     network=example_network.id,
///     ipv4_cidrs=["4.4.4.1/24"],
///     labels={
///         "environment": "dev",
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
///     var exampleNetwork = new Gcp.EdgeNetwork.Network("example_network", new()
///     {
///         NetworkId = "example-network",
///         Location = "us-west1",
///         Zone = "",
///         Description = "Example network.",
///         Mtu = 9000,
///     });
///
///     var exampleSubnet = new Gcp.EdgeNetwork.Subnet("example_subnet", new()
///     {
///         SubnetId = "example-subnet",
///         Location = "us-west1",
///         Zone = "",
///         Description = "Example subnet.",
///         Network = exampleNetwork.Id,
///         Ipv4Cidrs = new[]
///         {
///             "4.4.4.1/24",
///         },
///         Labels =
///         {
///             { "environment", "dev" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/edgenetwork"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		exampleNetwork, err := edgenetwork.NewNetwork(ctx, "example_network", &edgenetwork.NetworkArgs{
/// 			NetworkId:   pulumi.String("example-network"),
/// 			Location:    pulumi.String("us-west1"),
/// 			Zone:        pulumi.String(""),
/// 			Description: pulumi.String("Example network."),
/// 			Mtu:         pulumi.Int(9000),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = edgenetwork.NewSubnet(ctx, "example_subnet", &edgenetwork.SubnetArgs{
/// 			SubnetId:    pulumi.String("example-subnet"),
/// 			Location:    pulumi.String("us-west1"),
/// 			Zone:        pulumi.String(""),
/// 			Description: pulumi.String("Example subnet."),
/// 			Network:     exampleNetwork.ID().ToIDOutput().ToStringOutput(),
/// 			Ipv4Cidrs: pulumi.StringArray{
/// 				pulumi.String("4.4.4.1/24"),
/// 			},
/// 			Labels: pulumi.StringMap{
/// 				"environment": pulumi.String("dev"),
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
/// resource "gcp_edgenetwork_subnet" "example_subnet" {
///   subnet_id   = "example-subnet"
///   location    = "us-west1"
///   zone        = ""
///   description = "Example subnet."
///   network     = gcp_edgenetwork_network.example_network.id
///   ipv4_cidrs  = ["4.4.4.1/24"]
///   labels = {
///     "environment" = "dev"
///   }
/// }
/// resource "gcp_edgenetwork_network" "example_network" {
///   network_id  = "example-network"
///   location    = "us-west1"
///   zone        = ""
///   description = "Example network."
///   mtu         = 9000
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.edgenetwork.Network;
/// import com.pulumi.gcp.edgenetwork.NetworkArgs;
/// import com.pulumi.gcp.edgenetwork.Subnet;
/// import com.pulumi.gcp.edgenetwork.SubnetArgs;
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
///         var exampleNetwork = new Network("exampleNetwork", NetworkArgs.builder()
///             .networkId("example-network")
///             .location("us-west1")
///             .zone("")
///             .description("Example network.")
///             .mtu(9000)
///             .build());
///
///         var exampleSubnet = new Subnet("exampleSubnet", SubnetArgs.builder()
///             .subnetId("example-subnet")
///             .location("us-west1")
///             .zone("")
///             .description("Example subnet.")
///             .network(exampleNetwork.id())
///             .ipv4Cidrs("4.4.4.1/24")
///             .labels(Map.of("environment", "dev"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleSubnet:
///     type: gcp:edgenetwork:Subnet
///     name: example_subnet
///     properties:
///       subnetId: example-subnet
///       location: us-west1
///       zone: ""
///       description: Example subnet.
///       network: ${exampleNetwork.id}
///       ipv4Cidrs:
///         - 4.4.4.1/24
///       labels:
///         environment: dev
///   exampleNetwork:
///     type: gcp:edgenetwork:Network
///     name: example_network
///     properties:
///       networkId: example-network
///       location: us-west1
///       zone: ""
///       description: Example network.
///       mtu: 9000
/// ```
///
/// ### Edgenetwork Subnet With Vlan Id
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const exampleNetwork = new gcp.edgenetwork.Network("example_network", {
///     networkId: "example-network",
///     location: "us-west1",
///     zone: "",
///     description: "Example network.",
///     mtu: 9000,
/// });
/// const exampleSubnetWithVlanId = new gcp.edgenetwork.Subnet("example_subnet_with_vlan_id", {
///     subnetId: "example-subnet-with-vlan-id",
///     location: "us-west1",
///     zone: "",
///     description: "Example subnet with VLAN ID.",
///     network: exampleNetwork.id,
///     ipv6Cidrs: ["4444:4444:4444:4444::1/64"],
///     vlanId: 44,
///     labels: {
///         environment: "dev",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// example_network = gcp.edgenetwork.Network("example_network",
///     network_id="example-network",
///     location="us-west1",
///     zone="",
///     description="Example network.",
///     mtu=9000)
/// example_subnet_with_vlan_id = gcp.edgenetwork.Subnet("example_subnet_with_vlan_id",
///     subnet_id="example-subnet-with-vlan-id",
///     location="us-west1",
///     zone="",
///     description="Example subnet with VLAN ID.",
///     network=example_network.id,
///     ipv6_cidrs=["4444:4444:4444:4444::1/64"],
///     vlan_id=44,
///     labels={
///         "environment": "dev",
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
///     var exampleNetwork = new Gcp.EdgeNetwork.Network("example_network", new()
///     {
///         NetworkId = "example-network",
///         Location = "us-west1",
///         Zone = "",
///         Description = "Example network.",
///         Mtu = 9000,
///     });
///
///     var exampleSubnetWithVlanId = new Gcp.EdgeNetwork.Subnet("example_subnet_with_vlan_id", new()
///     {
///         SubnetId = "example-subnet-with-vlan-id",
///         Location = "us-west1",
///         Zone = "",
///         Description = "Example subnet with VLAN ID.",
///         Network = exampleNetwork.Id,
///         Ipv6Cidrs = new[]
///         {
///             "4444:4444:4444:4444::1/64",
///         },
///         VlanId = 44,
///         Labels =
///         {
///             { "environment", "dev" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/edgenetwork"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		exampleNetwork, err := edgenetwork.NewNetwork(ctx, "example_network", &edgenetwork.NetworkArgs{
/// 			NetworkId:   pulumi.String("example-network"),
/// 			Location:    pulumi.String("us-west1"),
/// 			Zone:        pulumi.String(""),
/// 			Description: pulumi.String("Example network."),
/// 			Mtu:         pulumi.Int(9000),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = edgenetwork.NewSubnet(ctx, "example_subnet_with_vlan_id", &edgenetwork.SubnetArgs{
/// 			SubnetId:    pulumi.String("example-subnet-with-vlan-id"),
/// 			Location:    pulumi.String("us-west1"),
/// 			Zone:        pulumi.String(""),
/// 			Description: pulumi.String("Example subnet with VLAN ID."),
/// 			Network:     exampleNetwork.ID().ToIDOutput().ToStringOutput(),
/// 			Ipv6Cidrs: pulumi.StringArray{
/// 				pulumi.String("4444:4444:4444:4444::1/64"),
/// 			},
/// 			VlanId: pulumi.Int(44),
/// 			Labels: pulumi.StringMap{
/// 				"environment": pulumi.String("dev"),
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
/// resource "gcp_edgenetwork_subnet" "example_subnet_with_vlan_id" {
///   subnet_id   = "example-subnet-with-vlan-id"
///   location    = "us-west1"
///   zone        = ""
///   description = "Example subnet with VLAN ID."
///   network     = gcp_edgenetwork_network.example_network.id
///   ipv6_cidrs  = ["4444:4444:4444:4444::1/64"]
///   vlan_id     = 44
///   labels = {
///     "environment" = "dev"
///   }
/// }
/// resource "gcp_edgenetwork_network" "example_network" {
///   network_id  = "example-network"
///   location    = "us-west1"
///   zone        = ""
///   description = "Example network."
///   mtu         = 9000
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.edgenetwork.Network;
/// import com.pulumi.gcp.edgenetwork.NetworkArgs;
/// import com.pulumi.gcp.edgenetwork.Subnet;
/// import com.pulumi.gcp.edgenetwork.SubnetArgs;
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
///         var exampleNetwork = new Network("exampleNetwork", NetworkArgs.builder()
///             .networkId("example-network")
///             .location("us-west1")
///             .zone("")
///             .description("Example network.")
///             .mtu(9000)
///             .build());
///
///         var exampleSubnetWithVlanId = new Subnet("exampleSubnetWithVlanId", SubnetArgs.builder()
///             .subnetId("example-subnet-with-vlan-id")
///             .location("us-west1")
///             .zone("")
///             .description("Example subnet with VLAN ID.")
///             .network(exampleNetwork.id())
///             .ipv6Cidrs("4444:4444:4444:4444::1/64")
///             .vlanId(44)
///             .labels(Map.of("environment", "dev"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleSubnetWithVlanId:
///     type: gcp:edgenetwork:Subnet
///     name: example_subnet_with_vlan_id
///     properties:
///       subnetId: example-subnet-with-vlan-id
///       location: us-west1
///       zone: ""
///       description: Example subnet with VLAN ID.
///       network: ${exampleNetwork.id}
///       ipv6Cidrs:
///         - 4444:4444:4444:4444::1/64
///       vlanId: 44
///       labels:
///         environment: dev
///   exampleNetwork:
///     type: gcp:edgenetwork:Network
///     name: example_network
///     properties:
///       networkId: example-network
///       location: us-west1
///       zone: ""
///       description: Example network.
///       mtu: 9000
/// ```
///
///
/// ## Import
///
/// Subnet can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/zones/{{zone}}/subnets/{{subnet_id}}`
/// * `{{project}}/{{location}}/{{zone}}/{{subnet_id}}`
/// * `{{location}}/{{zone}}/{{subnet_id}}`
/// * `{{location}}/{{subnet_id}}`
/// * `{{name}}`
///
///
/// When using the `pulumi import` command, Subnet can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:edgenetwork/subnet:Subnet default projects/{{project}}/locations/{{location}}/zones/{{zone}}/subnets/{{subnet_id}}
/// $ pulumi import gcp:edgenetwork/subnet:Subnet default {{project}}/{{location}}/{{zone}}/{{subnet_id}}
/// $ pulumi import gcp:edgenetwork/subnet:Subnet default {{location}}/{{zone}}/{{subnet_id}}
/// $ pulumi import gcp:edgenetwork/subnet:Subnet default {{location}}/{{subnet_id}}
/// $ pulumi import gcp:edgenetwork/subnet:Subnet default {{name}}
/// ```
class Subnet extends pulumi.CustomResource {
  /// The time when the subnet was created.
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine
  /// fractional digits. Examples: `2014-10-02T15:01:23Z` and `2014-10-02T15:01:23.045123456Z`.
  late final pulumi.Output<String> createTime;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// A free-text description of the resource. Max length 1024 characters.
  late final pulumi.Output<String?> description;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;
  /// The ranges of ipv4 addresses that are owned by this subnetwork, in CIDR format.
  late final pulumi.Output<List<String>?> ipv4Cidrs;
  /// The ranges of ipv6 addresses that are owned by this subnetwork, in CIDR format.
  late final pulumi.Output<List<String>?> ipv6Cidrs;
  /// Labels associated with this resource.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;
  /// The Google Cloud region to which the target Distributed Cloud Edge zone belongs.
  late final pulumi.Output<String> location;
  /// The canonical name of this resource, with format
  /// `projects/{{project}}/locations/{{location}}/zones/{{zone}}/subnets/{{subnet_id}}`
  late final pulumi.Output<String> name;
  /// The ID of the network to which this router belongs.
  /// Must be of the form: `projects/{{project}}/locations/{{location}}/zones/{{zone}}/networks/{{network_id}}`
  late final pulumi.Output<String> network;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;
  /// Current stage of the resource to the device by config push.
  late final pulumi.Output<String> state;
  /// A unique ID that identifies this subnet.
  late final pulumi.Output<String> subnetId;
  /// The time when the subnet was last updated.
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine
  /// fractional digits. Examples: `2014-10-02T15:01:23Z` and `2014-10-02T15:01:23.045123456Z`.
  late final pulumi.Output<String> updateTime;
  /// VLAN ID for this subnetwork. If not specified, one is assigned automatically.
  late final pulumi.Output<int> vlanId;
  /// The name of the target Distributed Cloud Edge zone.
  late final pulumi.Output<String> zone;

  /// Creates a new [Subnet].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Subnet]. {@macro pulumi_edgenetwork_subnet_subnet_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Subnet(
    String name, {
    SubnetArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:edgenetwork/subnet:Subnet',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.35.1').merge(options),
          additionalSecretOutputs: const ['effectiveLabels', 'pulumiLabels'],
        ) {
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    ipv4Cidrs = registerOutput<List<String>?>('ipv4Cidrs', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    ipv6Cidrs = registerOutput<List<String>?>('ipv6Cidrs', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    labels = registerOutput<Map<String, String>?>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    network = registerOutput<String>('network');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    state = registerOutput<String>('state');
    subnetId = registerOutput<String>('subnetId');
    updateTime = registerOutput<String>('updateTime');
    vlanId = registerOutput<int>('vlanId');
    zone = registerOutput<String>('zone');
  }

  /// Gets an existing [Subnet] resource's state with the given [name] and [id].
  static Subnet get(
    String name,
    pulumi.Input<String> id, {
    SubnetState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return Subnet._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  Subnet._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:edgenetwork/subnet:Subnet',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    ipv4Cidrs = registerOutput<List<String>?>('ipv4Cidrs', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    ipv6Cidrs = registerOutput<List<String>?>('ipv6Cidrs', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    labels = registerOutput<Map<String, String>?>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    network = registerOutput<String>('network');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    this.state = registerOutput<String>('state');
    subnetId = registerOutput<String>('subnetId');
    updateTime = registerOutput<String>('updateTime');
    vlanId = registerOutput<int>('vlanId');
    zone = registerOutput<String>('zone');
  }

  /// Creates a typed reference to an existing [Subnet] resource.
  Subnet.reference(String urn)
    : super(
        'gcp:edgenetwork/subnet:Subnet',
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
    ipv4Cidrs = registerOutput<List<String>?>('ipv4Cidrs', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    ipv6Cidrs = registerOutput<List<String>?>('ipv6Cidrs', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    labels = registerOutput<Map<String, String>?>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    network = registerOutput<String>('network');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    state = registerOutput<String>('state');
    subnetId = registerOutput<String>('subnetId');
    updateTime = registerOutput<String>('updateTime');
    vlanId = registerOutput<int>('vlanId');
    zone = registerOutput<String>('zone');
  }
}
