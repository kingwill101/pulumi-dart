import 'package:pulumi/pulumi.dart' as pulumi;
import 'express_route_circuit_peering_args.dart';
import 'express_route_circuit_peering_ipv6.dart';
import 'express_route_circuit_peering_microsoft_peering_config.dart';
import 'express_route_circuit_peering_state.dart';

/// Manages an ExpressRoute Circuit Peering.
///
/// ## Example Usage
///
/// ### Creating A Microsoft Peering)
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "exprtTest",
///     location: "West Europe",
/// });
/// const exampleExpressRouteCircuit = new azure.network.ExpressRouteCircuit("example", {
///     name: "expressRoute1",
///     resourceGroupName: example.name,
///     location: example.location,
///     serviceProviderName: "Equinix",
///     peeringLocation: "Silicon Valley",
///     bandwidthInMbps: 50,
///     sku: {
///         tier: "Standard",
///         family: "MeteredData",
///     },
///     allowClassicOperations: false,
///     tags: {
///         environment: "Production",
///     },
/// });
/// const exampleExpressRouteCircuitPeering = new azure.network.ExpressRouteCircuitPeering("example", {
///     peeringType: "MicrosoftPeering",
///     expressRouteCircuitName: exampleExpressRouteCircuit.name,
///     resourceGroupName: example.name,
///     peerAsn: 100,
///     primaryPeerAddressPrefix: "123.0.0.0/30",
///     secondaryPeerAddressPrefix: "123.0.0.4/30",
///     ipv4Enabled: true,
///     vlanId: 300,
///     microsoftPeeringConfig: {
///         advertisedPublicPrefixes: ["123.1.0.0/24"],
///     },
///     ipv6: {
///         primaryPeerAddressPrefix: "2002:db01::/126",
///         secondaryPeerAddressPrefix: "2003:db01::/126",
///         enabled: true,
///         microsoftPeering: {
///             advertisedPublicPrefixes: ["2002:db01::/126"],
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="exprtTest",
///     location="West Europe")
/// example_express_route_circuit = azure.network.ExpressRouteCircuit("example",
///     name="expressRoute1",
///     resource_group_name=example.name,
///     location=example.location,
///     service_provider_name="Equinix",
///     peering_location="Silicon Valley",
///     bandwidth_in_mbps=50,
///     sku={
///         "tier": "Standard",
///         "family": "MeteredData",
///     },
///     allow_classic_operations=False,
///     tags={
///         "environment": "Production",
///     })
/// example_express_route_circuit_peering = azure.network.ExpressRouteCircuitPeering("example",
///     peering_type="MicrosoftPeering",
///     express_route_circuit_name=example_express_route_circuit.name,
///     resource_group_name=example.name,
///     peer_asn=100,
///     primary_peer_address_prefix="123.0.0.0/30",
///     secondary_peer_address_prefix="123.0.0.4/30",
///     ipv4_enabled=True,
///     vlan_id=300,
///     microsoft_peering_config={
///         "advertised_public_prefixes": ["123.1.0.0/24"],
///     },
///     ipv6={
///         "primary_peer_address_prefix": "2002:db01::/126",
///         "secondary_peer_address_prefix": "2003:db01::/126",
///         "enabled": True,
///         "microsoft_peering": {
///             "advertised_public_prefixes": ["2002:db01::/126"],
///         },
///     })
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
///         Name = "exprtTest",
///         Location = "West Europe",
///     });
///
///     var exampleExpressRouteCircuit = new Azure.Network.ExpressRouteCircuit("example", new()
///     {
///         Name = "expressRoute1",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         ServiceProviderName = "Equinix",
///         PeeringLocation = "Silicon Valley",
///         BandwidthInMbps = 50,
///         Sku = new Azure.Network.Inputs.ExpressRouteCircuitSkuArgs
///         {
///             Tier = "Standard",
///             Family = "MeteredData",
///         },
///         AllowClassicOperations = false,
///         Tags =
///         {
///             { "environment", "Production" },
///         },
///     });
///
///     var exampleExpressRouteCircuitPeering = new Azure.Network.ExpressRouteCircuitPeering("example", new()
///     {
///         PeeringType = "MicrosoftPeering",
///         ExpressRouteCircuitName = exampleExpressRouteCircuit.Name,
///         ResourceGroupName = example.Name,
///         PeerAsn = 100,
///         PrimaryPeerAddressPrefix = "123.0.0.0/30",
///         SecondaryPeerAddressPrefix = "123.0.0.4/30",
///         Ipv4Enabled = true,
///         VlanId = 300,
///         MicrosoftPeeringConfig = new Azure.Network.Inputs.ExpressRouteCircuitPeeringMicrosoftPeeringConfigArgs
///         {
///             AdvertisedPublicPrefixes = new[]
///             {
///                 "123.1.0.0/24",
///             },
///         },
///         Ipv6 = new Azure.Network.Inputs.ExpressRouteCircuitPeeringIpv6Args
///         {
///             PrimaryPeerAddressPrefix = "2002:db01::/126",
///             SecondaryPeerAddressPrefix = "2003:db01::/126",
///             Enabled = true,
///             MicrosoftPeering = new Azure.Network.Inputs.ExpressRouteCircuitPeeringIpv6MicrosoftPeeringArgs
///             {
///                 AdvertisedPublicPrefixes = new[]
///                 {
///                     "2002:db01::/126",
///                 },
///             },
///         },
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
/// 			Name:     pulumi.String("exprtTest"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleExpressRouteCircuit, err := network.NewExpressRouteCircuit(ctx, "example", &network.ExpressRouteCircuitArgs{
/// 			Name:                pulumi.String("expressRoute1"),
/// 			ResourceGroupName:   example.Name,
/// 			Location:            example.Location,
/// 			ServiceProviderName: pulumi.String("Equinix"),
/// 			PeeringLocation:     pulumi.String("Silicon Valley"),
/// 			BandwidthInMbps:     pulumi.Int(50),
/// 			Sku: &network.ExpressRouteCircuitSkuArgs{
/// 				Tier:   pulumi.String("Standard"),
/// 				Family: pulumi.String("MeteredData"),
/// 			},
/// 			AllowClassicOperations: pulumi.Bool(false),
/// 			Tags: pulumi.StringMap{
/// 				"environment": pulumi.String("Production"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = network.NewExpressRouteCircuitPeering(ctx, "example", &network.ExpressRouteCircuitPeeringArgs{
/// 			PeeringType:                pulumi.String("MicrosoftPeering"),
/// 			ExpressRouteCircuitName:    exampleExpressRouteCircuit.Name,
/// 			ResourceGroupName:          example.Name,
/// 			PeerAsn:                    pulumi.Int(100),
/// 			PrimaryPeerAddressPrefix:   pulumi.String("123.0.0.0/30"),
/// 			SecondaryPeerAddressPrefix: pulumi.String("123.0.0.4/30"),
/// 			Ipv4Enabled:                pulumi.Bool(true),
/// 			VlanId:                     pulumi.Int(300),
/// 			MicrosoftPeeringConfig: &network.ExpressRouteCircuitPeeringMicrosoftPeeringConfigArgs{
/// 				AdvertisedPublicPrefixes: pulumi.StringArray{
/// 					pulumi.String("123.1.0.0/24"),
/// 				},
/// 			},
/// 			Ipv6: &network.ExpressRouteCircuitPeeringIpv6Args{
/// 				PrimaryPeerAddressPrefix:   pulumi.String("2002:db01::/126"),
/// 				SecondaryPeerAddressPrefix: pulumi.String("2003:db01::/126"),
/// 				Enabled:                    pulumi.Bool(true),
/// 				MicrosoftPeering: &network.ExpressRouteCircuitPeeringIpv6MicrosoftPeeringArgs{
/// 					AdvertisedPublicPrefixes: pulumi.StringArray{
/// 						pulumi.String("2002:db01::/126"),
/// 					},
/// 				},
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
///     azure = {
///       source = "pulumi/azure"
///     }
///   }
/// }
///
/// resource "azure_core_resourcegroup" "example" {
///   name     = "exprtTest"
///   location = "West Europe"
/// }
/// resource "azure_network_expressroutecircuit" "example" {
///   name                  = "expressRoute1"
///   resource_group_name   = azure_core_resourcegroup.example.name
///   location              = azure_core_resourcegroup.example.location
///   service_provider_name = "Equinix"
///   peering_location      = "Silicon Valley"
///   bandwidth_in_mbps     = 50
///   sku = {
///     tier   = "Standard"
///     family = "MeteredData"
///   }
///   allow_classic_operations = false
///   tags = {
///     "environment" = "Production"
///   }
/// }
/// resource "azure_network_expressroutecircuitpeering" "example" {
///   peering_type                  = "MicrosoftPeering"
///   express_route_circuit_name    = azure_network_expressroutecircuit.example.name
///   resource_group_name           = azure_core_resourcegroup.example.name
///   peer_asn                      = 100
///   primary_peer_address_prefix   = "123.0.0.0/30"
///   secondary_peer_address_prefix = "123.0.0.4/30"
///   ipv4_enabled                  = true
///   vlan_id                       = 300
///   microsoft_peering_config = {
///     advertised_public_prefixes = ["123.1.0.0/24"]
///   }
///   ipv6 = {
///     primary_peer_address_prefix   = "2002:db01::/126"
///     secondary_peer_address_prefix = "2003:db01::/126"
///     enabled                       = true
///     microsoft_peering = {
///       advertised_public_prefixes = ["2002:db01::/126"]
///     }
///   }
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
/// import com.pulumi.azure.network.ExpressRouteCircuit;
/// import com.pulumi.azure.network.ExpressRouteCircuitArgs;
/// import com.pulumi.azure.network.inputs.ExpressRouteCircuitSkuArgs;
/// import com.pulumi.azure.network.ExpressRouteCircuitPeering;
/// import com.pulumi.azure.network.ExpressRouteCircuitPeeringArgs;
/// import com.pulumi.azure.network.inputs.ExpressRouteCircuitPeeringMicrosoftPeeringConfigArgs;
/// import com.pulumi.azure.network.inputs.ExpressRouteCircuitPeeringIpv6Args;
/// import com.pulumi.azure.network.inputs.ExpressRouteCircuitPeeringIpv6MicrosoftPeeringArgs;
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
///             .name("exprtTest")
///             .location("West Europe")
///             .build());
///
///         var exampleExpressRouteCircuit = new ExpressRouteCircuit("exampleExpressRouteCircuit", ExpressRouteCircuitArgs.builder()
///             .name("expressRoute1")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .serviceProviderName("Equinix")
///             .peeringLocation("Silicon Valley")
///             .bandwidthInMbps(50)
///             .sku(ExpressRouteCircuitSkuArgs.builder()
///                 .tier("Standard")
///                 .family("MeteredData")
///                 .build())
///             .allowClassicOperations(false)
///             .tags(Map.of("environment", "Production"))
///             .build());
///
///         var exampleExpressRouteCircuitPeering = new ExpressRouteCircuitPeering("exampleExpressRouteCircuitPeering", ExpressRouteCircuitPeeringArgs.builder()
///             .peeringType("MicrosoftPeering")
///             .expressRouteCircuitName(exampleExpressRouteCircuit.name())
///             .resourceGroupName(example.name())
///             .peerAsn(100)
///             .primaryPeerAddressPrefix("123.0.0.0/30")
///             .secondaryPeerAddressPrefix("123.0.0.4/30")
///             .ipv4Enabled(true)
///             .vlanId(300)
///             .microsoftPeeringConfig(ExpressRouteCircuitPeeringMicrosoftPeeringConfigArgs.builder()
///                 .advertisedPublicPrefixes("123.1.0.0/24")
///                 .build())
///             .ipv6(ExpressRouteCircuitPeeringIpv6Args.builder()
///                 .primaryPeerAddressPrefix("2002:db01::/126")
///                 .secondaryPeerAddressPrefix("2003:db01::/126")
///                 .enabled(true)
///                 .microsoftPeering(ExpressRouteCircuitPeeringIpv6MicrosoftPeeringArgs.builder()
///                     .advertisedPublicPrefixes("2002:db01::/126")
///                     .build())
///                 .build())
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
///       name: exprtTest
///       location: West Europe
///   exampleExpressRouteCircuit:
///     type: azure:network:ExpressRouteCircuit
///     name: example
///     properties:
///       name: expressRoute1
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       serviceProviderName: Equinix
///       peeringLocation: Silicon Valley
///       bandwidthInMbps: 50
///       sku:
///         tier: Standard
///         family: MeteredData
///       allowClassicOperations: false
///       tags:
///         environment: Production
///   exampleExpressRouteCircuitPeering:
///     type: azure:network:ExpressRouteCircuitPeering
///     name: example
///     properties:
///       peeringType: MicrosoftPeering
///       expressRouteCircuitName: ${exampleExpressRouteCircuit.name}
///       resourceGroupName: ${example.name}
///       peerAsn: 100
///       primaryPeerAddressPrefix: 123.0.0.0/30
///       secondaryPeerAddressPrefix: 123.0.0.4/30
///       ipv4Enabled: true
///       vlanId: 300
///       microsoftPeeringConfig:
///         advertisedPublicPrefixes:
///           - 123.1.0.0/24
///       ipv6:
///         primaryPeerAddressPrefix: 2002:db01::/126
///         secondaryPeerAddressPrefix: 2003:db01::/126
///         enabled: true
///         microsoftPeering:
///           advertisedPublicPrefixes:
///             - 2002:db01::/126
/// ```
///
///
///
/// ### Creating Azure Private Peering)
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "exprtTest",
///     location: "West Europe",
/// });
/// const exampleExpressRouteCircuit = new azure.network.ExpressRouteCircuit("example", {
///     name: "expressRoute1",
///     resourceGroupName: example.name,
///     location: example.location,
///     serviceProviderName: "Equinix",
///     peeringLocation: "Silicon Valley",
///     bandwidthInMbps: 50,
///     sku: {
///         tier: "Standard",
///         family: "MeteredData",
///     },
///     allowClassicOperations: false,
///     tags: {
///         environment: "Production",
///     },
/// });
/// const exampleExpressRouteCircuitPeering = new azure.network.ExpressRouteCircuitPeering("example", {
///     peeringType: "AzurePrivatePeering",
///     expressRouteCircuitName: exampleExpressRouteCircuit.name,
///     resourceGroupName: example.name,
///     peerAsn: 100,
///     primaryPeerAddressPrefix: "123.0.0.0/30",
///     secondaryPeerAddressPrefix: "123.0.0.4/30",
///     ipv4Enabled: true,
///     vlanId: 300,
///     ipv6: {
///         primaryPeerAddressPrefix: "2002:db01::/126",
///         secondaryPeerAddressPrefix: "2003:db01::/126",
///         enabled: true,
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="exprtTest",
///     location="West Europe")
/// example_express_route_circuit = azure.network.ExpressRouteCircuit("example",
///     name="expressRoute1",
///     resource_group_name=example.name,
///     location=example.location,
///     service_provider_name="Equinix",
///     peering_location="Silicon Valley",
///     bandwidth_in_mbps=50,
///     sku={
///         "tier": "Standard",
///         "family": "MeteredData",
///     },
///     allow_classic_operations=False,
///     tags={
///         "environment": "Production",
///     })
/// example_express_route_circuit_peering = azure.network.ExpressRouteCircuitPeering("example",
///     peering_type="AzurePrivatePeering",
///     express_route_circuit_name=example_express_route_circuit.name,
///     resource_group_name=example.name,
///     peer_asn=100,
///     primary_peer_address_prefix="123.0.0.0/30",
///     secondary_peer_address_prefix="123.0.0.4/30",
///     ipv4_enabled=True,
///     vlan_id=300,
///     ipv6={
///         "primary_peer_address_prefix": "2002:db01::/126",
///         "secondary_peer_address_prefix": "2003:db01::/126",
///         "enabled": True,
///     })
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
///         Name = "exprtTest",
///         Location = "West Europe",
///     });
///
///     var exampleExpressRouteCircuit = new Azure.Network.ExpressRouteCircuit("example", new()
///     {
///         Name = "expressRoute1",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         ServiceProviderName = "Equinix",
///         PeeringLocation = "Silicon Valley",
///         BandwidthInMbps = 50,
///         Sku = new Azure.Network.Inputs.ExpressRouteCircuitSkuArgs
///         {
///             Tier = "Standard",
///             Family = "MeteredData",
///         },
///         AllowClassicOperations = false,
///         Tags =
///         {
///             { "environment", "Production" },
///         },
///     });
///
///     var exampleExpressRouteCircuitPeering = new Azure.Network.ExpressRouteCircuitPeering("example", new()
///     {
///         PeeringType = "AzurePrivatePeering",
///         ExpressRouteCircuitName = exampleExpressRouteCircuit.Name,
///         ResourceGroupName = example.Name,
///         PeerAsn = 100,
///         PrimaryPeerAddressPrefix = "123.0.0.0/30",
///         SecondaryPeerAddressPrefix = "123.0.0.4/30",
///         Ipv4Enabled = true,
///         VlanId = 300,
///         Ipv6 = new Azure.Network.Inputs.ExpressRouteCircuitPeeringIpv6Args
///         {
///             PrimaryPeerAddressPrefix = "2002:db01::/126",
///             SecondaryPeerAddressPrefix = "2003:db01::/126",
///             Enabled = true,
///         },
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
/// 			Name:     pulumi.String("exprtTest"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleExpressRouteCircuit, err := network.NewExpressRouteCircuit(ctx, "example", &network.ExpressRouteCircuitArgs{
/// 			Name:                pulumi.String("expressRoute1"),
/// 			ResourceGroupName:   example.Name,
/// 			Location:            example.Location,
/// 			ServiceProviderName: pulumi.String("Equinix"),
/// 			PeeringLocation:     pulumi.String("Silicon Valley"),
/// 			BandwidthInMbps:     pulumi.Int(50),
/// 			Sku: &network.ExpressRouteCircuitSkuArgs{
/// 				Tier:   pulumi.String("Standard"),
/// 				Family: pulumi.String("MeteredData"),
/// 			},
/// 			AllowClassicOperations: pulumi.Bool(false),
/// 			Tags: pulumi.StringMap{
/// 				"environment": pulumi.String("Production"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = network.NewExpressRouteCircuitPeering(ctx, "example", &network.ExpressRouteCircuitPeeringArgs{
/// 			PeeringType:                pulumi.String("AzurePrivatePeering"),
/// 			ExpressRouteCircuitName:    exampleExpressRouteCircuit.Name,
/// 			ResourceGroupName:          example.Name,
/// 			PeerAsn:                    pulumi.Int(100),
/// 			PrimaryPeerAddressPrefix:   pulumi.String("123.0.0.0/30"),
/// 			SecondaryPeerAddressPrefix: pulumi.String("123.0.0.4/30"),
/// 			Ipv4Enabled:                pulumi.Bool(true),
/// 			VlanId:                     pulumi.Int(300),
/// 			Ipv6: &network.ExpressRouteCircuitPeeringIpv6Args{
/// 				PrimaryPeerAddressPrefix:   pulumi.String("2002:db01::/126"),
/// 				SecondaryPeerAddressPrefix: pulumi.String("2003:db01::/126"),
/// 				Enabled:                    pulumi.Bool(true),
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
///     azure = {
///       source = "pulumi/azure"
///     }
///   }
/// }
///
/// resource "azure_core_resourcegroup" "example" {
///   name     = "exprtTest"
///   location = "West Europe"
/// }
/// resource "azure_network_expressroutecircuit" "example" {
///   name                  = "expressRoute1"
///   resource_group_name   = azure_core_resourcegroup.example.name
///   location              = azure_core_resourcegroup.example.location
///   service_provider_name = "Equinix"
///   peering_location      = "Silicon Valley"
///   bandwidth_in_mbps     = 50
///   sku = {
///     tier   = "Standard"
///     family = "MeteredData"
///   }
///   allow_classic_operations = false
///   tags = {
///     "environment" = "Production"
///   }
/// }
/// resource "azure_network_expressroutecircuitpeering" "example" {
///   peering_type                  = "AzurePrivatePeering"
///   express_route_circuit_name    = azure_network_expressroutecircuit.example.name
///   resource_group_name           = azure_core_resourcegroup.example.name
///   peer_asn                      = 100
///   primary_peer_address_prefix   = "123.0.0.0/30"
///   secondary_peer_address_prefix = "123.0.0.4/30"
///   ipv4_enabled                  = true
///   vlan_id                       = 300
///   ipv6 = {
///     primary_peer_address_prefix   = "2002:db01::/126"
///     secondary_peer_address_prefix = "2003:db01::/126"
///     enabled                       = true
///   }
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
/// import com.pulumi.azure.network.ExpressRouteCircuit;
/// import com.pulumi.azure.network.ExpressRouteCircuitArgs;
/// import com.pulumi.azure.network.inputs.ExpressRouteCircuitSkuArgs;
/// import com.pulumi.azure.network.ExpressRouteCircuitPeering;
/// import com.pulumi.azure.network.ExpressRouteCircuitPeeringArgs;
/// import com.pulumi.azure.network.inputs.ExpressRouteCircuitPeeringIpv6Args;
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
///             .name("exprtTest")
///             .location("West Europe")
///             .build());
///
///         var exampleExpressRouteCircuit = new ExpressRouteCircuit("exampleExpressRouteCircuit", ExpressRouteCircuitArgs.builder()
///             .name("expressRoute1")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .serviceProviderName("Equinix")
///             .peeringLocation("Silicon Valley")
///             .bandwidthInMbps(50)
///             .sku(ExpressRouteCircuitSkuArgs.builder()
///                 .tier("Standard")
///                 .family("MeteredData")
///                 .build())
///             .allowClassicOperations(false)
///             .tags(Map.of("environment", "Production"))
///             .build());
///
///         var exampleExpressRouteCircuitPeering = new ExpressRouteCircuitPeering("exampleExpressRouteCircuitPeering", ExpressRouteCircuitPeeringArgs.builder()
///             .peeringType("AzurePrivatePeering")
///             .expressRouteCircuitName(exampleExpressRouteCircuit.name())
///             .resourceGroupName(example.name())
///             .peerAsn(100)
///             .primaryPeerAddressPrefix("123.0.0.0/30")
///             .secondaryPeerAddressPrefix("123.0.0.4/30")
///             .ipv4Enabled(true)
///             .vlanId(300)
///             .ipv6(ExpressRouteCircuitPeeringIpv6Args.builder()
///                 .primaryPeerAddressPrefix("2002:db01::/126")
///                 .secondaryPeerAddressPrefix("2003:db01::/126")
///                 .enabled(true)
///                 .build())
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
///       name: exprtTest
///       location: West Europe
///   exampleExpressRouteCircuit:
///     type: azure:network:ExpressRouteCircuit
///     name: example
///     properties:
///       name: expressRoute1
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       serviceProviderName: Equinix
///       peeringLocation: Silicon Valley
///       bandwidthInMbps: 50
///       sku:
///         tier: Standard
///         family: MeteredData
///       allowClassicOperations: false
///       tags:
///         environment: Production
///   exampleExpressRouteCircuitPeering:
///     type: azure:network:ExpressRouteCircuitPeering
///     name: example
///     properties:
///       peeringType: AzurePrivatePeering
///       expressRouteCircuitName: ${exampleExpressRouteCircuit.name}
///       resourceGroupName: ${example.name}
///       peerAsn: 100
///       primaryPeerAddressPrefix: 123.0.0.0/30
///       secondaryPeerAddressPrefix: 123.0.0.4/30
///       ipv4Enabled: true
///       vlanId: 300
///       ipv6:
///         primaryPeerAddressPrefix: 2002:db01::/126
///         secondaryPeerAddressPrefix: 2003:db01::/126
///         enabled: true
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
/// ExpressRoute Circuit Peerings can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:network/expressRouteCircuitPeering:ExpressRouteCircuitPeering peering1 /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/mygroup1/providers/Microsoft.Network/expressRouteCircuits/myExpressRoute/peerings/peering1
/// ```
class ExpressRouteCircuitPeering extends pulumi.CustomResource {
  /// The ASN used by Azure.
  late final pulumi.Output<int> azureAsn;
  /// The name of the ExpressRoute Circuit in which to create the Peering. Changing this forces a new resource to be created.
  late final pulumi.Output<String> expressRouteCircuitName;
  late final pulumi.Output<String> gatewayManagerEtag;
  /// A boolean value indicating whether the IPv4 peering is enabled. Defaults to `true`.
  late final pulumi.Output<bool?> ipv4Enabled;
  /// A `ipv6` block as defined below.
  late final pulumi.Output<ExpressRouteCircuitPeeringIpv6?> ipv6;
  /// A `microsoftPeeringConfig` block as defined below. Required when `peeringType` is set to `MicrosoftPeering` and config for IPv4.
  late final pulumi.Output<ExpressRouteCircuitPeeringMicrosoftPeeringConfig?> microsoftPeeringConfig;
  /// The Either a 16-bit or a 32-bit ASN. Can either be public or private.
  late final pulumi.Output<int> peerAsn;
  /// The type of the ExpressRoute Circuit Peering. Acceptable values include `AzurePrivatePeering`, `AzurePublicPeering` and `MicrosoftPeering`.
  ///
  /// &gt; **Note:** only one Peering of each Type can be created. Attempting to create multiple peerings of the same type will overwrite the original peering.
  late final pulumi.Output<String> peeringType;
  /// The Primary Port used by Azure for this Peering.
  late final pulumi.Output<String> primaryAzurePort;
  /// A subnet for the primary link.
  late final pulumi.Output<String?> primaryPeerAddressPrefix;
  /// The name of the resource group in which to create the Express Route Circuit Peering. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// The ID of the Route Filter. Only available when `peeringType` is set to `MicrosoftPeering`.
  ///
  /// &gt; **Note:** `ipv6` can be specified when `peeringType` is `MicrosoftPeering` or `AzurePrivatePeering`
  late final pulumi.Output<String?> routeFilterId;
  /// The Secondary Port used by Azure for this Peering.
  late final pulumi.Output<String> secondaryAzurePort;
  /// A subnet for the secondary link.
  late final pulumi.Output<String?> secondaryPeerAddressPrefix;
  /// The shared key. Can be a maximum of 25 characters.
  late final pulumi.Output<String?> sharedKey;
  /// A valid VLAN ID to establish this peering on.
  late final pulumi.Output<int> vlanId;

