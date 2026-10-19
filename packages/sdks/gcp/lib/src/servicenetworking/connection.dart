import 'package:pulumi/pulumi.dart' as pulumi;
import 'connection_args.dart';
import 'connection_state.dart';

/// Manages a private VPC connection with a GCP service provider. For more information see
/// [the official documentation](https://cloud.google.com/vpc/docs/configure-private-services-access#creating-connection)
/// and
/// [API](https://cloud.google.com/service-infrastructure/docs/service-networking/reference/rest/v1/services.connections).
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// // Create a VPC network
/// const peeringNetwork = new gcp.compute.Network("peering_network", {name: "peering-network"});
/// // Create an IP address
/// const privateIpAlloc = new gcp.compute.GlobalAddress("private_ip_alloc", {
///     name: "private-ip-alloc",
///     purpose: "VPC_PEERING",
///     addressType: "INTERNAL",
///     prefixLength: 16,
///     network: peeringNetwork.id,
/// });
/// // Create a private connection
/// const _default = new gcp.servicenetworking.Connection("default", {
///     network: peeringNetwork.id,
///     service: "servicenetworking.googleapis.com",
///     reservedPeeringRanges: [privateIpAlloc.name],
/// });
/// // (Optional) Import or export custom routes
/// const peeringRoutes = new gcp.compute.NetworkPeeringRoutesConfig("peering_routes", {
///     peering: _default.peering,
///     network: peeringNetwork.name,
///     importCustomRoutes: true,
///     exportCustomRoutes: true,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// # Create a VPC network
/// peering_network = gcp.compute.Network("peering_network", name="peering-network")
/// # Create an IP address
/// private_ip_alloc = gcp.compute.GlobalAddress("private_ip_alloc",
///     name="private-ip-alloc",
///     purpose="VPC_PEERING",
///     address_type="INTERNAL",
///     prefix_length=16,
///     network=peering_network.id)
/// # Create a private connection
/// default = gcp.servicenetworking.Connection("default",
///     network=peering_network.id,
///     service="servicenetworking.googleapis.com",
///     reserved_peering_ranges=[private_ip_alloc.name])
/// # (Optional) Import or export custom routes
/// peering_routes = gcp.compute.NetworkPeeringRoutesConfig("peering_routes",
///     peering=default.peering,
///     network=peering_network.name,
///     import_custom_routes=True,
///     export_custom_routes=True)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     // Create a VPC network
///     var peeringNetwork = new Gcp.Compute.Network("peering_network", new()
///     {
///         Name = "peering-network",
///     });
///
///     // Create an IP address
///     var privateIpAlloc = new Gcp.Compute.GlobalAddress("private_ip_alloc", new()
///     {
///         Name = "private-ip-alloc",
///         Purpose = "VPC_PEERING",
///         AddressType = "INTERNAL",
///         PrefixLength = 16,
///         Network = peeringNetwork.Id,
///     });
///
///     // Create a private connection
///     var @default = new Gcp.ServiceNetworking.Connection("default", new()
///     {
///         Network = peeringNetwork.Id,
///         Service = "servicenetworking.googleapis.com",
///         ReservedPeeringRanges = new[]
///         {
///             privateIpAlloc.Name,
///         },
///     });
///
///     // (Optional) Import or export custom routes
///     var peeringRoutes = new Gcp.Compute.NetworkPeeringRoutesConfig("peering_routes", new()
///     {
///         Peering = @default.Peering,
///         Network = peeringNetwork.Name,
///         ImportCustomRoutes = true,
///         ExportCustomRoutes = true,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v10/go/gcp/compute"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v10/go/gcp/servicenetworking"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		// Create a VPC network
/// 		peeringNetwork, err := compute.NewNetwork(ctx, "peering_network", &compute.NetworkArgs{
/// 			Name: pulumi.String("peering-network"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// Create an IP address
/// 		privateIpAlloc, err := compute.NewGlobalAddress(ctx, "private_ip_alloc", &compute.GlobalAddressArgs{
/// 			Name:         pulumi.String("private-ip-alloc"),
/// 			Purpose:      pulumi.String("VPC_PEERING"),
/// 			AddressType:  pulumi.String("INTERNAL"),
/// 			PrefixLength: pulumi.Int(16),
/// 			Network:      peeringNetwork.ID().ToIDOutput().ToStringOutput(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// Create a private connection
/// 		_default, err := servicenetworking.NewConnection(ctx, "default", &servicenetworking.ConnectionArgs{
/// 			Network: peeringNetwork.ID().ToIDOutput().ToStringOutput(),
/// 			Service: pulumi.String("servicenetworking.googleapis.com"),
/// 			ReservedPeeringRanges: pulumi.StringArray{
/// 				privateIpAlloc.Name,
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// (Optional) Import or export custom routes
/// 		_, err = compute.NewNetworkPeeringRoutesConfig(ctx, "peering_routes", &compute.NetworkPeeringRoutesConfigArgs{
/// 			Peering:            _default.Peering,
/// 			Network:            peeringNetwork.Name,
/// 			ImportCustomRoutes: pulumi.Bool(true),
/// 			ExportCustomRoutes: pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// terraform {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// # Create a VPC network
/// resource "gcp_compute_network" "peering_network" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   name = "peering-network"
/// }
/// # Create an IP address
/// resource "gcp_compute_global_address" "private_ip_alloc" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   name          = "private-ip-alloc"
///   purpose       = "VPC_PEERING"
///   address_type  = "INTERNAL"
///   prefix_length = 16
///   network       = gcp_compute_network.peering_network.id
/// }
/// # Create a private connection
/// resource "gcp_servicenetworking_connection" "default" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   network                 = gcp_compute_network.peering_network.id
///   service                 = "servicenetworking.googleapis.com"
///   reserved_peering_ranges = [gcp_compute_global_address.private_ip_alloc.name]
/// }
/// # (Optional) Import or export custom routes
/// resource "gcp_compute_network_peering_routes_config" "peering_routes" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   peering              = gcp_servicenetworking_connection.default.peering
///   network              = gcp_compute_network.peering_network.name
///   import_custom_routes = true
///   export_custom_routes = true
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
/// import com.pulumi.gcp.compute.GlobalAddress;
/// import com.pulumi.gcp.compute.GlobalAddressArgs;
/// import com.pulumi.gcp.servicenetworking.Connection;
/// import com.pulumi.gcp.servicenetworking.ConnectionArgs;
/// import com.pulumi.gcp.compute.NetworkPeeringRoutesConfig;
/// import com.pulumi.gcp.compute.NetworkPeeringRoutesConfigArgs;
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
///         // Create a VPC network
///         var peeringNetwork = new Network("peeringNetwork", NetworkArgs.builder()
///             .name("peering-network")
///             .build());
///
///         // Create an IP address
///         var privateIpAlloc = new GlobalAddress("privateIpAlloc", GlobalAddressArgs.builder()
///             .name("private-ip-alloc")
///             .purpose("VPC_PEERING")
///             .addressType("INTERNAL")
///             .prefixLength(16)
///             .network(peeringNetwork.id())
///             .build());
///
///         // Create a private connection
///         var default_ = new Connection("default", ConnectionArgs.builder()
///             .network(peeringNetwork.id())
///             .service("servicenetworking.googleapis.com")
///             .reservedPeeringRanges(privateIpAlloc.name())
///             .build());
///
///         // (Optional) Import or export custom routes
///         var peeringRoutes = new NetworkPeeringRoutesConfig("peeringRoutes", NetworkPeeringRoutesConfigArgs.builder()
///             .peering(default_.peering())
///             .network(peeringNetwork.name())
///             .importCustomRoutes(true)
///             .exportCustomRoutes(true)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   # Create a VPC network
///   peeringNetwork:
///     type: gcp:compute:Network
///     name: peering_network
///     properties:
///       name: peering-network
///   # Create an IP address
///   privateIpAlloc:
///     type: gcp:compute:GlobalAddress
///     name: private_ip_alloc
///     properties:
///       name: private-ip-alloc
///       purpose: VPC_PEERING
///       addressType: INTERNAL
///       prefixLength: 16
///       network: ${peeringNetwork.id}
///   # Create a private connection
///   default:
///     type: gcp:servicenetworking:Connection
///     properties:
///       network: ${peeringNetwork.id}
///       service: servicenetworking.googleapis.com
///       reservedPeeringRanges:
///         - ${privateIpAlloc.name}
///   # (Optional) Import or export custom routes
///   peeringRoutes:
///     type: gcp:compute:NetworkPeeringRoutesConfig
///     name: peering_routes
///     properties:
///       peering: ${default.peering}
///       network: ${peeringNetwork.name}
///       importCustomRoutes: true
///       exportCustomRoutes: true
/// ```
///
///
/// ## Deleting a connection
///
/// Creating this resource also creates a VPC network peering on the network, named
/// after the service. That peering is not a separate Terraform resource, so its
/// lifecycle is tied to this one.
///
/// Before a connection can be deleted, every service instance reachable through it
/// must be deleted first, and the service producer must have released the resources
/// backing those instances. Producers may hold those resources for a period after
/// the instance itself is deleted. Cloud SQL, for example, retains them so that a
/// deleted instance can still be restored. Until they are released, deleting the
/// connection fails with:
///
/// ```
/// Failed to delete connection; Producer services (e.g. CloudSQL, Cloud Memstore, etc.)
/// are still using this connection.
/// ```
///
/// This also blocks `gcp.compute.Network`, because a network cannot be deleted
/// while a peering references it. Setting `deletionPolicy` to `"ABANDON"` drops the
/// connection from state but leaves the peering in place, so the network still
/// cannot be deleted.
///
/// Setting `deletionPolicy` to `"REMOVE_PEERING"` restores Terraform lifecycle
/// completeness when a transitively created peering blocks deletion of the managed
/// network. It is an escape hatch, not equivalent to a fully successful
/// `deleteConnection`. Aim it at teardown of ephemeral networks or projects, not
/// routine operations.
///
/// Concretely:
///
/// * Use it only once every service instance reachable through the connection has
/// already been deleted. Removing the peering while an instance is still running
/// will break that instance's connectivity.
/// * The peering is removed rather than the connection, so the connection may
/// continue to exist on the service producer side. Google discourages removing
/// the peering as a routine deletion path for the same reason.
/// * Recreating the connection later may require the original allocated range
/// names, since a service producer that still tracks the previous connection can
/// reject a new one that uses different range identifiers.
///
/// For more detail, see
/// [Deleting a private connection](https://cloud.google.com/vpc/docs/configure-private-services-access#removing-connection).
///
/// ## Import
///
/// ServiceNetworkingConnection can be imported using any of these accepted formats
///
/// * `{{peering-network}}:{{service}}`
/// * `projects/{{project}}/global/networks/{{peering-network}}:{{service}}`
///
///
/// When using the `pulumi import` command, NAME_HERE can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:servicenetworking/connection:Connection default {{peering-network}}:{{service}}
/// $ pulumi import gcp:servicenetworking/connection:Connection default /projects/{{project}}/global/networks/{{peering-network}}:{{service}}
/// ```
class Connection extends pulumi.CustomResource {
  /// Whether Terraform will be prevented from destroying the resource. Defaults to "DELETE".
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API. The VPC
  /// peering created by the connection is left in place, which will block deletion
  /// of the network.
  /// When set to "REMOVE_PEERING", the connection is deleted, and if the API
  /// refuses because service producer resources still use it, the VPC peering is
  /// removed from the network so that the network can be deleted. See
  /// Deleting a connection below.
  /// When set to "DELETE" or any other value, deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// Name of VPC network connected with service producers using VPC peering.
  late final pulumi.Output<String> network;
  /// (Computed) The name of the VPC Network Peering connection that was created by the service producer.
  late final pulumi.Output<String> peering;
  /// Named IP address range(s) of PEERING type reserved for
  /// this service provider. Note that invoking this method with a different range when connection
  /// is already established will not reallocate already provisioned service producer subnetworks.
  late final pulumi.Output<List<String>> reservedPeeringRanges;
  /// Provider peering service that is managing peering connectivity for a
  /// service provider organization. For Google services that support this functionality it is
  /// 'servicenetworking.googleapis.com'.
  late final pulumi.Output<String> service;
  /// When set to true, enforce an update of the reserved peering ranges on the existing service networking connection in case of a new connection creation failure.
  late final pulumi.Output<bool?> updateOnCreationFail;

