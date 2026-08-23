import 'package:pulumi/pulumi.dart' as pulumi;
import 'express_route_connection_args.dart';
import 'express_route_connection_routing.dart';
import 'express_route_connection_state.dart';

/// Manages an Express Route Connection.
///
/// &gt; **Note:** The provider status of the Express Route Circuit must be set as provisioned while creating the Express Route Connection. See more details [here](https://docs.microsoft.com/azure/expressroute/expressroute-howto-circuit-portal-resource-manager#send-the-service-key-to-your-connectivity-provider-for-provisioning).
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
/// const exampleVirtualWan = new azure.network.VirtualWan("example", {
///     name: "example-vwan",
///     resourceGroupName: example.name,
///     location: example.location,
/// });
/// const exampleVirtualHub = new azure.network.VirtualHub("example", {
///     name: "example-vhub",
///     resourceGroupName: example.name,
///     location: example.location,
///     virtualWanId: exampleVirtualWan.id,
///     addressPrefix: "10.0.1.0/24",
/// });
/// const exampleExpressRouteGateway = new azure.network.ExpressRouteGateway("example", {
///     name: "example-expressroutegateway",
///     resourceGroupName: example.name,
///     location: example.location,
///     virtualHubId: exampleVirtualHub.id,
///     scaleUnits: 1,
/// });
/// const exampleExpressRoutePort = new azure.network.ExpressRoutePort("example", {
///     name: "example-erp",
///     resourceGroupName: example.name,
///     location: example.location,
///     peeringLocation: "Equinix-Seattle-SE2",
///     bandwidthInGbps: 10,
///     encapsulation: "Dot1Q",
/// });
/// const exampleExpressRouteCircuit = new azure.network.ExpressRouteCircuit("example", {
///     name: "example-erc",
///     location: example.location,
///     resourceGroupName: example.name,
///     expressRoutePortId: exampleExpressRoutePort.id,
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
///     secondaryPeerAddressPrefix: "192.168.2.0/30",
///     vlanId: 100,
/// });
/// const exampleExpressRouteConnection = new azure.network.ExpressRouteConnection("example", {
///     name: "example-expressrouteconn",
///     expressRouteGatewayId: exampleExpressRouteGateway.id,
///     expressRouteCircuitPeeringId: exampleExpressRouteCircuitPeering.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// example_virtual_wan = azure.network.VirtualWan("example",
///     name="example-vwan",
///     resource_group_name=example.name,
///     location=example.location)
/// example_virtual_hub = azure.network.VirtualHub("example",
///     name="example-vhub",
///     resource_group_name=example.name,
///     location=example.location,
///     virtual_wan_id=example_virtual_wan.id,
///     address_prefix="10.0.1.0/24")
/// example_express_route_gateway = azure.network.ExpressRouteGateway("example",
///     name="example-expressroutegateway",
///     resource_group_name=example.name,
///     location=example.location,
///     virtual_hub_id=example_virtual_hub.id,
///     scale_units=1)
/// example_express_route_port = azure.network.ExpressRoutePort("example",
///     name="example-erp",
///     resource_group_name=example.name,
///     location=example.location,
///     peering_location="Equinix-Seattle-SE2",
///     bandwidth_in_gbps=10,
///     encapsulation="Dot1Q")
/// example_express_route_circuit = azure.network.ExpressRouteCircuit("example",
///     name="example-erc",
///     location=example.location,
///     resource_group_name=example.name,
///     express_route_port_id=example_express_route_port.id,
///     bandwidth_in_gbps=float(5),
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
///     secondary_peer_address_prefix="192.168.2.0/30",
///     vlan_id=100)
/// example_express_route_connection = azure.network.ExpressRouteConnection("example",
///     name="example-expressrouteconn",
///     express_route_gateway_id=example_express_route_gateway.id,
///     express_route_circuit_peering_id=example_express_route_circuit_peering.id)
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
///     var exampleVirtualWan = new Azure.Network.VirtualWan("example", new()
///     {
///         Name = "example-vwan",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///     });
///
///     var exampleVirtualHub = new Azure.Network.VirtualHub("example", new()
///     {
///         Name = "example-vhub",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         VirtualWanId = exampleVirtualWan.Id,
///         AddressPrefix = "10.0.1.0/24",
///     });
///
///     var exampleExpressRouteGateway = new Azure.Network.ExpressRouteGateway("example", new()
///     {
///         Name = "example-expressroutegateway",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         VirtualHubId = exampleVirtualHub.Id,
///         ScaleUnits = 1,
///     });
///
///     var exampleExpressRoutePort = new Azure.Network.ExpressRoutePort("example", new()
///     {
///         Name = "example-erp",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         PeeringLocation = "Equinix-Seattle-SE2",
///         BandwidthInGbps = 10,
///         Encapsulation = "Dot1Q",
///     });
///
///     var exampleExpressRouteCircuit = new Azure.Network.ExpressRouteCircuit("example", new()
///     {
///         Name = "example-erc",
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
///     var exampleExpressRouteCircuitPeering = new Azure.Network.ExpressRouteCircuitPeering("example", new()
///     {
///         PeeringType = "AzurePrivatePeering",
///         ExpressRouteCircuitName = exampleExpressRouteCircuit.Name,
///         ResourceGroupName = example.Name,
///         SharedKey = "ItsASecret",
///         PeerAsn = 100,
///         PrimaryPeerAddressPrefix = "192.168.1.0/30",
///         SecondaryPeerAddressPrefix = "192.168.2.0/30",
///         VlanId = 100,
///     });
///
///     var exampleExpressRouteConnection = new Azure.Network.ExpressRouteConnection("example", new()
///     {
///         Name = "example-expressrouteconn",
///         ExpressRouteGatewayId = exampleExpressRouteGateway.Id,
///         ExpressRouteCircuitPeeringId = exampleExpressRouteCircuitPeering.Id,
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
/// 		exampleVirtualWan, err := network.NewVirtualWan(ctx, "example", &network.VirtualWanArgs{
/// 			Name:              pulumi.String("example-vwan"),
/// 			ResourceGroupName: example.Name,
/// 			Location:          example.Location,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleVirtualHub, err := network.NewVirtualHub(ctx, "example", &network.VirtualHubArgs{
/// 			Name:              pulumi.String("example-vhub"),
/// 			ResourceGroupName: example.Name,
/// 			Location:          example.Location,
/// 			VirtualWanId:      exampleVirtualWan.ID(),
/// 			AddressPrefix:     pulumi.String("10.0.1.0/24"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleExpressRouteGateway, err := network.NewExpressRouteGateway(ctx, "example", &network.ExpressRouteGatewayArgs{
/// 			Name:              pulumi.String("example-expressroutegateway"),
/// 			ResourceGroupName: example.Name,
/// 			Location:          example.Location,
/// 			VirtualHubId:      exampleVirtualHub.ID(),
/// 			ScaleUnits:        pulumi.Int(1),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleExpressRoutePort, err := network.NewExpressRoutePort(ctx, "example", &network.ExpressRoutePortArgs{
/// 			Name:              pulumi.String("example-erp"),
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
/// 			Name:               pulumi.String("example-erc"),
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
/// 		exampleExpressRouteCircuitPeering, err := network.NewExpressRouteCircuitPeering(ctx, "example", &network.ExpressRouteCircuitPeeringArgs{
/// 			PeeringType:                pulumi.String("AzurePrivatePeering"),
/// 			ExpressRouteCircuitName:    exampleExpressRouteCircuit.Name,
/// 			ResourceGroupName:          example.Name,
/// 			SharedKey:                  pulumi.String("ItsASecret"),
/// 			PeerAsn:                    pulumi.Int(100),
/// 			PrimaryPeerAddressPrefix:   pulumi.String("192.168.1.0/30"),
/// 			SecondaryPeerAddressPrefix: pulumi.String("192.168.2.0/30"),
/// 			VlanId:                     pulumi.Int(100),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = network.NewExpressRouteConnection(ctx, "example", &network.ExpressRouteConnectionArgs{
/// 			Name:                         pulumi.String("example-expressrouteconn"),
/// 			ExpressRouteGatewayId:        exampleExpressRouteGateway.ID(),
/// 			ExpressRouteCircuitPeeringId: exampleExpressRouteCircuitPeering.ID(),
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
///     azure = {
///       source = "pulumi/azure"
///     }
///   }
/// }
///
/// resource "azure_core_resourcegroup" "example" {
///   name     = "example-resources"
///   location = "West Europe"
/// }
/// resource "azure_network_virtualwan" "example" {
///   name                = "example-vwan"
///   resource_group_name = azure_core_resourcegroup.example.name
///   location            = azure_core_resourcegroup.example.location
/// }
/// resource "azure_network_virtualhub" "example" {
///   name                = "example-vhub"
///   resource_group_name = azure_core_resourcegroup.example.name
///   location            = azure_core_resourcegroup.example.location
///   virtual_wan_id      = azure_network_virtualwan.example.id
///   address_prefix      = "10.0.1.0/24"
/// }
/// resource "azure_network_expressroutegateway" "example" {
///   name                = "example-expressroutegateway"
///   resource_group_name = azure_core_resourcegroup.example.name
///   location            = azure_core_resourcegroup.example.location
///   virtual_hub_id      = azure_network_virtualhub.example.id
///   scale_units         = 1
/// }
/// resource "azure_network_expressrouteport" "example" {
///   name                = "example-erp"
///   resource_group_name = azure_core_resourcegroup.example.name
///   location            = azure_core_resourcegroup.example.location
///   peering_location    = "Equinix-Seattle-SE2"
///   bandwidth_in_gbps   = 10
///   encapsulation       = "Dot1Q"
/// }
/// resource "azure_network_expressroutecircuit" "example" {
///   name                  = "example-erc"
///   location              = azure_core_resourcegroup.example.location
///   resource_group_name   = azure_core_resourcegroup.example.name
///   express_route_port_id = azure_network_expressrouteport.example.id
///   bandwidth_in_gbps     = 5
///   sku = {
///     tier   = "Standard"
///     family = "MeteredData"
///   }
/// }
/// resource "azure_network_expressroutecircuitpeering" "example" {
///   peering_type                  = "AzurePrivatePeering"
///   express_route_circuit_name    = azure_network_expressroutecircuit.example.name
///   resource_group_name           = azure_core_resourcegroup.example.name
///   shared_key                    = "ItsASecret"
///   peer_asn                      = 100
///   primary_peer_address_prefix   = "192.168.1.0/30"
///   secondary_peer_address_prefix = "192.168.2.0/30"
///   vlan_id                       = 100
/// }
/// resource "azure_network_expressrouteconnection" "example" {
///   name                             = "example-expressrouteconn"
///   express_route_gateway_id         = azure_network_expressroutegateway.example.id
///   express_route_circuit_peering_id = azure_network_expressroutecircuitpeering.example.id
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
/// import com.pulumi.azure.network.VirtualWan;
/// import com.pulumi.azure.network.VirtualWanArgs;
/// import com.pulumi.azure.network.VirtualHub;
/// import com.pulumi.azure.network.VirtualHubArgs;
/// import com.pulumi.azure.network.ExpressRouteGateway;
/// import com.pulumi.azure.network.ExpressRouteGatewayArgs;
/// import com.pulumi.azure.network.ExpressRoutePort;
/// import com.pulumi.azure.network.ExpressRoutePortArgs;
/// import com.pulumi.azure.network.ExpressRouteCircuit;
/// import com.pulumi.azure.network.ExpressRouteCircuitArgs;
/// import com.pulumi.azure.network.inputs.ExpressRouteCircuitSkuArgs;
/// import com.pulumi.azure.network.ExpressRouteCircuitPeering;
/// import com.pulumi.azure.network.ExpressRouteCircuitPeeringArgs;
/// import com.pulumi.azure.network.ExpressRouteConnection;
/// import com.pulumi.azure.network.ExpressRouteConnectionArgs;
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
///         var example = new ResourceGroup("example", ResourceGroupArgs.builder()
///             .name("example-resources")
///             .location("West Europe")
///             .build());
///
///         var exampleVirtualWan = new VirtualWan("exampleVirtualWan", VirtualWanArgs.builder()
///             .name("example-vwan")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .build());
///
///         var exampleVirtualHub = new VirtualHub("exampleVirtualHub", VirtualHubArgs.builder()
///             .name("example-vhub")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .virtualWanId(exampleVirtualWan.id())
///             .addressPrefix("10.0.1.0/24")
///             .build());
///
///         var exampleExpressRouteGateway = new ExpressRouteGateway("exampleExpressRouteGateway", ExpressRouteGatewayArgs.builder()
///             .name("example-expressroutegateway")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .virtualHubId(exampleVirtualHub.id())
///             .scaleUnits(1)
///             .build());
///
///         var exampleExpressRoutePort = new ExpressRoutePort("exampleExpressRoutePort", ExpressRoutePortArgs.builder()
///             .name("example-erp")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .peeringLocation("Equinix-Seattle-SE2")
///             .bandwidthInGbps(10)
///             .encapsulation("Dot1Q")
///             .build());
///
///         var exampleExpressRouteCircuit = new ExpressRouteCircuit("exampleExpressRouteCircuit", ExpressRouteCircuitArgs.builder()
///             .name("example-erc")
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
///         var exampleExpressRouteCircuitPeering = new ExpressRouteCircuitPeering("exampleExpressRouteCircuitPeering", ExpressRouteCircuitPeeringArgs.builder()
///             .peeringType("AzurePrivatePeering")
///             .expressRouteCircuitName(exampleExpressRouteCircuit.name())
///             .resourceGroupName(example.name())
///             .sharedKey("ItsASecret")
///             .peerAsn(100)
///             .primaryPeerAddressPrefix("192.168.1.0/30")
///             .secondaryPeerAddressPrefix("192.168.2.0/30")
///             .vlanId(100)
///             .build());
///
///         var exampleExpressRouteConnection = new ExpressRouteConnection("exampleExpressRouteConnection", ExpressRouteConnectionArgs.builder()
///             .name("example-expressrouteconn")
///             .expressRouteGatewayId(exampleExpressRouteGateway.id())
///             .expressRouteCircuitPeeringId(exampleExpressRouteCircuitPeering.id())
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
///   exampleVirtualWan:
///     type: azure:network:VirtualWan
///     name: example
///     properties:
///       name: example-vwan
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///   exampleVirtualHub:
///     type: azure:network:VirtualHub
///     name: example
///     properties:
///       name: example-vhub
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       virtualWanId: ${exampleVirtualWan.id}
///       addressPrefix: 10.0.1.0/24
///   exampleExpressRouteGateway:
///     type: azure:network:ExpressRouteGateway
///     name: example
///     properties:
///       name: example-expressroutegateway
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       virtualHubId: ${exampleVirtualHub.id}
///       scaleUnits: 1
///   exampleExpressRoutePort:
///     type: azure:network:ExpressRoutePort
///     name: example
///     properties:
///       name: example-erp
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       peeringLocation: Equinix-Seattle-SE2
///       bandwidthInGbps: 10
///       encapsulation: Dot1Q
///   exampleExpressRouteCircuit:
///     type: azure:network:ExpressRouteCircuit
///     name: example
///     properties:
///       name: example-erc
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       expressRoutePortId: ${exampleExpressRoutePort.id}
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
///       secondaryPeerAddressPrefix: 192.168.2.0/30
///       vlanId: 100
///   exampleExpressRouteConnection:
///     type: azure:network:ExpressRouteConnection
///     name: example
///     properties:
///       name: example-expressrouteconn
///       expressRouteGatewayId: ${exampleExpressRouteGateway.id}
///       expressRouteCircuitPeeringId: ${exampleExpressRouteCircuitPeering.id}
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
/// Express Route Connections can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:network/expressRouteConnection:ExpressRouteConnection example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.Network/expressRouteGateways/expressRouteGateway1/expressRouteConnections/connection1
/// ```
class ExpressRouteConnection extends pulumi.CustomResource {
  /// The authorization key to establish the Express Route Connection.
  late final pulumi.Output<String?> authorizationKey;
  late final pulumi.Output<bool> enableInternetSecurity;
  /// The ID of the Express Route Circuit Peering that this Express Route Connection connects with. Changing this forces a new resource to be created.
  late final pulumi.Output<String> expressRouteCircuitPeeringId;
  /// Specified whether Fast Path is enabled for Virtual Wan Firewall Hub. Defaults to `false`.
  late final pulumi.Output<bool?> expressRouteGatewayBypassEnabled;
  /// The ID of the Express Route Gateway that this Express Route Connection connects with. Changing this forces a new resource to be created.
  late final pulumi.Output<String> expressRouteGatewayId;
  /// Is Internet security enabled for this Express Route Connection? Defaults to `false`.
  late final pulumi.Output<bool> internetSecurityEnabled;
  /// The name which should be used for this Express Route Connection. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  late final pulumi.Output<bool?> privateLinkFastPathEnabled;
  /// A `routing` block as defined below.
  late final pulumi.Output<ExpressRouteConnectionRouting> routing;
  /// The routing weight associated to the Express Route Connection. Possible value is between `0` and `32000`. Defaults to `0`.
  late final pulumi.Output<int?> routingWeight;