  /// Creates a new [ExpressRouteCircuitPeering].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ExpressRouteCircuitPeering]. {@macro pulumi_network_express_route_circuit_peering_express_route_circuit_peering_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ExpressRouteCircuitPeering(
    String name, {
    ExpressRouteCircuitPeeringArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:network/expressRouteCircuitPeering:ExpressRouteCircuitPeering',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureAsn = registerOutput<int>('azureAsn');
    expressRouteCircuitName = registerOutput<String>('expressRouteCircuitName');
    gatewayManagerEtag = registerOutput<String>('gatewayManagerEtag');
    ipv4Enabled = registerOutput<bool?>('ipv4Enabled');
    ipv6 = registerOutput<ExpressRouteCircuitPeeringIpv6?>('ipv6', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ExpressRouteCircuitPeeringIpv6.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    microsoftPeeringConfig = registerOutput<ExpressRouteCircuitPeeringMicrosoftPeeringConfig?>('microsoftPeeringConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ExpressRouteCircuitPeeringMicrosoftPeeringConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    peerAsn = registerOutput<int>('peerAsn');
    peeringType = registerOutput<String>('peeringType');
    primaryAzurePort = registerOutput<String>('primaryAzurePort');
    primaryPeerAddressPrefix = registerOutput<String?>('primaryPeerAddressPrefix');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    routeFilterId = registerOutput<String?>('routeFilterId');
    secondaryAzurePort = registerOutput<String>('secondaryAzurePort');
    secondaryPeerAddressPrefix = registerOutput<String?>('secondaryPeerAddressPrefix');
    sharedKey = registerOutput<String?>('sharedKey');
    vlanId = registerOutput<int>('vlanId');
  }

  /// Gets an existing [ExpressRouteCircuitPeering] resource's state with the given [name] and [id].
  static ExpressRouteCircuitPeering get(
    String name,
    pulumi.Input<String> id, {
    ExpressRouteCircuitPeeringState? state,
  }) {
    return ExpressRouteCircuitPeering._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ExpressRouteCircuitPeering._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:network/expressRouteCircuitPeering:ExpressRouteCircuitPeering',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureAsn = registerOutput<int>('azureAsn');
    expressRouteCircuitName = registerOutput<String>('expressRouteCircuitName');
    gatewayManagerEtag = registerOutput<String>('gatewayManagerEtag');
    ipv4Enabled = registerOutput<bool?>('ipv4Enabled');
    ipv6 = registerOutput<ExpressRouteCircuitPeeringIpv6?>('ipv6', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ExpressRouteCircuitPeeringIpv6.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    microsoftPeeringConfig = registerOutput<ExpressRouteCircuitPeeringMicrosoftPeeringConfig?>('microsoftPeeringConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ExpressRouteCircuitPeeringMicrosoftPeeringConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    peerAsn = registerOutput<int>('peerAsn');
    peeringType = registerOutput<String>('peeringType');
    primaryAzurePort = registerOutput<String>('primaryAzurePort');
    primaryPeerAddressPrefix = registerOutput<String?>('primaryPeerAddressPrefix');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    routeFilterId = registerOutput<String?>('routeFilterId');
    secondaryAzurePort = registerOutput<String>('secondaryAzurePort');
    secondaryPeerAddressPrefix = registerOutput<String?>('secondaryPeerAddressPrefix');
    sharedKey = registerOutput<String?>('sharedKey');
    vlanId = registerOutput<int>('vlanId');
  }
}