  /// Creates a new [Connection].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Connection]. {@macro pulumi_servicenetworking_connection_connection_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Connection(
    String name, {
    ConnectionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:servicenetworking/connection:Connection',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '10.1.1').merge(options),
        ) {
    deletionPolicy = registerOutput<String>('deletionPolicy');
    network = registerOutput<String>('network');
    peering = registerOutput<String>('peering');
    reservedPeeringRanges = registerOutput<List<String>>('reservedPeeringRanges', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    service = registerOutput<String>('service');
    updateOnCreationFail = registerOutput<bool?>('updateOnCreationFail');
  }

  /// Gets an existing [Connection] resource's state with the given [name] and [id].
  static Connection get(
    String name,
    pulumi.Input<String> id, {
    ConnectionState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return Connection._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  Connection._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:servicenetworking/connection:Connection',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    deletionPolicy = registerOutput<String>('deletionPolicy');
    network = registerOutput<String>('network');
    peering = registerOutput<String>('peering');
    reservedPeeringRanges = registerOutput<List<String>>('reservedPeeringRanges', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    service = registerOutput<String>('service');
    updateOnCreationFail = registerOutput<bool?>('updateOnCreationFail');
  }

  /// Creates a typed reference to an existing [Connection] resource.
  Connection.reference(String urn)
    : super(
        'gcp:servicenetworking/connection:Connection',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    deletionPolicy = registerOutput<String>('deletionPolicy');
    network = registerOutput<String>('network');
    peering = registerOutput<String>('peering');
    reservedPeeringRanges = registerOutput<List<String>>('reservedPeeringRanges', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    service = registerOutput<String>('service');
    updateOnCreationFail = registerOutput<bool?>('updateOnCreationFail');
  }
}
