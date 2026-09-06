import 'package:pulumi/pulumi.dart' as pulumi;
import 'gateway_custom_bgp_ip_address_ip_configuration_response.dart';
import 'ipsec_policy_response.dart';
import 'local_network_gateway_response.dart';
import 'sub_resource_response.dart';
import 'traffic_selector_policy_response.dart';
import 'tunnel_connection_health_response.dart';
import 'virtual_network_gateway_connection_args.dart';
import 'virtual_network_gateway_response.dart';

/// A common class for general resource information.
///
/// Uses Azure REST API version 2024-05-01. In version 2.x of the Azure Native provider, it used API version 2023-02-01.
///
/// Other available API versions: 2018-06-01, 2018-07-01, 2018-08-01, 2018-10-01, 2018-11-01, 2018-12-01, 2019-02-01, 2019-04-01, 2019-06-01, 2019-07-01, 2019-08-01, 2019-09-01, 2019-11-01, 2019-12-01, 2020-03-01, 2020-04-01, 2020-05-01, 2020-06-01, 2020-07-01, 2020-08-01, 2020-11-01, 2021-02-01, 2021-03-01, 2021-05-01, 2021-08-01, 2022-01-01, 2022-05-01, 2022-07-01, 2022-09-01, 2022-11-01, 2023-02-01, 2023-04-01, 2023-05-01, 2023-06-01, 2023-09-01, 2023-11-01, 2024-01-01, 2024-03-01, 2024-07-01, 2024-10-01, 2025-01-01, 2025-03-01, 2025-05-01, 2025-07-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native network [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### CreateVirtualNetworkGatewayConnection_S2S
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var virtualNetworkGatewayConnection = new AzureNative.Network.VirtualNetworkGatewayConnection("virtualNetworkGatewayConnection", new()
///     {
///         ConnectionMode = AzureNative.Network.VirtualNetworkGatewayConnectionMode.Default,
///         ConnectionProtocol = AzureNative.Network.VirtualNetworkGatewayConnectionProtocol.IKEv2,
///         ConnectionType = AzureNative.Network.VirtualNetworkGatewayConnectionType.IPsec,
///         DpdTimeoutSeconds = 30,
///         EgressNatRules = new[]
///         {
///             new AzureNative.Network.Inputs.SubResourceArgs
///             {
///                 Id = "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworkGateways/vpngw/natRules/natRule2",
///             },
///         },
///         EnableBgp = false,
///         GatewayCustomBgpIpAddresses = new[]
///         {
///             new AzureNative.Network.Inputs.GatewayCustomBgpIpAddressIpConfigurationArgs
///             {
///                 CustomBgpIpAddress = "169.254.21.1",
///                 IpConfigurationId = "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworkGateways/vpngw/ipConfigurations/default",
///             },
///             new AzureNative.Network.Inputs.GatewayCustomBgpIpAddressIpConfigurationArgs
///             {
///                 CustomBgpIpAddress = "169.254.21.3",
///                 IpConfigurationId = "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworkGateways/vpngw/ipConfigurations/ActiveActive",
///             },
///         },
///         IngressNatRules = new[]
///         {
///             new AzureNative.Network.Inputs.SubResourceArgs
///             {
///                 Id = "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworkGateways/vpngw/natRules/natRule1",
///             },
///         },
///         IpsecPolicies = new[] {},
///         LocalNetworkGateway2 = new AzureNative.Network.Inputs.LocalNetworkGatewayArgs
///         {
///             GatewayIpAddress = "x.x.x.x",
///             Id = "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/localNetworkGateways/localgw",
///             LocalNetworkAddressSpace = new AzureNative.Network.Inputs.AddressSpaceArgs
///             {
///                 AddressPrefixes = new[]
///                 {
///                     "10.1.0.0/16",
///                 },
///             },
///             Location = "centralus",
///             Tags = null,
///         },
///         Location = "centralus",
///         ResourceGroupName = "rg1",
///         RoutingWeight = 0,
///         SharedKey = "Abc123",
///         TrafficSelectorPolicies = new[] {},
///         UsePolicyBasedTrafficSelectors = false,
///         VirtualNetworkGateway1 = new AzureNative.Network.Inputs.VirtualNetworkGatewayArgs
///         {
///             ActiveActive = false,
///             BgpSettings = new AzureNative.Network.Inputs.BgpSettingsArgs
///             {
///                 Asn = 65514,
///                 BgpPeeringAddress = "10.0.1.30",
///                 PeerWeight = 0,
///             },
///             EnableBgp = false,
///             GatewayType = AzureNative.Network.VirtualNetworkGatewayType.Vpn,
///             Id = "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworkGateways/vpngw",
///             IpConfigurations = new[]
///             {
///                 new AzureNative.Network.Inputs.VirtualNetworkGatewayIPConfigurationArgs
///                 {
///                     Id = "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworkGateways/vpngw/ipConfigurations/gwipconfig1",
///                     Name = "gwipconfig1",
///                     PrivateIPAllocationMethod = AzureNative.Network.IPAllocationMethod.Dynamic,
///                     PublicIPAddress = new AzureNative.Network.Inputs.SubResourceArgs
///                     {
///                         Id = "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/publicIPAddresses/gwpip",
///                     },
///                     Subnet = new AzureNative.Network.Inputs.SubResourceArgs
///                     {
///                         Id = "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworks/vnet1/subnets/GatewaySubnet",
///                     },
///                 },
///             },
///             Location = "centralus",
///             Sku = new AzureNative.Network.Inputs.VirtualNetworkGatewaySkuArgs
///             {
///                 Name = AzureNative.Network.VirtualNetworkGatewaySkuName.VpnGw1,
///                 Tier = AzureNative.Network.VirtualNetworkGatewaySkuTier.VpnGw1,
///             },
///             Tags = null,
///             VpnType = AzureNative.Network.VpnType.RouteBased,
///         },
///         VirtualNetworkGatewayConnectionName = "connS2S",
///     });
///
/// });
///
///
/// ```
///
/// ```go
/// package main
///
/// import (
/// 	network "github.com/pulumi/pulumi-azure-native-sdk/network/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := network.NewVirtualNetworkGatewayConnection(ctx, "virtualNetworkGatewayConnection", &network.VirtualNetworkGatewayConnectionArgs{
/// 			ConnectionMode:     pulumi.String(network.VirtualNetworkGatewayConnectionModeDefault),
/// 			ConnectionProtocol: pulumi.String(network.VirtualNetworkGatewayConnectionProtocolIKEv2),
/// 			ConnectionType:     pulumi.String(network.VirtualNetworkGatewayConnectionTypeIPsec),
/// 			DpdTimeoutSeconds:  pulumi.Int(30),
/// 			EgressNatRules: network.SubResourceArray{
/// 				&network.SubResourceArgs{
/// 					Id: pulumi.String("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworkGateways/vpngw/natRules/natRule2"),
/// 				},
/// 			},
/// 			EnableBgp: pulumi.Bool(false),
/// 			GatewayCustomBgpIpAddresses: network.GatewayCustomBgpIpAddressIpConfigurationArray{
/// 				&network.GatewayCustomBgpIpAddressIpConfigurationArgs{
/// 					CustomBgpIpAddress: pulumi.String("169.254.21.1"),
/// 					IpConfigurationId:  pulumi.String("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworkGateways/vpngw/ipConfigurations/default"),
/// 				},
/// 				&network.GatewayCustomBgpIpAddressIpConfigurationArgs{
/// 					CustomBgpIpAddress: pulumi.String("169.254.21.3"),
/// 					IpConfigurationId:  pulumi.String("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworkGateways/vpngw/ipConfigurations/ActiveActive"),
/// 				},
/// 			},
/// 			IngressNatRules: network.SubResourceArray{
/// 				&network.SubResourceArgs{
/// 					Id: pulumi.String("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworkGateways/vpngw/natRules/natRule1"),
/// 				},
/// 			},
/// 			IpsecPolicies: network.IpsecPolicyArray{},
/// 			LocalNetworkGateway2: &network.LocalNetworkGatewayTypeArgs{
/// 				GatewayIpAddress: pulumi.String("x.x.x.x"),
/// 				Id:               pulumi.String("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/localNetworkGateways/localgw"),
/// 				LocalNetworkAddressSpace: &network.AddressSpaceArgs{
/// 					AddressPrefixes: pulumi.StringArray{
/// 						pulumi.String("10.1.0.0/16"),
/// 					},
/// 				},
/// 				Location: pulumi.String("centralus"),
/// 				Tags:     pulumi.StringMap{},
/// 			},
/// 			Location:                       pulumi.String("centralus"),
/// 			ResourceGroupName:              pulumi.String("rg1"),
/// 			RoutingWeight:                  pulumi.Int(0),
/// 			SharedKey:                      pulumi.String("Abc123"),
/// 			TrafficSelectorPolicies:        network.TrafficSelectorPolicyArray{},
/// 			UsePolicyBasedTrafficSelectors: pulumi.Bool(false),
/// 			VirtualNetworkGateway1: &network.VirtualNetworkGatewayTypeArgs{
/// 				ActiveActive: pulumi.Bool(false),
/// 				BgpSettings: &network.BgpSettingsArgs{
/// 					Asn:               pulumi.Float64(65514),
/// 					BgpPeeringAddress: pulumi.String("10.0.1.30"),
/// 					PeerWeight:        pulumi.Int(0),
/// 				},
/// 				EnableBgp:   pulumi.Bool(false),
/// 				GatewayType: pulumi.String(network.VirtualNetworkGatewayTypeVpn),
/// 				Id:          pulumi.String("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworkGateways/vpngw"),
/// 				IpConfigurations: network.VirtualNetworkGatewayIPConfigurationArray{
/// 					&network.VirtualNetworkGatewayIPConfigurationArgs{
/// 						Id:                        pulumi.String("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworkGateways/vpngw/ipConfigurations/gwipconfig1"),
/// 						Name:                      pulumi.String("gwipconfig1"),
/// 						PrivateIPAllocationMethod: pulumi.String(network.IPAllocationMethodDynamic),
/// 						PublicIPAddress: &network.SubResourceArgs{
/// 							Id: pulumi.String("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/publicIPAddresses/gwpip"),
/// 						},
/// 						Subnet: &network.SubResourceArgs{
/// 							Id: pulumi.String("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworks/vnet1/subnets/GatewaySubnet"),
/// 						},
/// 					},
/// 				},
/// 				Location: pulumi.String("centralus"),
/// 				Sku: &network.VirtualNetworkGatewaySkuArgs{
/// 					Name: pulumi.String(network.VirtualNetworkGatewaySkuNameVpnGw1),
/// 					Tier: pulumi.String(network.VirtualNetworkGatewaySkuTierVpnGw1),
/// 				},
/// 				Tags:    pulumi.StringMap{},
/// 				VpnType: pulumi.String(network.VpnTypeRouteBased),
/// 			},
/// 			VirtualNetworkGatewayConnectionName: pulumi.String("connS2S"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
///
/// ```
///
/// ```hcl
/// pulumi {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_network_virtualnetworkgatewayconnection" "virtualNetworkGatewayConnection" {
///   connection_mode     = "Default"
///   connection_protocol = "IKEv2"
///   connection_type     = "IPsec"
///   dpd_timeout_seconds = 30
///   egress_nat_rules {
///     id = "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworkGateways/vpngw/natRules/natRule2"
///   }
///   enable_bgp = false
///   gateway_custom_bgp_ip_addresses {
///     custom_bgp_ip_address = "169.254.21.1"
///     ip_configuration_id   = "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworkGateways/vpngw/ipConfigurations/default"
///   }
///   gateway_custom_bgp_ip_addresses {
///     custom_bgp_ip_address = "169.254.21.3"
///     ip_configuration_id   = "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworkGateways/vpngw/ipConfigurations/ActiveActive"
///   }
///   ingress_nat_rules {
///     id = "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworkGateways/vpngw/natRules/natRule1"
///   }
///   local_network_gateway2 = {
///     gateway_ip_address = "x.x.x.x"
///     id                 = "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/localNetworkGateways/localgw"
///     local_network_address_space = {
///       address_prefixes = ["10.1.0.0/16"]
///     }
///     location = "centralus"
///     tags     = {}
///   }
///   location                           = "centralus"
///   resource_group_name                = "rg1"
///   routing_weight                     = 0
///   shared_key                         = "Abc123"
///   use_policy_based_traffic_selectors = false
///   virtual_network_gateway1 = {
///     active_active = false
///     bgp_settings = {
///       asn                 = 65514
///       bgp_peering_address = "10.0.1.30"
///       peer_weight         = 0
///     }
///     enable_bgp   = false
///     gateway_type = "Vpn"
///     id           = "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworkGateways/vpngw"
///     ip_configurations = [{
///       "id"                        = "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworkGateways/vpngw/ipConfigurations/gwipconfig1"
///       "name"                      = "gwipconfig1"
///       "privateIPAllocationMethod" = "Dynamic"
///       "publicIPAddress" = {
///         "id" = "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/publicIPAddresses/gwpip"
///       }
///       "subnet" = {
///         "id" = "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworks/vnet1/subnets/GatewaySubnet"
///       }
///     }]
///     location = "centralus"
///     sku = {
///       name = "VpnGw1"
///       tier = "VpnGw1"
///     }
///     tags     = {}
///     vpn_type = "RouteBased"
///   }
///   virtual_network_gateway_connection_name = "connS2S"
/// }
///
/// ```
///
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.network.VirtualNetworkGatewayConnection;
/// import com.pulumi.azurenative.network.VirtualNetworkGatewayConnectionArgs;
/// import com.pulumi.azurenative.network.inputs.SubResourceArgs;
/// import com.pulumi.azurenative.network.inputs.GatewayCustomBgpIpAddressIpConfigurationArgs;
/// import com.pulumi.azurenative.network.inputs.LocalNetworkGatewayArgs;
/// import com.pulumi.azurenative.network.inputs.AddressSpaceArgs;
/// import com.pulumi.azurenative.network.inputs.VirtualNetworkGatewayArgs;
/// import com.pulumi.azurenative.network.inputs.BgpSettingsArgs;
/// import com.pulumi.azurenative.network.inputs.VirtualNetworkGatewaySkuArgs;
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
///         var virtualNetworkGatewayConnection = new VirtualNetworkGatewayConnection("virtualNetworkGatewayConnection", VirtualNetworkGatewayConnectionArgs.builder()
///             .connectionMode("Default")
///             .connectionProtocol("IKEv2")
///             .connectionType("IPsec")
///             .dpdTimeoutSeconds(30)
///             .egressNatRules(SubResourceArgs.builder()
///                 .id("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworkGateways/vpngw/natRules/natRule2")
///                 .build())
///             .enableBgp(false)
///             .gatewayCustomBgpIpAddresses(
///                 GatewayCustomBgpIpAddressIpConfigurationArgs.builder()
///                     .customBgpIpAddress("169.254.21.1")
///                     .ipConfigurationId("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworkGateways/vpngw/ipConfigurations/default")
///                     .build(),
///                 GatewayCustomBgpIpAddressIpConfigurationArgs.builder()
///                     .customBgpIpAddress("169.254.21.3")
///                     .ipConfigurationId("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworkGateways/vpngw/ipConfigurations/ActiveActive")
///                     .build())
///             .ingressNatRules(SubResourceArgs.builder()
///                 .id("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworkGateways/vpngw/natRules/natRule1")
///                 .build())
///             .ipsecPolicies()
///             .localNetworkGateway2(LocalNetworkGatewayArgs.builder()
///                 .gatewayIpAddress("x.x.x.x")
///                 .id("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/localNetworkGateways/localgw")
///                 .localNetworkAddressSpace(AddressSpaceArgs.builder()
///                     .addressPrefixes("10.1.0.0/16")
///                     .build())
///                 .location("centralus")
///                 .tags(Map.ofEntries(
///                 ))
///                 .build())
///             .location("centralus")
///             .resourceGroupName("rg1")
///             .routingWeight(0)
///             .sharedKey("Abc123")
///             .trafficSelectorPolicies()
///             .usePolicyBasedTrafficSelectors(false)
///             .virtualNetworkGateway1(VirtualNetworkGatewayArgs.builder()
///                 .activeActive(false)
///                 .bgpSettings(BgpSettingsArgs.builder()
///                     .asn(65514.0)
///                     .bgpPeeringAddress("10.0.1.30")
///                     .peerWeight(0)
///                     .build())
///                 .enableBgp(false)
///                 .gatewayType("Vpn")
///                 .id("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworkGateways/vpngw")
///                 .ipConfigurations(VirtualNetworkGatewayIPConfigurationArgs.builder()
///                     .id("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworkGateways/vpngw/ipConfigurations/gwipconfig1")
///                     .name("gwipconfig1")
///                     .privateIPAllocationMethod("Dynamic")
///                     .publicIPAddress(SubResourceArgs.builder()
///                         .id("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/publicIPAddresses/gwpip")
///                         .build())
///                     .subnet(SubResourceArgs.builder()
///                         .id("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworks/vnet1/subnets/GatewaySubnet")
///                         .build())
///                     .build())
///                 .location("centralus")
///                 .sku(VirtualNetworkGatewaySkuArgs.builder()
///                     .name("VpnGw1")
///                     .tier("VpnGw1")
///                     .build())
///                 .tags(Map.ofEntries(
///                 ))
///                 .vpnType("RouteBased")
///                 .build())
///             .virtualNetworkGatewayConnectionName("connS2S")
///             .build());
///
///     }
/// }
///
/// ```
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure_native from "@pulumi/azure-native";
///
/// const virtualNetworkGatewayConnection = new azure_native.network.VirtualNetworkGatewayConnection("virtualNetworkGatewayConnection", {
///     connectionMode: azure_native.network.VirtualNetworkGatewayConnectionMode.Default,
///     connectionProtocol: azure_native.network.VirtualNetworkGatewayConnectionProtocol.IKEv2,
///     connectionType: azure_native.network.VirtualNetworkGatewayConnectionType.IPsec,
///     dpdTimeoutSeconds: 30,
///     egressNatRules: [{
///         id: "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworkGateways/vpngw/natRules/natRule2",
///     }],
///     enableBgp: false,
///     gatewayCustomBgpIpAddresses: [
///         {
///             customBgpIpAddress: "169.254.21.1",
///             ipConfigurationId: "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworkGateways/vpngw/ipConfigurations/default",
///         },
///         {
///             customBgpIpAddress: "169.254.21.3",
///             ipConfigurationId: "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworkGateways/vpngw/ipConfigurations/ActiveActive",
///         },
///     ],
///     ingressNatRules: [{
///         id: "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworkGateways/vpngw/natRules/natRule1",
///     }],
///     ipsecPolicies: [],
///     localNetworkGateway2: {
///         gatewayIpAddress: "x.x.x.x",
///         id: "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/localNetworkGateways/localgw",
///         localNetworkAddressSpace: {
///             addressPrefixes: ["10.1.0.0/16"],
///         },
///         location: "centralus",
///         tags: {},
///     },
///     location: "centralus",
///     resourceGroupName: "rg1",
///     routingWeight: 0,
///     sharedKey: "Abc123",
///     trafficSelectorPolicies: [],
///     usePolicyBasedTrafficSelectors: false,
///     virtualNetworkGateway1: {
///         activeActive: false,
///         bgpSettings: {
///             asn: 65514,
///             bgpPeeringAddress: "10.0.1.30",
///             peerWeight: 0,
///         },
///         enableBgp: false,
///         gatewayType: azure_native.network.VirtualNetworkGatewayType.Vpn,
///         id: "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworkGateways/vpngw",
///         ipConfigurations: [{
///             id: "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworkGateways/vpngw/ipConfigurations/gwipconfig1",
///             name: "gwipconfig1",
///             privateIPAllocationMethod: azure_native.network.IPAllocationMethod.Dynamic,
///             publicIPAddress: {
///                 id: "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/publicIPAddresses/gwpip",
///             },
///             subnet: {
///                 id: "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworks/vnet1/subnets/GatewaySubnet",
///             },
///         }],
///         location: "centralus",
///         sku: {
///             name: azure_native.network.VirtualNetworkGatewaySkuName.VpnGw1,
///             tier: azure_native.network.VirtualNetworkGatewaySkuTier.VpnGw1,
///         },
///         tags: {},
///         vpnType: azure_native.network.VpnType.RouteBased,
///     },
///     virtualNetworkGatewayConnectionName: "connS2S",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// virtual_network_gateway_connection = azure_native.network.VirtualNetworkGatewayConnection("virtualNetworkGatewayConnection",
///     connection_mode=azure_native.network.VirtualNetworkGatewayConnectionMode.DEFAULT,
///     connection_protocol=azure_native.network.VirtualNetworkGatewayConnectionProtocol.IK_EV2,
///     connection_type=azure_native.network.VirtualNetworkGatewayConnectionType.IPSEC,
///     dpd_timeout_seconds=30,
///     egress_nat_rules=[{
///         "id": "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworkGateways/vpngw/natRules/natRule2",
///     }],
///     enable_bgp=False,
///     gateway_custom_bgp_ip_addresses=[
///         {
///             "custom_bgp_ip_address": "169.254.21.1",
///             "ip_configuration_id": "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworkGateways/vpngw/ipConfigurations/default",
///         },
///         {
///             "custom_bgp_ip_address": "169.254.21.3",
///             "ip_configuration_id": "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworkGateways/vpngw/ipConfigurations/ActiveActive",
///         },
///     ],
///     ingress_nat_rules=[{
///         "id": "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworkGateways/vpngw/natRules/natRule1",
///     }],
///     ipsec_policies=[],
///     local_network_gateway2={
///         "gateway_ip_address": "x.x.x.x",
///         "id": "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/localNetworkGateways/localgw",
///         "local_network_address_space": {
///             "address_prefixes": ["10.1.0.0/16"],
///         },
///         "location": "centralus",
///         "tags": {},
///     },
///     location="centralus",
///     resource_group_name="rg1",
///     routing_weight=0,
///     shared_key="Abc123",
///     traffic_selector_policies=[],
///     use_policy_based_traffic_selectors=False,
///     virtual_network_gateway1={
///         "active_active": False,
///         "bgp_settings": {
///             "asn": float(65514),
///             "bgp_peering_address": "10.0.1.30",
///             "peer_weight": 0,
///         },
///         "enable_bgp": False,
///         "gateway_type": azure_native.network.VirtualNetworkGatewayType.VPN,
///         "id": "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworkGateways/vpngw",
///         "ip_configurations": [{
///             "id": "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworkGateways/vpngw/ipConfigurations/gwipconfig1",
///             "name": "gwipconfig1",
///             "private_ip_allocation_method": azure_native.network.IPAllocationMethod.DYNAMIC,
///             "public_ip_address": {
///                 "id": "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/publicIPAddresses/gwpip",
///             },
///             "subnet": {
///                 "id": "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworks/vnet1/subnets/GatewaySubnet",
///             },
///         }],
///         "location": "centralus",
///         "sku": {
///             "name": azure_native.network.VirtualNetworkGatewaySkuName.VPN_GW1,
///             "tier": azure_native.network.VirtualNetworkGatewaySkuTier.VPN_GW1,
///         },
///         "tags": {},
///         "vpn_type": azure_native.network.VpnType.ROUTE_BASED,
///     },
///     virtual_network_gateway_connection_name="connS2S")
///
/// ```
///
/// ```yaml
/// resources:
///   virtualNetworkGatewayConnection:
///     type: azure-native:network:VirtualNetworkGatewayConnection
///     properties:
///       connectionMode: Default
///       connectionProtocol: IKEv2
///       connectionType: IPsec
///       dpdTimeoutSeconds: 30
///       egressNatRules:
///         - id: /subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworkGateways/vpngw/natRules/natRule2
///       enableBgp: false
///       gatewayCustomBgpIpAddresses:
///         - customBgpIpAddress: 169.254.21.1
///           ipConfigurationId: /subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworkGateways/vpngw/ipConfigurations/default
///         - customBgpIpAddress: 169.254.21.3
///           ipConfigurationId: /subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworkGateways/vpngw/ipConfigurations/ActiveActive
///       ingressNatRules:
///         - id: /subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworkGateways/vpngw/natRules/natRule1
///       ipsecPolicies: []
///       localNetworkGateway2:
///         gatewayIpAddress: x.x.x.x
///         id: /subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/localNetworkGateways/localgw
///         localNetworkAddressSpace:
///           addressPrefixes:
///             - 10.1.0.0/16
///         location: centralus
///         tags: {}
///       location: centralus
///       resourceGroupName: rg1
///       routingWeight: 0
///       sharedKey: Abc123
///       trafficSelectorPolicies: []
///       usePolicyBasedTrafficSelectors: false
///       virtualNetworkGateway1:
///         activeActive: false
///         bgpSettings:
///           asn: 65514
///           bgpPeeringAddress: 10.0.1.30
///           peerWeight: 0
///         enableBgp: false
///         gatewayType: Vpn
///         id: /subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworkGateways/vpngw
///         ipConfigurations:
///           - id: /subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworkGateways/vpngw/ipConfigurations/gwipconfig1
///             name: gwipconfig1
///             privateIPAllocationMethod: Dynamic
///             publicIPAddress:
///               id: /subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/publicIPAddresses/gwpip
///             subnet:
///               id: /subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworks/vnet1/subnets/GatewaySubnet
///         location: centralus
///         sku:
///           name: VpnGw1
///           tier: VpnGw1
///         tags: {}
///         vpnType: RouteBased
///       virtualNetworkGatewayConnectionName: connS2S
///
/// ```
///
/// {{% /example %}}
/// {{% /examples %}}
///
/// ## Import
///
/// An existing resource can be imported using its type token, name, and identifier, e.g.
///
/// ```sh
/// $ pulumi import azure-native:network:VirtualNetworkGatewayConnection connS2S /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/connections/{virtualNetworkGatewayConnectionName}
/// ```
class VirtualNetworkGatewayConnection extends pulumi.CustomResource {
  /// The authorizationKey.
  late final pulumi.Output<String?> authorizationKey;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The connection mode for this connection.
  late final pulumi.Output<String?> connectionMode;
  /// Connection protocol used for this connection.
  late final pulumi.Output<String?> connectionProtocol;
  /// Virtual Network Gateway connection status.
  late final pulumi.Output<String> connectionStatus;
  /// Gateway connection type.
  late final pulumi.Output<String> connectionType;
  /// The dead peer detection timeout of this connection in seconds.
  late final pulumi.Output<int?> dpdTimeoutSeconds;
  /// The egress bytes transferred in this connection.
  late final pulumi.Output<double> egressBytesTransferred;
  /// List of egress NatRules.
  late final pulumi.Output<List<SubResourceResponse>?> egressNatRules;
  /// EnableBgp flag.
  late final pulumi.Output<bool?> enableBgp;
  /// Bypass the ExpressRoute gateway when accessing private-links. ExpressRoute FastPath (expressRouteGatewayBypass) must be enabled.
  late final pulumi.Output<bool?> enablePrivateLinkFastPath;
  /// A unique read-only string that changes whenever the resource is updated.
  late final pulumi.Output<String> etag;
  /// Bypass ExpressRoute Gateway for data forwarding.
  late final pulumi.Output<bool?> expressRouteGatewayBypass;
  /// GatewayCustomBgpIpAddresses to be used for virtual network gateway Connection.
  late final pulumi.Output<List<GatewayCustomBgpIpAddressIpConfigurationResponse>?> gatewayCustomBgpIpAddresses;
  /// The ingress bytes transferred in this connection.
  late final pulumi.Output<double> ingressBytesTransferred;
  /// List of ingress NatRules.
  late final pulumi.Output<List<SubResourceResponse>?> ingressNatRules;
  /// The IPSec Policies to be considered by this connection.
  late final pulumi.Output<List<IpsecPolicyResponse>?> ipsecPolicies;
  /// The reference to local network gateway resource.
  late final pulumi.Output<LocalNetworkGatewayResponse?> localNetworkGateway2;
  /// Resource location.
  late final pulumi.Output<String?> location;
  /// Resource name.
  late final pulumi.Output<String> name;
  /// The reference to peerings resource.
  late final pulumi.Output<SubResourceResponse?> peer;
  /// The provisioning state of the virtual network gateway connection resource.
  late final pulumi.Output<String> provisioningState;
  /// The resource GUID property of the virtual network gateway connection resource.
  late final pulumi.Output<String> resourceGuid;
  /// The routing weight.
  late final pulumi.Output<int?> routingWeight;
  /// The IPSec shared key.
  late final pulumi.Output<String?> sharedKey;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The Traffic Selector Policies to be considered by this connection.
  late final pulumi.Output<List<TrafficSelectorPolicyResponse>?> trafficSelectorPolicies;
  /// Collection of all tunnels' connection health status.
  late final pulumi.Output<List<TunnelConnectionHealthResponse>> tunnelConnectionStatus;
  /// Resource type.
  late final pulumi.Output<String> type;
  /// Use private local Azure IP for the connection.
  late final pulumi.Output<bool?> useLocalAzureIpAddress;
  /// Enable policy-based traffic selectors.
  late final pulumi.Output<bool?> usePolicyBasedTrafficSelectors;
  /// The reference to virtual network gateway resource.
  late final pulumi.Output<VirtualNetworkGatewayResponse> virtualNetworkGateway1;
  /// The reference to virtual network gateway resource.
  late final pulumi.Output<VirtualNetworkGatewayResponse?> virtualNetworkGateway2;

  /// Creates a new [VirtualNetworkGatewayConnection].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [VirtualNetworkGatewayConnection]. {@macro pulumi_network_virtual_network_gateway_connection_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  VirtualNetworkGatewayConnection(
    String name, {
    VirtualNetworkGatewayConnectionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:network:VirtualNetworkGatewayConnection',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    authorizationKey = registerOutput<String?>('authorizationKey');
    azureApiVersion = registerOutput<String>('azureApiVersion');
    connectionMode = registerOutput<String?>('connectionMode');
    connectionProtocol = registerOutput<String?>('connectionProtocol');
    connectionStatus = registerOutput<String>('connectionStatus');
    connectionType = registerOutput<String>('connectionType');
    dpdTimeoutSeconds = registerOutput<int?>('dpdTimeoutSeconds');
    egressBytesTransferred = registerOutput<double>('egressBytesTransferred');
    egressNatRules = registerOutput<List<SubResourceResponse>?>('egressNatRules', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<SubResourceResponse>(guardedValue, (value) => SubResourceResponse.fromMap((value as Map).cast<String, dynamic>())); });
    enableBgp = registerOutput<bool?>('enableBgp');
    enablePrivateLinkFastPath = registerOutput<bool?>('enablePrivateLinkFastPath');
    etag = registerOutput<String>('etag');
    expressRouteGatewayBypass = registerOutput<bool?>('expressRouteGatewayBypass');
    gatewayCustomBgpIpAddresses = registerOutput<List<GatewayCustomBgpIpAddressIpConfigurationResponse>?>('gatewayCustomBgpIpAddresses', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<GatewayCustomBgpIpAddressIpConfigurationResponse>(guardedValue, (value) => GatewayCustomBgpIpAddressIpConfigurationResponse.fromMap((value as Map).cast<String, dynamic>())); });
    ingressBytesTransferred = registerOutput<double>('ingressBytesTransferred');
    ingressNatRules = registerOutput<List<SubResourceResponse>?>('ingressNatRules', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<SubResourceResponse>(guardedValue, (value) => SubResourceResponse.fromMap((value as Map).cast<String, dynamic>())); });
    ipsecPolicies = registerOutput<List<IpsecPolicyResponse>?>('ipsecPolicies', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<IpsecPolicyResponse>(guardedValue, (value) => IpsecPolicyResponse.fromMap((value as Map).cast<String, dynamic>())); });
    localNetworkGateway2 = registerOutput<LocalNetworkGatewayResponse?>('localNetworkGateway2', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return LocalNetworkGatewayResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    peer = registerOutput<SubResourceResponse?>('peer', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SubResourceResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    provisioningState = registerOutput<String>('provisioningState');
    resourceGuid = registerOutput<String>('resourceGuid');
    routingWeight = registerOutput<int?>('routingWeight');
    sharedKey = registerOutput<String?>('sharedKey');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    trafficSelectorPolicies = registerOutput<List<TrafficSelectorPolicyResponse>?>('trafficSelectorPolicies', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<TrafficSelectorPolicyResponse>(guardedValue, (value) => TrafficSelectorPolicyResponse.fromMap((value as Map).cast<String, dynamic>())); });
    tunnelConnectionStatus = registerOutput<List<TunnelConnectionHealthResponse>>('tunnelConnectionStatus', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<TunnelConnectionHealthResponse>(guardedValue, (value) => TunnelConnectionHealthResponse.fromMap((value as Map).cast<String, dynamic>())); });
    type = registerOutput<String>('type');
    useLocalAzureIpAddress = registerOutput<bool?>('useLocalAzureIpAddress');
    usePolicyBasedTrafficSelectors = registerOutput<bool?>('usePolicyBasedTrafficSelectors');
    virtualNetworkGateway1 = registerOutput<VirtualNetworkGatewayResponse>('virtualNetworkGateway1', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return VirtualNetworkGatewayResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    virtualNetworkGateway2 = registerOutput<VirtualNetworkGatewayResponse?>('virtualNetworkGateway2', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return VirtualNetworkGatewayResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Creates a typed reference to an existing [VirtualNetworkGatewayConnection] resource.
  VirtualNetworkGatewayConnection.reference(String urn)
    : super(
        'azure-native:network:VirtualNetworkGatewayConnection',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    authorizationKey = registerOutput<String?>('authorizationKey');
    azureApiVersion = registerOutput<String>('azureApiVersion');
    connectionMode = registerOutput<String?>('connectionMode');
    connectionProtocol = registerOutput<String?>('connectionProtocol');
    connectionStatus = registerOutput<String>('connectionStatus');
    connectionType = registerOutput<String>('connectionType');
    dpdTimeoutSeconds = registerOutput<int?>('dpdTimeoutSeconds');
    egressBytesTransferred = registerOutput<double>('egressBytesTransferred');
    egressNatRules = registerOutput<List<SubResourceResponse>?>('egressNatRules', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<SubResourceResponse>(guardedValue, (value) => SubResourceResponse.fromMap((value as Map).cast<String, dynamic>())); });
    enableBgp = registerOutput<bool?>('enableBgp');
    enablePrivateLinkFastPath = registerOutput<bool?>('enablePrivateLinkFastPath');
    etag = registerOutput<String>('etag');
    expressRouteGatewayBypass = registerOutput<bool?>('expressRouteGatewayBypass');
    gatewayCustomBgpIpAddresses = registerOutput<List<GatewayCustomBgpIpAddressIpConfigurationResponse>?>('gatewayCustomBgpIpAddresses', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<GatewayCustomBgpIpAddressIpConfigurationResponse>(guardedValue, (value) => GatewayCustomBgpIpAddressIpConfigurationResponse.fromMap((value as Map).cast<String, dynamic>())); });
    ingressBytesTransferred = registerOutput<double>('ingressBytesTransferred');
    ingressNatRules = registerOutput<List<SubResourceResponse>?>('ingressNatRules', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<SubResourceResponse>(guardedValue, (value) => SubResourceResponse.fromMap((value as Map).cast<String, dynamic>())); });
    ipsecPolicies = registerOutput<List<IpsecPolicyResponse>?>('ipsecPolicies', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<IpsecPolicyResponse>(guardedValue, (value) => IpsecPolicyResponse.fromMap((value as Map).cast<String, dynamic>())); });
    localNetworkGateway2 = registerOutput<LocalNetworkGatewayResponse?>('localNetworkGateway2', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return LocalNetworkGatewayResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    peer = registerOutput<SubResourceResponse?>('peer', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SubResourceResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    provisioningState = registerOutput<String>('provisioningState');
    resourceGuid = registerOutput<String>('resourceGuid');
    routingWeight = registerOutput<int?>('routingWeight');
    sharedKey = registerOutput<String?>('sharedKey');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    trafficSelectorPolicies = registerOutput<List<TrafficSelectorPolicyResponse>?>('trafficSelectorPolicies', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<TrafficSelectorPolicyResponse>(guardedValue, (value) => TrafficSelectorPolicyResponse.fromMap((value as Map).cast<String, dynamic>())); });
    tunnelConnectionStatus = registerOutput<List<TunnelConnectionHealthResponse>>('tunnelConnectionStatus', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<TunnelConnectionHealthResponse>(guardedValue, (value) => TunnelConnectionHealthResponse.fromMap((value as Map).cast<String, dynamic>())); });
    type = registerOutput<String>('type');
    useLocalAzureIpAddress = registerOutput<bool?>('useLocalAzureIpAddress');
    usePolicyBasedTrafficSelectors = registerOutput<bool?>('usePolicyBasedTrafficSelectors');
    virtualNetworkGateway1 = registerOutput<VirtualNetworkGatewayResponse>('virtualNetworkGateway1', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return VirtualNetworkGatewayResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    virtualNetworkGateway2 = registerOutput<VirtualNetworkGatewayResponse?>('virtualNetworkGateway2', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return VirtualNetworkGatewayResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
