import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_endpoint_group_args.dart';
import 'network_endpoint_group_state.dart';

/// Network endpoint groups (NEGs) are zonal resources that represent
/// collections of IP address and port combinations for GCP resources within a
/// single subnet. Each IP address and port combination is called a network
/// endpoint.
///
/// Network endpoint groups can be used as backends in backend services for
/// HTTP(S), TCP proxy, and SSL proxy load balancers. You cannot use NEGs as a
/// backend with internal load balancers. Because NEG backends allow you to
/// specify IP addresses and ports, you can distribute traffic in a granular
/// fashion among applications or containers running within VM instances.
///
/// Recreating a network endpoint group that's in use by another resource will give a
/// `resourceInUseByAnotherResource` error. Use `lifecycle.create_before_destroy`
/// to avoid this type of error.
///
///
/// To get more information about NetworkEndpointGroup, see:
///
/// * [API documentation](https://cloud.google.com/compute/docs/reference/rest/beta/networkEndpointGroups)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/load-balancing/docs/negs/)
///
/// ## Example Usage
///
/// ### Network Endpoint Group
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.compute.Network("default", {
///     name: "neg-network",
///     autoCreateSubnetworks: false,
/// });
/// const defaultSubnetwork = new gcp.compute.Subnetwork("default", {
///     name: "neg-subnetwork",
///     ipCidrRange: "10.0.0.0/16",
///     region: "us-central1",
///     network: _default.id,
/// });
/// const neg = new gcp.compute.NetworkEndpointGroup("neg", {
///     name: "my-lb-neg",
///     network: _default.id,
///     subnetwork: defaultSubnetwork.id,
///     defaultPort: 90,
///     zone: "us-central1-a",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.compute.Network("default",
///     name="neg-network",
///     auto_create_subnetworks=False)
/// default_subnetwork = gcp.compute.Subnetwork("default",
///     name="neg-subnetwork",
///     ip_cidr_range="10.0.0.0/16",
///     region="us-central1",
///     network=default.id)
/// neg = gcp.compute.NetworkEndpointGroup("neg",
///     name="my-lb-neg",
///     network=default.id,
///     subnetwork=default_subnetwork.id,
///     default_port=90,
///     zone="us-central1-a")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = new Gcp.Compute.Network("default", new()
///     {
///         Name = "neg-network",
///         AutoCreateSubnetworks = false,
///     });
///
///     var defaultSubnetwork = new Gcp.Compute.Subnetwork("default", new()
///     {
///         Name = "neg-subnetwork",
///         IpCidrRange = "10.0.0.0/16",
///         Region = "us-central1",
///         Network = @default.Id,
///     });
///
///     var neg = new Gcp.Compute.NetworkEndpointGroup("neg", new()
///     {
///         Name = "my-lb-neg",
///         Network = @default.Id,
///         Subnetwork = defaultSubnetwork.Id,
///         DefaultPort = 90,
///         Zone = "us-central1-a",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := compute.NewNetwork(ctx, "default", &compute.NetworkArgs{
/// 			Name:                  pulumi.String("neg-network"),
/// 			AutoCreateSubnetworks: pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultSubnetwork, err := compute.NewSubnetwork(ctx, "default", &compute.SubnetworkArgs{
/// 			Name:        pulumi.String("neg-subnetwork"),
/// 			IpCidrRange: pulumi.String("10.0.0.0/16"),
/// 			Region:      pulumi.String("us-central1"),
/// 			Network:     _default.ID().ToIDOutput().ToStringOutput(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewNetworkEndpointGroup(ctx, "neg", &compute.NetworkEndpointGroupArgs{
/// 			Name:        pulumi.String("my-lb-neg"),
/// 			Network:     _default.ID().ToIDOutput().ToStringOutput(),
/// 			Subnetwork:  defaultSubnetwork.ID().ToIDOutput().ToStringOutput(),
/// 			DefaultPort: pulumi.Int(90),
/// 			Zone:        pulumi.String("us-central1-a"),
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
/// resource "gcp_compute_networkendpointgroup" "neg" {
///   name         = "my-lb-neg"
///   network      = gcp_compute_network.default.id
///   subnetwork   = gcp_compute_subnetwork.default.id
///   default_port = "90"
///   zone         = "us-central1-a"
/// }
/// resource "gcp_compute_network" "default" {
///   name                    = "neg-network"
///   auto_create_subnetworks = false
/// }
/// resource "gcp_compute_subnetwork" "default" {
///   name          = "neg-subnetwork"
///   ip_cidr_range = "10.0.0.0/16"
///   region        = "us-central1"
///   network       = gcp_compute_network.default.id
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
/// import com.pulumi.gcp.compute.Subnetwork;
/// import com.pulumi.gcp.compute.SubnetworkArgs;
/// import com.pulumi.gcp.compute.NetworkEndpointGroup;
/// import com.pulumi.gcp.compute.NetworkEndpointGroupArgs;
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
///         var default_ = new Network("default", NetworkArgs.builder()
///             .name("neg-network")
///             .autoCreateSubnetworks(false)
///             .build());
///
///         var defaultSubnetwork = new Subnetwork("defaultSubnetwork", SubnetworkArgs.builder()
///             .name("neg-subnetwork")
///             .ipCidrRange("10.0.0.0/16")
///             .region("us-central1")
///             .network(default_.id())
///             .build());
///
///         var neg = new NetworkEndpointGroup("neg", NetworkEndpointGroupArgs.builder()
///             .name("my-lb-neg")
///             .network(default_.id())
///             .subnetwork(defaultSubnetwork.id())
///             .defaultPort(90)
///             .zone("us-central1-a")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   neg:
///     type: gcp:compute:NetworkEndpointGroup
///     properties:
///       name: my-lb-neg
///       network: ${default.id}
///       subnetwork: ${defaultSubnetwork.id}
///       defaultPort: '90'
///       zone: us-central1-a
///   default:
///     type: gcp:compute:Network
///     properties:
///       name: neg-network
///       autoCreateSubnetworks: false
///   defaultSubnetwork:
///     type: gcp:compute:Subnetwork
///     name: default
///     properties:
///       name: neg-subnetwork
///       ipCidrRange: 10.0.0.0/16
///       region: us-central1
///       network: ${default.id}
/// ```
///
/// ### Network Endpoint Group Non Gcp
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.compute.Network("default", {name: "neg-network"});
/// const neg = new gcp.compute.NetworkEndpointGroup("neg", {
///     name: "my-lb-neg",
///     network: _default.id,
///     defaultPort: 90,
///     zone: "us-central1-a",
///     networkEndpointType: "NON_GCP_PRIVATE_IP_PORT",
/// });
/// const default_endpoint = new gcp.compute.NetworkEndpoint("default-endpoint", {
///     networkEndpointGroup: neg.name,
///     port: neg.defaultPort,
///     ipAddress: "127.0.0.1",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.compute.Network("default", name="neg-network")
/// neg = gcp.compute.NetworkEndpointGroup("neg",
///     name="my-lb-neg",
///     network=default.id,
///     default_port=90,
///     zone="us-central1-a",
///     network_endpoint_type="NON_GCP_PRIVATE_IP_PORT")
/// default_endpoint = gcp.compute.NetworkEndpoint("default-endpoint",
///     network_endpoint_group=neg.name,
///     port=neg.default_port,
///     ip_address="127.0.0.1")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = new Gcp.Compute.Network("default", new()
///     {
///         Name = "neg-network",
///     });
///
///     var neg = new Gcp.Compute.NetworkEndpointGroup("neg", new()
///     {
///         Name = "my-lb-neg",
///         Network = @default.Id,
///         DefaultPort = 90,
///         Zone = "us-central1-a",
///         NetworkEndpointType = "NON_GCP_PRIVATE_IP_PORT",
///     });
///
///     var default_endpoint = new Gcp.Compute.NetworkEndpoint("default-endpoint", new()
///     {
///         NetworkEndpointGroup = neg.Name,
///         Port = neg.DefaultPort,
///         IpAddress = "127.0.0.1",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := compute.NewNetwork(ctx, "default", &compute.NetworkArgs{
/// 			Name: pulumi.String("neg-network"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		neg, err := compute.NewNetworkEndpointGroup(ctx, "neg", &compute.NetworkEndpointGroupArgs{
/// 			Name:                pulumi.String("my-lb-neg"),
/// 			Network:             _default.ID().ToIDOutput().ToStringOutput(),
/// 			DefaultPort:         pulumi.Int(90),
/// 			Zone:                pulumi.String("us-central1-a"),
/// 			NetworkEndpointType: pulumi.String("NON_GCP_PRIVATE_IP_PORT"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewNetworkEndpoint(ctx, "default-endpoint", &compute.NetworkEndpointArgs{
/// 			NetworkEndpointGroup: neg.Name,
/// 			Port:                 neg.DefaultPort,
/// 			IpAddress:            pulumi.String("127.0.0.1"),
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
/// resource "gcp_compute_networkendpointgroup" "neg" {
///   name                  = "my-lb-neg"
///   network               = gcp_compute_network.default.id
///   default_port          = "90"
///   zone                  = "us-central1-a"
///   network_endpoint_type = "NON_GCP_PRIVATE_IP_PORT"
/// }
/// resource "gcp_compute_networkendpoint" "default-endpoint" {
///   network_endpoint_group = gcp_compute_networkendpointgroup.neg.name
///   port                   = gcp_compute_networkendpointgroup.neg.default_port
///   ip_address             = "127.0.0.1"
/// }
/// resource "gcp_compute_network" "default" {
///   name = "neg-network"
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
/// import com.pulumi.gcp.compute.NetworkEndpointGroup;
/// import com.pulumi.gcp.compute.NetworkEndpointGroupArgs;
/// import com.pulumi.gcp.compute.NetworkEndpoint;
/// import com.pulumi.gcp.compute.NetworkEndpointArgs;
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
///         var default_ = new Network("default", NetworkArgs.builder()
///             .name("neg-network")
///             .build());
///
///         var neg = new NetworkEndpointGroup("neg", NetworkEndpointGroupArgs.builder()
///             .name("my-lb-neg")
///             .network(default_.id())
///             .defaultPort(90)
///             .zone("us-central1-a")
///             .networkEndpointType("NON_GCP_PRIVATE_IP_PORT")
///             .build());
///
///         var default_endpoint = new NetworkEndpoint("default-endpoint", NetworkEndpointArgs.builder()
///             .networkEndpointGroup(neg.name())
///             .port(neg.defaultPort())
///             .ipAddress("127.0.0.1")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   neg:
///     type: gcp:compute:NetworkEndpointGroup
///     properties:
///       name: my-lb-neg
///       network: ${default.id}
///       defaultPort: '90'
///       zone: us-central1-a
///       networkEndpointType: NON_GCP_PRIVATE_IP_PORT
///   default-endpoint:
///     type: gcp:compute:NetworkEndpoint
///     properties:
///       networkEndpointGroup: ${neg.name}
///       port: ${neg.defaultPort}
///       ipAddress: 127.0.0.1
///   default:
///     type: gcp:compute:Network
///     properties:
///       name: neg-network
/// ```
///
///
/// ## Import
///
/// NetworkEndpointGroup can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/zones/{{zone}}/networkEndpointGroups/{{name}}`
/// * `{{project}}/{{zone}}/{{name}}`
/// * `{{zone}}/{{name}}`
/// * `{{name}}`
///
///
/// When using the `pulumi import` command, NetworkEndpointGroup can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:compute/networkEndpointGroup:NetworkEndpointGroup default projects/{{project}}/zones/{{zone}}/networkEndpointGroups/{{name}}
/// $ pulumi import gcp:compute/networkEndpointGroup:NetworkEndpointGroup default {{project}}/{{zone}}/{{name}}
/// $ pulumi import gcp:compute/networkEndpointGroup:NetworkEndpointGroup default {{zone}}/{{name}}
/// $ pulumi import gcp:compute/networkEndpointGroup:NetworkEndpointGroup default {{name}}
/// ```
class NetworkEndpointGroup extends pulumi.CustomResource {
  /// The default port used if the port number is not specified in the
  /// network endpoint.
  late final pulumi.Output<int?> defaultPort;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// An optional description of this resource. Provide this property when
  /// you create the resource.
  late final pulumi.Output<String?> description;
  /// The uniquely generated identifier for the resource. This identifier is defined by the server.
  late final pulumi.Output<int> generatedId;
  /// Name of the resource; provided by the client when the resource is
  /// created. The name must be 1-63 characters long, and comply with
  /// RFC1035. Specifically, the name must be 1-63 characters long and match
  /// the regular expression `a-z?` which means the
  /// first character must be a lowercase letter, and all following
  /// characters must be a dash, lowercase letter, or digit, except the last
  /// character, which cannot be a dash.
  late final pulumi.Output<String> name;
  /// The network to which all network endpoints in the NEG belong.
  /// Uses "default" project network if unspecified.
  late final pulumi.Output<String> network;
  /// Type of network endpoints in this network endpoint group.
  /// NON_GCP_PRIVATE_IP_PORT is used for hybrid connectivity network
  /// endpoint groups (see https://cloud.google.com/load-balancing/docs/hybrid).
  /// Note that NON_GCP_PRIVATE_IP_PORT can only be used with Backend Services
  /// that 1) have the following load balancing schemes: EXTERNAL, EXTERNAL_MANAGED,
  /// INTERNAL_MANAGED, and INTERNAL_SELF_MANAGED and 2) support the RATE or
  /// CONNECTION balancing modes.
  /// Possible values include: GCE_VM_IP, GCE_VM_IP_PORT, NON_GCP_PRIVATE_IP_PORT, INTERNET_IP_PORT, INTERNET_FQDN_PORT, SERVERLESS, and PRIVATE_SERVICE_CONNECT.
  /// Default value is `GCE_VM_IP_PORT`.
  /// Possible values are: `GCE_VM_IP`, `GCE_VM_IP_PORT`, `NON_GCP_PRIVATE_IP_PORT`, `INTERNET_IP_PORT`, `INTERNET_FQDN_PORT`, `SERVERLESS`, `PRIVATE_SERVICE_CONNECT`, `GCE_VM_IP_DEDICATED_BACKEND`.
  late final pulumi.Output<String?> networkEndpointType;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// The URI of the created resource.
  late final pulumi.Output<String> selfLink;
  /// Number of network endpoints in the network endpoint group.
  late final pulumi.Output<int> size;
  /// Optional subnetwork to which all network endpoints in the NEG belong.
  late final pulumi.Output<String?> subnetwork;
  /// Zone where the network endpoint group is located.
  late final pulumi.Output<String> zone;

  /// Creates a new [NetworkEndpointGroup].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [NetworkEndpointGroup]. {@macro pulumi_compute_network_endpoint_group_network_endpoint_group_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  NetworkEndpointGroup(
    String name, {
    NetworkEndpointGroupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:compute/networkEndpointGroup:NetworkEndpointGroup',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.36.1').merge(options),
        ) {
    defaultPort = registerOutput<int?>('defaultPort');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    generatedId = registerOutput<int>('generatedId');
    this.name = registerOutput<String>('name');
    network = registerOutput<String>('network');
    networkEndpointType = registerOutput<String?>('networkEndpointType');
    project = registerOutput<String>('project');
    selfLink = registerOutput<String>('selfLink');
    size = registerOutput<int>('size');
    subnetwork = registerOutput<String?>('subnetwork');
    zone = registerOutput<String>('zone');
  }

  /// Gets an existing [NetworkEndpointGroup] resource's state with the given [name] and [id].
  static NetworkEndpointGroup get(
    String name,
    pulumi.Input<String> id, {
    NetworkEndpointGroupState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return NetworkEndpointGroup._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  NetworkEndpointGroup._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:compute/networkEndpointGroup:NetworkEndpointGroup',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    defaultPort = registerOutput<int?>('defaultPort');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    generatedId = registerOutput<int>('generatedId');
    this.name = registerOutput<String>('name');
    network = registerOutput<String>('network');
    networkEndpointType = registerOutput<String?>('networkEndpointType');
    project = registerOutput<String>('project');
    selfLink = registerOutput<String>('selfLink');
    size = registerOutput<int>('size');
    subnetwork = registerOutput<String?>('subnetwork');
    zone = registerOutput<String>('zone');
  }

  /// Creates a typed reference to an existing [NetworkEndpointGroup] resource.
  NetworkEndpointGroup.reference(String urn)
    : super(
        'gcp:compute/networkEndpointGroup:NetworkEndpointGroup',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    defaultPort = registerOutput<int?>('defaultPort');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    generatedId = registerOutput<int>('generatedId');
    this.name = registerOutput<String>('name');
    network = registerOutput<String>('network');
    networkEndpointType = registerOutput<String?>('networkEndpointType');
    project = registerOutput<String>('project');
    selfLink = registerOutput<String>('selfLink');
    size = registerOutput<int>('size');
    subnetwork = registerOutput<String?>('subnetwork');
    zone = registerOutput<String>('zone');
  }
}