  /// Creates a new [ExpressRouteConnection].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ExpressRouteConnection]. {@macro pulumi_network_express_route_connection_express_route_connection_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ExpressRouteConnection(
    String name, {
    ExpressRouteConnectionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:network/expressRouteConnection:ExpressRouteConnection',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    authorizationKey = registerOutput<String?>('authorizationKey');
    enableInternetSecurity = registerOutput<bool>('enableInternetSecurity');
    expressRouteCircuitPeeringId = registerOutput<String>('expressRouteCircuitPeeringId');
    expressRouteGatewayBypassEnabled = registerOutput<bool?>('expressRouteGatewayBypassEnabled');
    expressRouteGatewayId = registerOutput<String>('expressRouteGatewayId');
    internetSecurityEnabled = registerOutput<bool>('internetSecurityEnabled');
    this.name = registerOutput<String>('name');
    privateLinkFastPathEnabled = registerOutput<bool?>('privateLinkFastPathEnabled');
    routing = registerOutput<ExpressRouteConnectionRouting>('routing', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ExpressRouteConnectionRouting.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    routingWeight = registerOutput<int?>('routingWeight');
  }

  /// Gets an existing [ExpressRouteConnection] resource's state with the given [name] and [id].
  static ExpressRouteConnection get(
    String name,
    pulumi.Input<String> id, {
    ExpressRouteConnectionState? state,
  }) {
    return ExpressRouteConnection._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ExpressRouteConnection._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:network/expressRouteConnection:ExpressRouteConnection',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    authorizationKey = registerOutput<String?>('authorizationKey');
    enableInternetSecurity = registerOutput<bool>('enableInternetSecurity');
    expressRouteCircuitPeeringId = registerOutput<String>('expressRouteCircuitPeeringId');
    expressRouteGatewayBypassEnabled = registerOutput<bool?>('expressRouteGatewayBypassEnabled');
    expressRouteGatewayId = registerOutput<String>('expressRouteGatewayId');
    internetSecurityEnabled = registerOutput<bool>('internetSecurityEnabled');
    this.name = registerOutput<String>('name');
    privateLinkFastPathEnabled = registerOutput<bool?>('privateLinkFastPathEnabled');
    routing = registerOutput<ExpressRouteConnectionRouting>('routing', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ExpressRouteConnectionRouting.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    routingWeight = registerOutput<int?>('routingWeight');
  }
}
