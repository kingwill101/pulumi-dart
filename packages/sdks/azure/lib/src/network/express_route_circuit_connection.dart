import 'package:pulumi/pulumi.dart' as pulumi;
import 'express_route_circuit_connection_args.dart';
import 'express_route_circuit_connection_state.dart';

/// Manages an Express Route Circuit Connection.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "example-resources",
///     location: "West Europe",
/// });
/// const exampleExpressRoutePort = new azure.network.ExpressRoutePort("example", {
///     name: "example-erport",
///     resourceGroupName: example.name,
///     location: example.location,
///     peeringLocation: "Equinix-Seattle-SE2",
///     bandwidthInGbps: 10,
///     encapsulation: "Dot1Q",
/// });
/// const exampleExpressRouteCircuit = new azure.network.ExpressRouteCircuit("example", {
///     name: "example-ercircuit",
///     location: example.location,
///     resourceGroupName: example.name,
///     expressRoutePortId: exampleExpressRoutePort.id,
///     bandwidthInGbps: 5,
///     sku: {
///         tier: "Standard",
///         family: "MeteredData",
///     },
/// });
/// const example2 = new azure.network.ExpressRoutePort("example2", {
///     name: "example-erport2",
///     resourceGroupName: example.name,
///     location: example.location,
///     peeringLocation: "Allied-Toronto-King-West",
///     bandwidthInGbps: 10,
///     encapsulation: "Dot1Q",
/// });
/// const example2ExpressRouteCircuit = new azure.network.ExpressRouteCircuit("example2", {
///     name: "example-ercircuit2",
///     location: example.location,
///     resourceGroupName: example.name,
///     expressRoutePortId: example2.id,
///     bandwidthInGbps: 5,
///     sku: {
///         tier: "Standard",
///         family: "MeteredData",
///     },
/// });
/// const exampleExpressRouteCircuitPeering = new azure.network.ExpressRouteCircuitPeering("example", {
///     peeringType: "AzurePrivatePeering",
///     expressRouteCircuitName: exampleExpressRouteCircuit.name,
///     resourceGroupName: example.name,
///     sharedKey: "ItsASecret",
///     peerAsn: 100,
///     primaryPeerAddressPrefix: "192.168.1.0/30",
///     secondaryPeerAddressPrefix: "192.168.1.0/30",
///     vlanId: 100,
/// });
/// const example2ExpressRouteCircuitPeering = new azure.network.ExpressRouteCircuitPeering("example2", {
///     peeringType: "AzurePrivatePeering",
///     expressRouteCircuitName: example2ExpressRouteCircuit.name,
///     resourceGroupName: example.name,
///     sharedKey: "ItsASecret",
///     peerAsn: 100,
///     primaryPeerAddressPrefix: "192.168.1.0/30",
///     secondaryPeerAddressPrefix: "192.168.1.0/30",
///     vlanId: 100,
/// });
/// const exampleExpressRouteCircuitConnection = new azure.network.ExpressRouteCircuitConnection("example", {
///     name: "example-ercircuitconnection",
///     peeringId: exampleExpressRouteCircuitPeering.id,
///     peerPeeringId: example2ExpressRouteCircuitPeering.id,
///     addressPrefixIpv4: "192.169.9.0/29",
///     authorizationKey: "846a1918-b7a2-4917-b43c-8c4cdaee006a",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// example_express_route_port = azure.network.ExpressRoutePort("example",
///     name="example-erport",
///     resource_group_name=example.name,
///     location=example.location,
///     peering_location="Equinix-Seattle-SE2",
///     bandwidth_in_gbps=10,
///     encapsulation="Dot1Q")
/// example_express_route_circuit = azure.network.ExpressRouteCircuit("example",
///     name="example-ercircuit",
///     location=example.location,
///     resource_group_name=example.name,
///     express_route_port_id=example_express_route_port.id,
///     bandwidth_in_gbps=5,
///     sku={
///         "tier": "Standard",
///         "family": "MeteredData",
///     })
/// example2 = azure.network.ExpressRoutePort("example2",
///     name="example-erport2",
///     resource_group_name=example.name,
///     location=example.location,
///     peering_location="Allied-Toronto-King-West",
///     bandwidth_in_gbps=10,
///     encapsulation="Dot1Q")
/// example2_express_route_circuit = azure.network.ExpressRouteCircuit("example2",
///     name="example-ercircuit2",
///     location=example.location,
///     resource_group_name=example.name,
///     express_route_port_id=example2.id,
///     bandwidth_in_gbps=5,
///     sku={
///         "tier": "Standard",
///         "family": "MeteredData",
///     })
/// example_express_route_circuit_peering = azure.network.ExpressRouteCircuitPeering("example",
///     peering_type="AzurePrivatePeering",
///     express_route_circuit_name=example_express_route_circuit.name,
///     resource_group_name=example.name,
///     shared_key="ItsASecret",
///     peer_asn=100,
///     primary_peer_address_prefix="192.168.1.0/30",
///     secondary_peer_address_prefix="192.168.1.0/30",
///     vlan_id=100)
/// example2_express_route_circuit_peering = azure.network.ExpressRouteCircuitPeering("example2",
///     peering_type="AzurePrivatePeering",
///     express_route_circuit_name=example2_express_route_circuit.name,
///     resource_group_name=example.name,
///     shared_key="ItsASecret",
///     peer_asn=100,
///     primary_peer_address_prefix="192.168.1.0/30",
///     secondary_peer_address_prefix="192.168.1.0/30",
///     vlan_id=100)
/// example_express_route_circuit_connection = azure.network.ExpressRouteCircuitConnection("example",
///     name="example-ercircuitconnection",
///     peering_id=example_express_route_circuit_peering.id,
///     peer_peering_id=example2_express_route_circuit_peering.id,
///     address_prefix_ipv4="192.169.9.0/29",
///     authorization_key="846a1918-b7a2-4917-b43c-8c4cdaee006a")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Azure.Core.ResourceGroup("example", new()
///     {
///         Name = "example-resources",
///         Location = "West Europe",
///     });
///
///     var exampleExpressRoutePort = new Azure.Network.ExpressRoutePort("example", new()
///     {
///         Name = "example-erport",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         PeeringLocation = "Equinix-Seattle-SE2",
///         BandwidthInGbps = 10,
///         Encapsulation = "Dot1Q",
///     });
///
///     var exampleExpressRouteCircuit = new Azure.Network.ExpressRouteCircuit("example", new()
///     {
///         Name = "example-ercircuit",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         ExpressRoutePortId = exampleExpressRoutePort.Id,
///         BandwidthInGbps = 5,
///         Sku = new Azure.Network.Inputs.ExpressRouteCircuitSkuArgs
///         {
///             Tier = "Standard",
///             Family = "MeteredData",
///         },
///     });
///
///     var example2 = new Azure.Network.ExpressRoutePort("example2", new()
///     {
///         Name = "example-erport2",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         PeeringLocation = "Allied-Toronto-King-West",
///         BandwidthInGbps = 10,
///         Encapsulation = "Dot1Q",
///     });
///
///     var example2ExpressRouteCircuit = new Azure.Network.ExpressRouteCircuit("example2", new()
///     {
///         Name = "example-ercircuit2",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         ExpressRoutePortId = example2.Id,
///         BandwidthInGbps = 5,
///         Sku = new Azure.Network.Inputs.ExpressRouteCircuitSkuArgs
///         {
///             Tier = "Standard",
///             Family = "MeteredData",
///         },
///     });
///
///     var exampleExpressRouteCircuitPeering = new Azure.Network.ExpressRouteCircuitPeering("example", new()
///     {
///         PeeringType = "AzurePrivatePeering",
///         ExpressRouteCircuitName = exampleExpressRouteCircuit.Name,
///         ResourceGroupName = example.Name,
///         SharedKey = "ItsASecret",
///         PeerAsn = 100,
///         PrimaryPeerAddressPrefix = "192.168.1.0/30",
///         SecondaryPeerAddressPrefix = "192.168.1.0/30",
///         VlanId = 100,
///     });
///
///     var example2ExpressRouteCircuitPeering = new Azure.Network.ExpressRouteCircuitPeering("example2", new()
///     {
///         PeeringType = "AzurePrivatePeering",
///         ExpressRouteCircuitName = example2ExpressRouteCircuit.Name,
///         ResourceGroupName = example.Name,
///         SharedKey = "ItsASecret",
///         PeerAsn = 100,
///         PrimaryPeerAddressPrefix = "192.168.1.0/30",
///         SecondaryPeerAddressPrefix = "192.168.1.0/30",
///         VlanId = 100,
///     });
///
///     var exampleExpressRouteCircuitConnection = new Azure.Network.ExpressRouteCircuitConnection("example", new()
///     {
///         Name = "example-ercircuitconnection",
///         PeeringId = exampleExpressRouteCircuitPeering.Id,
///         PeerPeeringId = example2ExpressRouteCircuitPeering.Id,
///         AddressPrefixIpv4 = "192.169.9.0/29",
///         AuthorizationKey = "846a1918-b7a2-4917-b43c-8c4cdaee006a",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/network"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("example-resources"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleExpressRoutePort, err := network.NewExpressRoutePort(ctx, "example", &network.ExpressRoutePortArgs{
/// 			Name:              pulumi.String("example-erport"),
/// 			ResourceGroupName: example.Name,
/// 			Location:          example.Location,
/// 			PeeringLocation:   pulumi.String("Equinix-Seattle-SE2"),
/// 			BandwidthInGbps:   pulumi.Int(10),
/// 			Encapsulation:     pulumi.String("Dot1Q"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleExpressRouteCircuit, err := network.NewExpressRouteCircuit(ctx, "example", &network.ExpressRouteCircuitArgs{
/// 			Name:               pulumi.String("example-ercircuit"),
/// 			Location:           example.Location,
/// 			ResourceGroupName:  example.Name,
/// 			ExpressRoutePortId: exampleExpressRoutePort.ID(),
/// 			BandwidthInGbps:    pulumi.Float64(5),
/// 			Sku: &network.ExpressRouteCircuitSkuArgs{
/// 				Tier:   pulumi.String("Standard"),
/// 				Family: pulumi.String("MeteredData"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		example2, err := network.NewExpressRoutePort(ctx, "example2", &network.ExpressRoutePortArgs{
/// 			Name:              pulumi.String("example-erport2"),
/// 			ResourceGroupName: example.Name,
/// 			Location:          example.Location,
/// 			PeeringLocation:   pulumi.String("Allied-Toronto-King-West"),
/// 			BandwidthInGbps:   pulumi.Int(10),
/// 			Encapsulation:     pulumi.String("Dot1Q"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		example2ExpressRouteCircuit, err := network.NewExpressRouteCircuit(ctx, "example2", &network.ExpressRouteCircuitArgs{
/// 			Name:               pulumi.String("example-ercircuit2"),
/// 			Location:           example.Location,
/// 			ResourceGroupName:  example.Name,
/// 			ExpressRoutePortId: example2.ID(),
/// 			BandwidthInGbps:    pulumi.Float64(5),
/// 			Sku: &network.ExpressRouteCircuitSkuArgs{
/// 				Tier:   pulumi.String("Standard"),
/// 				Family: pulumi.String("MeteredData"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleExpressRouteCircuitPeering, err := network.NewExpressRouteCircuitPeering(ctx, "example", &network.ExpressRouteCircuitPeeringArgs{
/// 			PeeringType:                pulumi.String("AzurePrivatePeering"),
/// 			ExpressRouteCircuitName:    exampleExpressRouteCircuit.Name,
/// 			ResourceGroupName:          example.Name,
/// 			SharedKey:                  pulumi.String("ItsASecret"),
/// 			PeerAsn:                    pulumi.Int(100),
/// 			PrimaryPeerAddressPrefix:   pulumi.String("192.168.1.0/30"),
/// 			SecondaryPeerAddressPrefix: pulumi.String("192.168.1.0/30"),
/// 			VlanId:                     pulumi.Int(100),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		example2ExpressRouteCircuitPeering, err := network.NewExpressRouteCircuitPeering(ctx, "example2", &network.ExpressRouteCircuitPeeringArgs{
/// 			PeeringType:                pulumi.String("AzurePrivatePeering"),
/// 			ExpressRouteCircuitName:    example2ExpressRouteCircuit.Name,
/// 			ResourceGroupName:          example.Name,
/// 			SharedKey:                  pulumi.String("ItsASecret"),
/// 			PeerAsn:                    pulumi.Int(100),
/// 			PrimaryPeerAddressPrefix:   pulumi.String("192.168.1.0/30"),
/// 			SecondaryPeerAddressPrefix: pulumi.String("192.168.1.0/30"),
/// 			VlanId:                     pulumi.Int(100),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = network.NewExpressRouteCircuitConnection(ctx, "example", &network.ExpressRouteCircuitConnectionArgs{
/// 			Name:              pulumi.String("example-ercircuitconnection"),
/// 			PeeringId:         exampleExpressRouteCircuitPeering.ID(),
/// 			PeerPeeringId:     example2ExpressRouteCircuitPeering.ID(),
/// 			AddressPrefixIpv4: pulumi.String("192.169.9.0/29"),
/// 			AuthorizationKey:  pulumi.String("846a1918-b7a2-4917-b43c-8c4cdaee006a"),
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
/// import com.pulumi.azure.core.ResourceGroup;
/// import com.pulumi.azure.core.ResourceGroupArgs;
/// import com.pulumi.azure.network.ExpressRoutePort;
/// import com.pulumi.azure.network.ExpressRoutePortArgs;
/// import com.pulumi.azure.network.ExpressRouteCircuit;
/// import com.pulumi.azure.network.ExpressRouteCircuitArgs;
/// import com.pulumi.azure.network.inputs.ExpressRouteCircuitSkuArgs;
/// import com.pulumi.azure.network.ExpressRouteCircuitPeering;
/// import com.pulumi.azure.network.ExpressRouteCircuitPeeringArgs;
/// import com.pulumi.azure.network.ExpressRouteCircuitConnection;
/// import com.pulumi.azure.network.ExpressRouteCircuitConnectionArgs;
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
///         var example = new ResourceGroup("example", ResourceGroupArgs.builder()
///             .name("example-resources")
///             .location("West Europe")
///             .build());
///
///         var exampleExpressRoutePort = new ExpressRoutePort("exampleExpressRoutePort", ExpressRoutePortArgs.builder()
///             .name("example-erport")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .peeringLocation("Equinix-Seattle-SE2")
///             .bandwidthInGbps(10)
///             .encapsulation("Dot1Q")
///             .build());
///
///         var exampleExpressRouteCircuit = new ExpressRouteCircuit("exampleExpressRouteCircuit", ExpressRouteCircuitArgs.builder()
///             .name("example-ercircuit")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .expressRoutePortId(exampleExpressRoutePort.id())
///             .bandwidthInGbps(5.0)
///             .sku(ExpressRouteCircuitSkuArgs.builder()
///                 .tier("Standard")
///                 .family("MeteredData")
///                 .build())
///             .build());
///
///         var example2 = new ExpressRoutePort("example2", ExpressRoutePortArgs.builder()
///             .name("example-erport2")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .peeringLocation("Allied-Toronto-King-West")
///             .bandwidthInGbps(10)
///             .encapsulation("Dot1Q")
///             .build());
///
///         var example2ExpressRouteCircuit = new ExpressRouteCircuit("example2ExpressRouteCircuit", ExpressRouteCircuitArgs.builder()
///             .name("example-ercircuit2")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .expressRoutePortId(example2.id())
///             .bandwidthInGbps(5.0)
///             .sku(ExpressRouteCircuitSkuArgs.builder()
///                 .tier("Standard")
///                 .family("MeteredData")
///                 .build())
///             .build());
///
///         var exampleExpressRouteCircuitPeering = new ExpressRouteCircuitPeering("exampleExpressRouteCircuitPeering", ExpressRouteCircuitPeeringArgs.builder()
///             .peeringType("AzurePrivatePeering")
///             .expressRouteCircuitName(exampleExpressRouteCircuit.name())
///             .resourceGroupName(example.name())
///             .sharedKey("ItsASecret")
///             .peerAsn(100)
///             .primaryPeerAddressPrefix("192.168.1.0/30")
///             .secondaryPeerAddressPrefix("192.168.1.0/30")
///             .vlanId(100)
///             .build());
///
///         var example2ExpressRouteCircuitPeering = new ExpressRouteCircuitPeering("example2ExpressRouteCircuitPeering", ExpressRouteCircuitPeeringArgs.builder()
///             .peeringType("AzurePrivatePeering")
///             .expressRouteCircuitName(example2ExpressRouteCircuit.name())
///             .resourceGroupName(example.name())
///             .sharedKey("ItsASecret")
///             .peerAsn(100)
///             .primaryPeerAddressPrefix("192.168.1.0/30")
///             .secondaryPeerAddressPrefix("192.168.1.0/30")
///             .vlanId(100)
///             .build());
///
///         var exampleExpressRouteCircuitConnection = new ExpressRouteCircuitConnection("exampleExpressRouteCircuitConnection", ExpressRouteCircuitConnectionArgs.builder()
///             .name("example-ercircuitconnection")
///             .peeringId(exampleExpressRouteCircuitPeering.id())
///             .peerPeeringId(example2ExpressRouteCircuitPeering.id())
///             .addressPrefixIpv4("192.169.9.0/29")
///             .authorizationKey("846a1918-b7a2-4917-b43c-8c4cdaee006a")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: azure:core:ResourceGroup
///     properties:
///       name: example-resources
///       location: West Europe
///   exampleExpressRoutePort:
///     type: azure:network:ExpressRoutePort
///     name: example
///     properties:
///       name: example-erport
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       peeringLocation: Equinix-Seattle-SE2
///       bandwidthInGbps: 10
///       encapsulation: Dot1Q
///   exampleExpressRouteCircuit:
///     type: azure:network:ExpressRouteCircuit
///     name: example
///     properties:
///       name: example-ercircuit
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       expressRoutePortId: ${exampleExpressRoutePort.id}
///       bandwidthInGbps: 5
///       sku:
///         tier: Standard
///         family: MeteredData
///   example2:
///     type: azure:network:ExpressRoutePort
///     properties:
///       name: example-erport2
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       peeringLocation: Allied-Toronto-King-West
///       bandwidthInGbps: 10
///       encapsulation: Dot1Q
///   example2ExpressRouteCircuit:
///     type: azure:network:ExpressRouteCircuit
///     name: example2
///     properties:
///       name: example-ercircuit2
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       expressRoutePortId: ${example2.id}
///       bandwidthInGbps: 5
///       sku:
///         tier: Standard
///         family: MeteredData
///   exampleExpressRouteCircuitPeering:
///     type: azure:network:ExpressRouteCircuitPeering
///     name: example
///     properties:
///       peeringType: AzurePrivatePeering
///       expressRouteCircuitName: ${exampleExpressRouteCircuit.name}
///       resourceGroupName: ${example.name}
///       sharedKey: ItsASecret
///       peerAsn: 100
///       primaryPeerAddressPrefix: 192.168.1.0/30
///       secondaryPeerAddressPrefix: 192.168.1.0/30
///       vlanId: 100
///   example2ExpressRouteCircuitPeering:
///     type: azure:network:ExpressRouteCircuitPeering
///     name: example2
///     properties:
///       peeringType: AzurePrivatePeering
///       expressRouteCircuitName: ${example2ExpressRouteCircuit.name}
///       resourceGroupName: ${example.name}
///       sharedKey: ItsASecret
///       peerAsn: 100
///       primaryPeerAddressPrefix: 192.168.1.0/30
///       secondaryPeerAddressPrefix: 192.168.1.0/30
///       vlanId: 100
///   exampleExpressRouteCircuitConnection:
///     type: azure:network:ExpressRouteCircuitConnection
///     name: example
///     properties:
///       name: example-ercircuitconnection
///       peeringId: ${exampleExpressRouteCircuitPeering.id}
///       peerPeeringId: ${example2ExpressRouteCircuitPeering.id}
///       addressPrefixIpv4: 192.169.9.0/29
///       authorizationKey: 846a1918-b7a2-4917-b43c-8c4cdaee006a
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.Network` - 2025-01-01
///
/// ## Import
///
/// Express Route Circuit Connections can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:network/expressRouteCircuitConnection:ExpressRouteCircuitConnection example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.Network/expressRouteCircuits/circuit1/peerings/peering1/connections/connection1
/// ```
class ExpressRouteCircuitConnection extends pulumi.CustomResource {
  /// The IPv4 address space from which to allocate customer address for global reach. Changing this forces a new Express Route Circuit Connection to be created.
  late final pulumi.Output<String> addressPrefixIpv4;
  /// The IPv6 address space from which to allocate customer addresses for global reach.
  ///
  /// &gt; **Note:** `address_prefix_ipv6` cannot be set when ExpressRoute Circuit Connection with ExpressRoute Circuit based on ExpressRoute Port.
  late final pulumi.Output<String?> addressPrefixIpv6;
  /// The authorization key which is associated with the Express Route Circuit Connection.
  late final pulumi.Output<String?> authorizationKey;
  /// The name which should be used for this Express Route Circuit Connection. Changing this forces a new Express Route Circuit Connection to be created.
  late final pulumi.Output<String> name;
  /// The ID of the peered Express Route Circuit Private Peering. Changing this forces a new Express Route Circuit Connection to be created.
  late final pulumi.Output<String> peerPeeringId;
  /// The ID of the Express Route Circuit Private Peering that this Express Route Circuit Connection connects with. Changing this forces a new Express Route Circuit Connection to be created.
  late final pulumi.Output<String> peeringId;

  /// Creates a new [ExpressRouteCircuitConnection].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ExpressRouteCircuitConnection]. {@macro pulumi_network_express_route_circuit_connection_express_route_circuit_connection_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ExpressRouteCircuitConnection(
    String name, {
    ExpressRouteCircuitConnectionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:network/expressRouteCircuitConnection:ExpressRouteCircuitConnection',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    addressPrefixIpv4 = registerOutput<String>('addressPrefixIpv4');
    addressPrefixIpv6 = registerOutput<String?>('addressPrefixIpv6');
    authorizationKey = registerOutput<String?>('authorizationKey');
    this.name = registerOutput<String>('name');
    peerPeeringId = registerOutput<String>('peerPeeringId');
    peeringId = registerOutput<String>('peeringId');
  }

  /// Gets an existing [ExpressRouteCircuitConnection] resource's state with the given [name] and [id].
  static ExpressRouteCircuitConnection get(
    String name,
    pulumi.Input<String> id, {
    ExpressRouteCircuitConnectionState? state,
  }) {
    return ExpressRouteCircuitConnection._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ExpressRouteCircuitConnection._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:network/expressRouteCircuitConnection:ExpressRouteCircuitConnection',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    addressPrefixIpv4 = registerOutput<String>('addressPrefixIpv4');
    addressPrefixIpv6 = registerOutput<String?>('addressPrefixIpv6');
    authorizationKey = registerOutput<String?>('authorizationKey');
    this.name = registerOutput<String>('name');
    peerPeeringId = registerOutput<String>('peerPeeringId');
    peeringId = registerOutput<String>('peeringId');
  }
}
