import 'package:pulumi/pulumi.dart' as pulumi;
import 'address_space_response.dart';
import 'bgp_settings_response.dart';
import 'extended_location_response.dart';
import 'managed_service_identity_response.dart';
import 'sub_resource_response.dart';
import 'virtual_network_gateway_args.dart';
import 'virtual_network_gateway_auto_scale_configuration_response.dart';
import 'virtual_network_gateway_sku_response.dart';
import 'vpn_client_configuration_response.dart';

/// A common class for general resource information.
///
/// Uses Azure REST API version 2024-05-01. In version 2.x of the Azure Native provider, it used API version 2023-02-01.
///
/// Other available API versions: 2018-06-01, 2018-07-01, 2018-08-01, 2018-10-01, 2018-11-01, 2018-12-01, 2019-02-01, 2019-04-01, 2019-06-01, 2019-07-01, 2019-08-01, 2019-09-01, 2019-11-01, 2019-12-01, 2020-03-01, 2020-04-01, 2020-05-01, 2020-06-01, 2020-07-01, 2020-08-01, 2020-11-01, 2021-02-01, 2021-03-01, 2021-05-01, 2021-08-01, 2022-01-01, 2022-05-01, 2022-07-01, 2022-09-01, 2022-11-01, 2023-02-01, 2023-04-01, 2023-05-01, 2023-06-01, 2023-09-01, 2023-11-01, 2024-01-01, 2024-03-01, 2024-07-01, 2024-10-01, 2025-01-01, 2025-03-01, 2025-05-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native network [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### UpdateVirtualNetworkGateway
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var virtualNetworkGateway = new AzureNative.Network.VirtualNetworkGateway("virtualNetworkGateway", new()
///     {
///         ActiveActive = false,
///         AllowRemoteVnetTraffic = false,
///         AllowVirtualWanTraffic = false,
///         BgpSettings = new AzureNative.Network.Inputs.BgpSettingsArgs
///         {
///             Asn = 65515,
///             BgpPeeringAddress = "10.0.1.30",
///             PeerWeight = 0,
///         },
///         CustomRoutes = new AzureNative.Network.Inputs.AddressSpaceArgs
///         {
///             AddressPrefixes = new[]
///             {
///                 "101.168.0.6/32",
///             },
///         },
///         DisableIPSecReplayProtection = false,
///         EnableBgp = false,
///         EnableBgpRouteTranslationForNat = false,
///         EnableDnsForwarding = true,
///         GatewayType = AzureNative.Network.VirtualNetworkGatewayType.Vpn,
///         IpConfigurations = new[]
///         {
///             new AzureNative.Network.Inputs.VirtualNetworkGatewayIPConfigurationArgs
///             {
///                 Name = "gwipconfig1",
///                 PrivateIPAllocationMethod = AzureNative.Network.IPAllocationMethod.Dynamic,
///                 PublicIPAddress = new AzureNative.Network.Inputs.SubResourceArgs
///                 {
///                     Id = "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/publicIPAddresses/gwpip",
///                 },
///                 Subnet = new AzureNative.Network.Inputs.SubResourceArgs
///                 {
///                     Id = "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworks/vnet1/subnets/GatewaySubnet",
///                 },
///             },
///         },
///         Location = "centralus",
///         NatRules = new[]
///         {
///             new AzureNative.Network.Inputs.VirtualNetworkGatewayNatRuleArgs
///             {
///                 ExternalMappings = new[]
///                 {
///                     new AzureNative.Network.Inputs.VpnNatRuleMappingArgs
///                     {
///                         AddressSpace = "50.0.0.0/24",
///                     },
///                 },
///                 Id = "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworkGateways/vpngw/natRules/natRule1",
///                 InternalMappings = new[]
///                 {
///                     new AzureNative.Network.Inputs.VpnNatRuleMappingArgs
///                     {
///                         AddressSpace = "10.10.0.0/24",
///                     },
///                 },
///                 IpConfigurationId = "",
///                 Mode = AzureNative.Network.VpnNatRuleMode.EgressSnat,
///                 Name = "natRule1",
///                 Type = AzureNative.Network.VpnNatRuleType.Static,
///             },
///             new AzureNative.Network.Inputs.VirtualNetworkGatewayNatRuleArgs
///             {
///                 ExternalMappings = new[]
///                 {
///                     new AzureNative.Network.Inputs.VpnNatRuleMappingArgs
///                     {
///                         AddressSpace = "30.0.0.0/24",
///                     },
///                 },
///                 Id = "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworkGateways/vpngw/natRules/natRule2",
///                 InternalMappings = new[]
///                 {
///                     new AzureNative.Network.Inputs.VpnNatRuleMappingArgs
///                     {
///                         AddressSpace = "20.10.0.0/24",
///                     },
///                 },
///                 IpConfigurationId = "",
///                 Mode = AzureNative.Network.VpnNatRuleMode.IngressSnat,
///                 Name = "natRule2",
///                 Type = AzureNative.Network.VpnNatRuleType.Static,
///             },
///         },
///         ResourceGroupName = "rg1",
///         Sku = new AzureNative.Network.Inputs.VirtualNetworkGatewaySkuArgs
///         {
///             Name = AzureNative.Network.VirtualNetworkGatewaySkuName.VpnGw1,
///             Tier = AzureNative.Network.VirtualNetworkGatewaySkuTier.VpnGw1,
///         },
///         VirtualNetworkGatewayName = "vpngw",
///         VpnClientConfiguration = new AzureNative.Network.Inputs.VpnClientConfigurationArgs
///         {
///             RadiusServers = new[]
///             {
///                 new AzureNative.Network.Inputs.RadiusServerArgs
///                 {
///                     RadiusServerAddress = "10.2.0.0",
///                     RadiusServerScore = 20,
///                     RadiusServerSecret = "radiusServerSecret",
///                 },
///             },
///             VpnClientProtocols = new[]
///             {
///                 AzureNative.Network.VpnClientProtocol.OpenVPN,
///             },
///             VpnClientRevokedCertificates = new() { },
///             VpnClientRootCertificates = new() { },
///         },
///         VpnType = AzureNative.Network.VpnType.RouteBased,
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
/// 		_, err := network.NewVirtualNetworkGateway(ctx, "virtualNetworkGateway", &network.VirtualNetworkGatewayArgs{
/// 			ActiveActive:           pulumi.Bool(false),
/// 			AllowRemoteVnetTraffic: pulumi.Bool(false),
/// 			AllowVirtualWanTraffic: pulumi.Bool(false),
/// 			BgpSettings: &network.BgpSettingsArgs{
/// 				Asn:               pulumi.Float64(65515),
/// 				BgpPeeringAddress: pulumi.String("10.0.1.30"),
/// 				PeerWeight:        pulumi.Int(0),
/// 			},
/// 			CustomRoutes: &network.AddressSpaceArgs{
/// 				AddressPrefixes: pulumi.StringArray{
/// 					pulumi.String("101.168.0.6/32"),
/// 				},
/// 			},
/// 			DisableIPSecReplayProtection:    pulumi.Bool(false),
/// 			EnableBgp:                       pulumi.Bool(false),
/// 			EnableBgpRouteTranslationForNat: pulumi.Bool(false),
/// 			EnableDnsForwarding:             pulumi.Bool(true),
/// 			GatewayType:                     pulumi.String(network.VirtualNetworkGatewayTypeVpn),
/// 			IpConfigurations: network.VirtualNetworkGatewayIPConfigurationArray{
/// 				&network.VirtualNetworkGatewayIPConfigurationArgs{
/// 					Name:                      pulumi.String("gwipconfig1"),
/// 					PrivateIPAllocationMethod: pulumi.String(network.IPAllocationMethodDynamic),
/// 					PublicIPAddress: &network.SubResourceArgs{
/// 						Id: pulumi.String("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/publicIPAddresses/gwpip"),
/// 					},
/// 					Subnet: &network.SubResourceArgs{
/// 						Id: pulumi.String("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworks/vnet1/subnets/GatewaySubnet"),
/// 					},
/// 				},
/// 			},
/// 			Location: pulumi.String("centralus"),
/// 			NatRules: network.VirtualNetworkGatewayNatRuleTypeArray{
/// 				&network.VirtualNetworkGatewayNatRuleTypeArgs{
/// 					ExternalMappings: network.VpnNatRuleMappingArray{
/// 						&network.VpnNatRuleMappingArgs{
/// 							AddressSpace: pulumi.String("50.0.0.0/24"),
/// 						},
/// 					},
/// 					Id: pulumi.String("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworkGateways/vpngw/natRules/natRule1"),
/// 					InternalMappings: network.VpnNatRuleMappingArray{
/// 						&network.VpnNatRuleMappingArgs{
/// 							AddressSpace: pulumi.String("10.10.0.0/24"),
/// 						},
/// 					},
/// 					IpConfigurationId: pulumi.String(""),
/// 					Mode:              pulumi.String(network.VpnNatRuleModeEgressSnat),
/// 					Name:              pulumi.String("natRule1"),
/// 					Type:              pulumi.String(network.VpnNatRuleTypeStatic),
/// 				},
/// 				&network.VirtualNetworkGatewayNatRuleTypeArgs{
/// 					ExternalMappings: network.VpnNatRuleMappingArray{
/// 						&network.VpnNatRuleMappingArgs{
/// 							AddressSpace: pulumi.String("30.0.0.0/24"),
/// 						},
/// 					},
/// 					Id: pulumi.String("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworkGateways/vpngw/natRules/natRule2"),
/// 					InternalMappings: network.VpnNatRuleMappingArray{
/// 						&network.VpnNatRuleMappingArgs{
/// 							AddressSpace: pulumi.String("20.10.0.0/24"),
/// 						},
/// 					},
/// 					IpConfigurationId: pulumi.String(""),
/// 					Mode:              pulumi.String(network.VpnNatRuleModeIngressSnat),
/// 					Name:              pulumi.String("natRule2"),
/// 					Type:              pulumi.String(network.VpnNatRuleTypeStatic),
/// 				},
/// 			},
/// 			ResourceGroupName: pulumi.String("rg1"),
/// 			Sku: &network.VirtualNetworkGatewaySkuArgs{
/// 				Name: pulumi.String(network.VirtualNetworkGatewaySkuNameVpnGw1),
/// 				Tier: pulumi.String(network.VirtualNetworkGatewaySkuTierVpnGw1),
/// 			},
/// 			VirtualNetworkGatewayName: pulumi.String("vpngw"),
/// 			VpnClientConfiguration: &network.VpnClientConfigurationArgs{
/// 				RadiusServers: network.RadiusServerArray{
/// 					&network.RadiusServerArgs{
/// 						RadiusServerAddress: pulumi.String("10.2.0.0"),
/// 						RadiusServerScore:   pulumi.Float64(20),
/// 						RadiusServerSecret:  pulumi.String("radiusServerSecret"),
/// 					},
/// 				},
/// 				VpnClientProtocols: pulumi.StringArray{
/// 					pulumi.String(network.VpnClientProtocolOpenVPN),
/// 				},
/// 				VpnClientRevokedCertificates: network.VpnClientRevokedCertificateArray{},
/// 				VpnClientRootCertificates:    network.VpnClientRootCertificateArray{},
/// 			},
/// 			VpnType: pulumi.String(network.VpnTypeRouteBased),
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
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.network.VirtualNetworkGateway;
/// import com.pulumi.azurenative.network.VirtualNetworkGatewayArgs;
/// import com.pulumi.azurenative.network.inputs.BgpSettingsArgs;
/// import com.pulumi.azurenative.network.inputs.AddressSpaceArgs;
/// import com.pulumi.azurenative.network.inputs.VirtualNetworkGatewayIPConfigurationArgs;
/// import com.pulumi.azurenative.network.inputs.SubResourceArgs;
/// import com.pulumi.azurenative.network.inputs.VirtualNetworkGatewayNatRuleArgs;
/// import com.pulumi.azurenative.network.inputs.VirtualNetworkGatewaySkuArgs;
/// import com.pulumi.azurenative.network.inputs.VpnClientConfigurationArgs;
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
///         var virtualNetworkGateway = new VirtualNetworkGateway("virtualNetworkGateway", VirtualNetworkGatewayArgs.builder()
///             .activeActive(false)
///             .allowRemoteVnetTraffic(false)
///             .allowVirtualWanTraffic(false)
///             .bgpSettings(BgpSettingsArgs.builder()
///                 .asn(65515.0)
///                 .bgpPeeringAddress("10.0.1.30")
///                 .peerWeight(0)
///                 .build())
///             .customRoutes(AddressSpaceArgs.builder()
///                 .addressPrefixes("101.168.0.6/32")
///                 .build())
///             .disableIPSecReplayProtection(false)
///             .enableBgp(false)
///             .enableBgpRouteTranslationForNat(false)
///             .enableDnsForwarding(true)
///             .gatewayType("Vpn")
///             .ipConfigurations(VirtualNetworkGatewayIPConfigurationArgs.builder()
///                 .name("gwipconfig1")
///                 .privateIPAllocationMethod("Dynamic")
///                 .publicIPAddress(SubResourceArgs.builder()
///                     .id("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/publicIPAddresses/gwpip")
///                     .build())
///                 .subnet(SubResourceArgs.builder()
///                     .id("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworks/vnet1/subnets/GatewaySubnet")
///                     .build())
///                 .build())
///             .location("centralus")
///             .natRules(
///                 VirtualNetworkGatewayNatRuleArgs.builder()
///                     .externalMappings(VpnNatRuleMappingArgs.builder()
///                         .addressSpace("50.0.0.0/24")
///                         .build())
///                     .id("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworkGateways/vpngw/natRules/natRule1")
///                     .internalMappings(VpnNatRuleMappingArgs.builder()
///                         .addressSpace("10.10.0.0/24")
///                         .build())
///                     .ipConfigurationId("")
///                     .mode("EgressSnat")
///                     .name("natRule1")
///                     .type("Static")
///                     .build(),
///                 VirtualNetworkGatewayNatRuleArgs.builder()
///                     .externalMappings(VpnNatRuleMappingArgs.builder()
///                         .addressSpace("30.0.0.0/24")
///                         .build())
///                     .id("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworkGateways/vpngw/natRules/natRule2")
///                     .internalMappings(VpnNatRuleMappingArgs.builder()
///                         .addressSpace("20.10.0.0/24")
///                         .build())
///                     .ipConfigurationId("")
///                     .mode("IngressSnat")
///                     .name("natRule2")
///                     .type("Static")
///                     .build())
///             .resourceGroupName("rg1")
///             .sku(VirtualNetworkGatewaySkuArgs.builder()
///                 .name("VpnGw1")
///                 .tier("VpnGw1")
///                 .build())
///             .virtualNetworkGatewayName("vpngw")
///             .vpnClientConfiguration(VpnClientConfigurationArgs.builder()
///                 .radiusServers(RadiusServerArgs.builder()
///                     .radiusServerAddress("10.2.0.0")
///                     .radiusServerScore(20.0)
///                     .radiusServerSecret("radiusServerSecret")
///                     .build())
///                 .vpnClientProtocols("OpenVPN")
///                 .vpnClientRevokedCertificates()
///                 .vpnClientRootCertificates()
///                 .build())
///             .vpnType("RouteBased")
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
/// const virtualNetworkGateway = new azure_native.network.VirtualNetworkGateway("virtualNetworkGateway", {
///     activeActive: false,
///     allowRemoteVnetTraffic: false,
///     allowVirtualWanTraffic: false,
///     bgpSettings: {
///         asn: 65515,
///         bgpPeeringAddress: "10.0.1.30",
///         peerWeight: 0,
///     },
///     customRoutes: {
///         addressPrefixes: ["101.168.0.6/32"],
///     },
///     disableIPSecReplayProtection: false,
///     enableBgp: false,
///     enableBgpRouteTranslationForNat: false,
///     enableDnsForwarding: true,
///     gatewayType: azure_native.network.VirtualNetworkGatewayType.Vpn,
///     ipConfigurations: [{
///         name: "gwipconfig1",
///         privateIPAllocationMethod: azure_native.network.IPAllocationMethod.Dynamic,
///         publicIPAddress: {
///             id: "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/publicIPAddresses/gwpip",
///         },
///         subnet: {
///             id: "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworks/vnet1/subnets/GatewaySubnet",
///         },
///     }],
///     location: "centralus",
///     natRules: [
///         {
///             externalMappings: [{
///                 addressSpace: "50.0.0.0/24",
///             }],
///             id: "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworkGateways/vpngw/natRules/natRule1",
///             internalMappings: [{
///                 addressSpace: "10.10.0.0/24",
///             }],
///             ipConfigurationId: "",
///             mode: azure_native.network.VpnNatRuleMode.EgressSnat,
///             name: "natRule1",
///             type: azure_native.network.VpnNatRuleType.Static,
///         },
///         {
///             externalMappings: [{
///                 addressSpace: "30.0.0.0/24",
///             }],
///             id: "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworkGateways/vpngw/natRules/natRule2",
///             internalMappings: [{
///                 addressSpace: "20.10.0.0/24",
///             }],
///             ipConfigurationId: "",
///             mode: azure_native.network.VpnNatRuleMode.IngressSnat,
///             name: "natRule2",
///             type: azure_native.network.VpnNatRuleType.Static,
///         },
///     ],
///     resourceGroupName: "rg1",
///     sku: {
///         name: azure_native.network.VirtualNetworkGatewaySkuName.VpnGw1,
///         tier: azure_native.network.VirtualNetworkGatewaySkuTier.VpnGw1,
///     },
///     virtualNetworkGatewayName: "vpngw",
///     vpnClientConfiguration: {
///         radiusServers: [{
///             radiusServerAddress: "10.2.0.0",
///             radiusServerScore: 20,
///             radiusServerSecret: "radiusServerSecret",
///         }],
///         vpnClientProtocols: [azure_native.network.VpnClientProtocol.OpenVPN],
///         vpnClientRevokedCertificates: [],
///         vpnClientRootCertificates: [],
///     },
///     vpnType: azure_native.network.VpnType.RouteBased,
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// virtual_network_gateway = azure_native.network.VirtualNetworkGateway("virtualNetworkGateway",
///     active_active=False,
///     allow_remote_vnet_traffic=False,
///     allow_virtual_wan_traffic=False,
///     bgp_settings={
///         "asn": 65515,
///         "bgp_peering_address": "10.0.1.30",
///         "peer_weight": 0,
///     },
///     custom_routes={
///         "address_prefixes": ["101.168.0.6/32"],
///     },
///     disable_ip_sec_replay_protection=False,
///     enable_bgp=False,
///     enable_bgp_route_translation_for_nat=False,
///     enable_dns_forwarding=True,
///     gateway_type=azure_native.network.VirtualNetworkGatewayType.VPN,
///     ip_configurations=[{
///         "name": "gwipconfig1",
///         "private_ip_allocation_method": azure_native.network.IPAllocationMethod.DYNAMIC,
///         "public_ip_address": {
///             "id": "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/publicIPAddresses/gwpip",
///         },
///         "subnet": {
///             "id": "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworks/vnet1/subnets/GatewaySubnet",
///         },
///     }],
///     location="centralus",
///     nat_rules=[
///         {
///             "external_mappings": [{
///                 "address_space": "50.0.0.0/24",
///             }],
///             "id": "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworkGateways/vpngw/natRules/natRule1",
///             "internal_mappings": [{
///                 "address_space": "10.10.0.0/24",
///             }],
///             "ip_configuration_id": "",
///             "mode": azure_native.network.VpnNatRuleMode.EGRESS_SNAT,
///             "name": "natRule1",
///             "type": azure_native.network.VpnNatRuleType.STATIC,
///         },
///         {
///             "external_mappings": [{
///                 "address_space": "30.0.0.0/24",
///             }],
///             "id": "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworkGateways/vpngw/natRules/natRule2",
///             "internal_mappings": [{
///                 "address_space": "20.10.0.0/24",
///             }],
///             "ip_configuration_id": "",
///             "mode": azure_native.network.VpnNatRuleMode.INGRESS_SNAT,
///             "name": "natRule2",
///             "type": azure_native.network.VpnNatRuleType.STATIC,
///         },
///     ],
///     resource_group_name="rg1",
///     sku={
///         "name": azure_native.network.VirtualNetworkGatewaySkuName.VPN_GW1,
///         "tier": azure_native.network.VirtualNetworkGatewaySkuTier.VPN_GW1,
///     },
///     virtual_network_gateway_name="vpngw",
///     vpn_client_configuration={
///         "radius_servers": [{
///             "radius_server_address": "10.2.0.0",
///             "radius_server_score": 20,
///             "radius_server_secret": "radiusServerSecret",
///         }],
///         "vpn_client_protocols": [azure_native.network.VpnClientProtocol.OPEN_VPN],
///         "vpn_client_revoked_certificates": [],
///         "vpn_client_root_certificates": [],
///     },
///     vpn_type=azure_native.network.VpnType.ROUTE_BASED)
///
/// ```
///
/// ```yaml
/// resources:
///   virtualNetworkGateway:
///     type: azure-native:network:VirtualNetworkGateway
///     properties:
///       activeActive: false
///       allowRemoteVnetTraffic: false
///       allowVirtualWanTraffic: false
///       bgpSettings:
///         asn: 65515
///         bgpPeeringAddress: 10.0.1.30
///         peerWeight: 0
///       customRoutes:
///         addressPrefixes:
///           - 101.168.0.6/32
///       disableIPSecReplayProtection: false
///       enableBgp: false
///       enableBgpRouteTranslationForNat: false
///       enableDnsForwarding: true
///       gatewayType: Vpn
///       ipConfigurations:
///         - name: gwipconfig1
///           privateIPAllocationMethod: Dynamic
///           publicIPAddress:
///             id: /subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/publicIPAddresses/gwpip
///           subnet:
///             id: /subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworks/vnet1/subnets/GatewaySubnet
///       location: centralus
///       natRules:
///         - externalMappings:
///             - addressSpace: 50.0.0.0/24
///           id: /subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworkGateways/vpngw/natRules/natRule1
///           internalMappings:
///             - addressSpace: 10.10.0.0/24
///           ipConfigurationId: ""
///           mode: EgressSnat
///           name: natRule1
///           type: Static
///         - externalMappings:
///             - addressSpace: 30.0.0.0/24
///           id: /subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworkGateways/vpngw/natRules/natRule2
///           internalMappings:
///             - addressSpace: 20.10.0.0/24
///           ipConfigurationId: ""
///           mode: IngressSnat
///           name: natRule2
///           type: Static
///       resourceGroupName: rg1
///       sku:
///         name: VpnGw1
///         tier: VpnGw1
///       virtualNetworkGatewayName: vpngw
///       vpnClientConfiguration:
///         radiusServers:
///           - radiusServerAddress: 10.2.0.0
///             radiusServerScore: 20
///             radiusServerSecret: radiusServerSecret
///         vpnClientProtocols:
///           - OpenVPN
///         vpnClientRevokedCertificates: []
///         vpnClientRootCertificates: []
///       vpnType: RouteBased
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### UpdateVirtualNetworkScalableGateway
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var virtualNetworkGateway = new AzureNative.Network.VirtualNetworkGateway("virtualNetworkGateway", new()
///     {
///         ActiveActive = false,
///         AllowRemoteVnetTraffic = false,
///         AllowVirtualWanTraffic = false,
///         DisableIPSecReplayProtection = false,
///         EnableBgp = false,
///         EnableBgpRouteTranslationForNat = false,
///         GatewayType = AzureNative.Network.VirtualNetworkGatewayType.ExpressRoute,
///         IpConfigurations = new[]
///         {
///             new AzureNative.Network.Inputs.VirtualNetworkGatewayIPConfigurationArgs
///             {
///                 Name = "gwipconfig1",
///                 PrivateIPAllocationMethod = AzureNative.Network.IPAllocationMethod.Static,
///                 PublicIPAddress = new AzureNative.Network.Inputs.SubResourceArgs
///                 {
///                     Id = "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/publicIPAddresses/gwpip",
///                 },
///                 Subnet = new AzureNative.Network.Inputs.SubResourceArgs
///                 {
///                     Id = "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworks/vnet1/subnets/GatewaySubnet",
///                 },
///             },
///         },
///         Location = "centralus",
///         NatRules = new[]
///         {
///             new AzureNative.Network.Inputs.VirtualNetworkGatewayNatRuleArgs
///             {
///                 ExternalMappings = new[]
///                 {
///                     new AzureNative.Network.Inputs.VpnNatRuleMappingArgs
///                     {
///                         AddressSpace = "50.0.0.0/24",
///                     },
///                 },
///                 Id = "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworkGateways/ergw/natRules/natRule1",
///                 InternalMappings = new[]
///                 {
///                     new AzureNative.Network.Inputs.VpnNatRuleMappingArgs
///                     {
///                         AddressSpace = "10.10.0.0/24",
///                     },
///                 },
///                 IpConfigurationId = "",
///                 Mode = AzureNative.Network.VpnNatRuleMode.EgressSnat,
///                 Name = "natRule1",
///                 Type = AzureNative.Network.VpnNatRuleType.Static,
///             },
///             new AzureNative.Network.Inputs.VirtualNetworkGatewayNatRuleArgs
///             {
///                 ExternalMappings = new[]
///                 {
///                     new AzureNative.Network.Inputs.VpnNatRuleMappingArgs
///                     {
///                         AddressSpace = "30.0.0.0/24",
///                     },
///                 },
///                 Id = "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworkGateways/ergw/natRules/natRule2",
///                 InternalMappings = new[]
///                 {
///                     new AzureNative.Network.Inputs.VpnNatRuleMappingArgs
///                     {
///                         AddressSpace = "20.10.0.0/24",
///                     },
///                 },
///                 IpConfigurationId = "",
///                 Mode = AzureNative.Network.VpnNatRuleMode.IngressSnat,
///                 Name = "natRule2",
///                 Type = AzureNative.Network.VpnNatRuleType.Static,
///             },
///         },
///         ResourceGroupName = "rg1",
///         Sku = new AzureNative.Network.Inputs.VirtualNetworkGatewaySkuArgs
///         {
///             Name = AzureNative.Network.VirtualNetworkGatewaySkuName.ErGwScale,
///             Tier = AzureNative.Network.VirtualNetworkGatewaySkuTier.ErGwScale,
///         },
///         VirtualNetworkGatewayName = "ergw",
///         VpnType = AzureNative.Network.VpnType.PolicyBased,
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
/// 		_, err := network.NewVirtualNetworkGateway(ctx, "virtualNetworkGateway", &network.VirtualNetworkGatewayArgs{
/// 			ActiveActive:                    pulumi.Bool(false),
/// 			AllowRemoteVnetTraffic:          pulumi.Bool(false),
/// 			AllowVirtualWanTraffic:          pulumi.Bool(false),
/// 			DisableIPSecReplayProtection:    pulumi.Bool(false),
/// 			EnableBgp:                       pulumi.Bool(false),
/// 			EnableBgpRouteTranslationForNat: pulumi.Bool(false),
/// 			GatewayType:                     pulumi.String(network.VirtualNetworkGatewayTypeExpressRoute),
/// 			IpConfigurations: network.VirtualNetworkGatewayIPConfigurationArray{
/// 				&network.VirtualNetworkGatewayIPConfigurationArgs{
/// 					Name:                      pulumi.String("gwipconfig1"),
/// 					PrivateIPAllocationMethod: pulumi.String(network.IPAllocationMethodStatic),
/// 					PublicIPAddress: &network.SubResourceArgs{
/// 						Id: pulumi.String("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/publicIPAddresses/gwpip"),
/// 					},
/// 					Subnet: &network.SubResourceArgs{
/// 						Id: pulumi.String("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworks/vnet1/subnets/GatewaySubnet"),
/// 					},
/// 				},
/// 			},
/// 			Location: pulumi.String("centralus"),
/// 			NatRules: network.VirtualNetworkGatewayNatRuleTypeArray{
/// 				&network.VirtualNetworkGatewayNatRuleTypeArgs{
/// 					ExternalMappings: network.VpnNatRuleMappingArray{
/// 						&network.VpnNatRuleMappingArgs{
/// 							AddressSpace: pulumi.String("50.0.0.0/24"),
/// 						},
/// 					},
/// 					Id: pulumi.String("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworkGateways/ergw/natRules/natRule1"),
/// 					InternalMappings: network.VpnNatRuleMappingArray{
/// 						&network.VpnNatRuleMappingArgs{
/// 							AddressSpace: pulumi.String("10.10.0.0/24"),
/// 						},
/// 					},
/// 					IpConfigurationId: pulumi.String(""),
/// 					Mode:              pulumi.String(network.VpnNatRuleModeEgressSnat),
/// 					Name:              pulumi.String("natRule1"),
/// 					Type:              pulumi.String(network.VpnNatRuleTypeStatic),
/// 				},
/// 				&network.VirtualNetworkGatewayNatRuleTypeArgs{
/// 					ExternalMappings: network.VpnNatRuleMappingArray{
/// 						&network.VpnNatRuleMappingArgs{
/// 							AddressSpace: pulumi.String("30.0.0.0/24"),
/// 						},
/// 					},
/// 					Id: pulumi.String("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworkGateways/ergw/natRules/natRule2"),
/// 					InternalMappings: network.VpnNatRuleMappingArray{
/// 						&network.VpnNatRuleMappingArgs{
/// 							AddressSpace: pulumi.String("20.10.0.0/24"),
/// 						},
/// 					},
/// 					IpConfigurationId: pulumi.String(""),
/// 					Mode:              pulumi.String(network.VpnNatRuleModeIngressSnat),
/// 					Name:              pulumi.String("natRule2"),
/// 					Type:              pulumi.String(network.VpnNatRuleTypeStatic),
/// 				},
/// 			},
/// 			ResourceGroupName: pulumi.String("rg1"),
/// 			Sku: &network.VirtualNetworkGatewaySkuArgs{
/// 				Name: pulumi.String(network.VirtualNetworkGatewaySkuNameErGwScale),
/// 				Tier: pulumi.String(network.VirtualNetworkGatewaySkuTierErGwScale),
/// 			},
/// 			VirtualNetworkGatewayName: pulumi.String("ergw"),
/// 			VpnType:                   pulumi.String(network.VpnTypePolicyBased),
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
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.network.VirtualNetworkGateway;
/// import com.pulumi.azurenative.network.VirtualNetworkGatewayArgs;
/// import com.pulumi.azurenative.network.inputs.VirtualNetworkGatewayIPConfigurationArgs;
/// import com.pulumi.azurenative.network.inputs.SubResourceArgs;
/// import com.pulumi.azurenative.network.inputs.VirtualNetworkGatewayNatRuleArgs;
/// import com.pulumi.azurenative.network.inputs.VirtualNetworkGatewaySkuArgs;
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
///         var virtualNetworkGateway = new VirtualNetworkGateway("virtualNetworkGateway", VirtualNetworkGatewayArgs.builder()
///             .activeActive(false)
///             .allowRemoteVnetTraffic(false)
///             .allowVirtualWanTraffic(false)
///             .disableIPSecReplayProtection(false)
///             .enableBgp(false)
///             .enableBgpRouteTranslationForNat(false)
///             .gatewayType("ExpressRoute")
///             .ipConfigurations(VirtualNetworkGatewayIPConfigurationArgs.builder()
///                 .name("gwipconfig1")
///                 .privateIPAllocationMethod("Static")
///                 .publicIPAddress(SubResourceArgs.builder()
///                     .id("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/publicIPAddresses/gwpip")
///                     .build())
///                 .subnet(SubResourceArgs.builder()
///                     .id("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworks/vnet1/subnets/GatewaySubnet")
///                     .build())
///                 .build())
///             .location("centralus")
///             .natRules(
///                 VirtualNetworkGatewayNatRuleArgs.builder()
///                     .externalMappings(VpnNatRuleMappingArgs.builder()
///                         .addressSpace("50.0.0.0/24")
///                         .build())
///                     .id("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworkGateways/ergw/natRules/natRule1")
///                     .internalMappings(VpnNatRuleMappingArgs.builder()
///                         .addressSpace("10.10.0.0/24")
///                         .build())
///                     .ipConfigurationId("")
///                     .mode("EgressSnat")
///                     .name("natRule1")
///                     .type("Static")
///                     .build(),
///                 VirtualNetworkGatewayNatRuleArgs.builder()
///                     .externalMappings(VpnNatRuleMappingArgs.builder()
///                         .addressSpace("30.0.0.0/24")
///                         .build())
///                     .id("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworkGateways/ergw/natRules/natRule2")
///                     .internalMappings(VpnNatRuleMappingArgs.builder()
///                         .addressSpace("20.10.0.0/24")
///                         .build())
///                     .ipConfigurationId("")
///                     .mode("IngressSnat")
///                     .name("natRule2")
///                     .type("Static")
///                     .build())
///             .resourceGroupName("rg1")
///             .sku(VirtualNetworkGatewaySkuArgs.builder()
///                 .name("ErGwScale")
///                 .tier("ErGwScale")
///                 .build())
///             .virtualNetworkGatewayName("ergw")
///             .vpnType("PolicyBased")
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
/// const virtualNetworkGateway = new azure_native.network.VirtualNetworkGateway("virtualNetworkGateway", {
///     activeActive: false,
///     allowRemoteVnetTraffic: false,
///     allowVirtualWanTraffic: false,
///     disableIPSecReplayProtection: false,
///     enableBgp: false,
///     enableBgpRouteTranslationForNat: false,
///     gatewayType: azure_native.network.VirtualNetworkGatewayType.ExpressRoute,
///     ipConfigurations: [{
///         name: "gwipconfig1",
///         privateIPAllocationMethod: azure_native.network.IPAllocationMethod.Static,
///         publicIPAddress: {
///             id: "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/publicIPAddresses/gwpip",
///         },
///         subnet: {
///             id: "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworks/vnet1/subnets/GatewaySubnet",
///         },
///     }],
///     location: "centralus",
///     natRules: [
///         {
///             externalMappings: [{
///                 addressSpace: "50.0.0.0/24",
///             }],
///             id: "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworkGateways/ergw/natRules/natRule1",
///             internalMappings: [{
///                 addressSpace: "10.10.0.0/24",
///             }],
///             ipConfigurationId: "",
///             mode: azure_native.network.VpnNatRuleMode.EgressSnat,
///             name: "natRule1",
///             type: azure_native.network.VpnNatRuleType.Static,
///         },
///         {
///             externalMappings: [{
///                 addressSpace: "30.0.0.0/24",
///             }],
///             id: "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworkGateways/ergw/natRules/natRule2",
///             internalMappings: [{
///                 addressSpace: "20.10.0.0/24",
///             }],
///             ipConfigurationId: "",
///             mode: azure_native.network.VpnNatRuleMode.IngressSnat,
///             name: "natRule2",
///             type: azure_native.network.VpnNatRuleType.Static,
///         },
///     ],
///     resourceGroupName: "rg1",
///     sku: {
///         name: azure_native.network.VirtualNetworkGatewaySkuName.ErGwScale,
///         tier: azure_native.network.VirtualNetworkGatewaySkuTier.ErGwScale,
///     },
///     virtualNetworkGatewayName: "ergw",
///     vpnType: azure_native.network.VpnType.PolicyBased,
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// virtual_network_gateway = azure_native.network.VirtualNetworkGateway("virtualNetworkGateway",
///     active_active=False,
///     allow_remote_vnet_traffic=False,
///     allow_virtual_wan_traffic=False,
///     disable_ip_sec_replay_protection=False,
///     enable_bgp=False,
///     enable_bgp_route_translation_for_nat=False,
///     gateway_type=azure_native.network.VirtualNetworkGatewayType.EXPRESS_ROUTE,
///     ip_configurations=[{
///         "name": "gwipconfig1",
///         "private_ip_allocation_method": azure_native.network.IPAllocationMethod.STATIC,
///         "public_ip_address": {
///             "id": "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/publicIPAddresses/gwpip",
///         },
///         "subnet": {
///             "id": "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworks/vnet1/subnets/GatewaySubnet",
///         },
///     }],
///     location="centralus",
///     nat_rules=[
///         {
///             "external_mappings": [{
///                 "address_space": "50.0.0.0/24",
///             }],
///             "id": "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworkGateways/ergw/natRules/natRule1",
///             "internal_mappings": [{
///                 "address_space": "10.10.0.0/24",
///             }],
///             "ip_configuration_id": "",
///             "mode": azure_native.network.VpnNatRuleMode.EGRESS_SNAT,
///             "name": "natRule1",
///             "type": azure_native.network.VpnNatRuleType.STATIC,
///         },
///         {
///             "external_mappings": [{
///                 "address_space": "30.0.0.0/24",
///             }],
///             "id": "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworkGateways/ergw/natRules/natRule2",
///             "internal_mappings": [{
///                 "address_space": "20.10.0.0/24",
///             }],
///             "ip_configuration_id": "",
///             "mode": azure_native.network.VpnNatRuleMode.INGRESS_SNAT,
///             "name": "natRule2",
///             "type": azure_native.network.VpnNatRuleType.STATIC,
///         },
///     ],
///     resource_group_name="rg1",
///     sku={
///         "name": azure_native.network.VirtualNetworkGatewaySkuName.ER_GW_SCALE,
///         "tier": azure_native.network.VirtualNetworkGatewaySkuTier.ER_GW_SCALE,
///     },
///     virtual_network_gateway_name="ergw",
///     vpn_type=azure_native.network.VpnType.POLICY_BASED)
///
/// ```
///
/// ```yaml
/// resources:
///   virtualNetworkGateway:
///     type: azure-native:network:VirtualNetworkGateway
///     properties:
///       activeActive: false
///       allowRemoteVnetTraffic: false
///       allowVirtualWanTraffic: false
///       disableIPSecReplayProtection: false
///       enableBgp: false
///       enableBgpRouteTranslationForNat: false
///       gatewayType: ExpressRoute
///       ipConfigurations:
///         - name: gwipconfig1
///           privateIPAllocationMethod: Static
///           publicIPAddress:
///             id: /subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/publicIPAddresses/gwpip
///           subnet:
///             id: /subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworks/vnet1/subnets/GatewaySubnet
///       location: centralus
///       natRules:
///         - externalMappings:
///             - addressSpace: 50.0.0.0/24
///           id: /subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworkGateways/ergw/natRules/natRule1
///           internalMappings:
///             - addressSpace: 10.10.0.0/24
///           ipConfigurationId: ""
///           mode: EgressSnat
///           name: natRule1
///           type: Static
///         - externalMappings:
///             - addressSpace: 30.0.0.0/24
///           id: /subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworkGateways/ergw/natRules/natRule2
///           internalMappings:
///             - addressSpace: 20.10.0.0/24
///           ipConfigurationId: ""
///           mode: IngressSnat
///           name: natRule2
///           type: Static
///       resourceGroupName: rg1
///       sku:
///         name: ErGwScale
///         tier: ErGwScale
///       virtualNetworkGatewayName: ergw
///       vpnType: PolicyBased
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
/// $ pulumi import azure-native:network:VirtualNetworkGateway ergw /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/virtualNetworkGateways/{virtualNetworkGatewayName}
/// ```
class VirtualNetworkGatewayNetwork extends pulumi.CustomResource {
  /// ActiveActive flag.
  late final pulumi.Output<bool?> activeActive;

  /// Property to indicate if the Express Route Gateway serves traffic when there are multiple Express Route Gateways in the vnet
  late final pulumi.Output<String?> adminState;

  /// Configure this gateway to accept traffic from other Azure Virtual Networks. This configuration does not support connectivity to Azure Virtual WAN.
  late final pulumi.Output<bool?> allowRemoteVnetTraffic;

  /// Configures this gateway to accept traffic from remote Virtual WAN networks.
  late final pulumi.Output<bool?> allowVirtualWanTraffic;

  /// Autoscale configuration for virutal network gateway
  late final pulumi.Output<VirtualNetworkGatewayAutoScaleConfigurationResponse?>
  autoScaleConfiguration;

  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// Virtual network gateway's BGP speaker settings.
  late final pulumi.Output<BgpSettingsResponse?> bgpSettings;

  /// The reference to the address space resource which represents the custom routes address space specified by the customer for virtual network gateway and VpnClient.
  late final pulumi.Output<AddressSpaceResponse?> customRoutes;

  /// disableIPSecReplayProtection flag.
  late final pulumi.Output<bool?> disableIPSecReplayProtection;

  /// Whether BGP is enabled for this virtual network gateway or not.
  late final pulumi.Output<bool?> enableBgp;

  /// EnableBgpRouteTranslationForNat flag.
  late final pulumi.Output<bool?> enableBgpRouteTranslationForNat;

  /// Whether dns forwarding is enabled or not.
  late final pulumi.Output<bool?> enableDnsForwarding;

  /// Whether private IP needs to be enabled on this gateway for connections or not.
  late final pulumi.Output<bool?> enablePrivateIpAddress;

  /// A unique read-only string that changes whenever the resource is updated.
  late final pulumi.Output<String> etag;

  /// The extended location of type local virtual network gateway.
  late final pulumi.Output<ExtendedLocationResponse?> extendedLocation;

  /// The reference to the LocalNetworkGateway resource which represents local network site having default routes. Assign Null value in case of removing existing default site setting.
  late final pulumi.Output<SubResourceResponse?> gatewayDefaultSite;

  /// The type of this virtual network gateway.
  late final pulumi.Output<String?> gatewayType;

  /// The identity of the virtual network gateway, if configured.
  late final pulumi.Output<ManagedServiceIdentityResponse?> identity;

  /// The IP address allocated by the gateway to which dns requests can be sent.
  late final pulumi.Output<String> inboundDnsForwardingEndpoint;

  /// IP configurations for virtual network gateway.
  late final pulumi.Output<List<Map<String, dynamic>>?> ipConfigurations;

  /// Resource location.
  late final pulumi.Output<String?> location;

  /// Resource name.
  late final pulumi.Output<String> name;

  /// NatRules for virtual network gateway.
  late final pulumi.Output<List<Map<String, dynamic>>?> natRules;

  /// The provisioning state of the virtual network gateway resource.
  late final pulumi.Output<String> provisioningState;

  /// Property to indicate if the Express Route Gateway has resiliency model of MultiHomed or SingleHomed
  late final pulumi.Output<String?> resiliencyModel;

  /// The resource GUID property of the virtual network gateway resource.
  late final pulumi.Output<String> resourceGuid;

  /// The reference to the VirtualNetworkGatewaySku resource which represents the SKU selected for Virtual network gateway.
  late final pulumi.Output<VirtualNetworkGatewaySkuResponse?> sku;

  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Resource type.
  late final pulumi.Output<String> type;

  /// Customer vnet resource id. VirtualNetworkGateway of type local gateway is associated with the customer vnet.
  late final pulumi.Output<String?> vNetExtendedLocationResourceId;

  /// The reference to the VirtualNetworkGatewayPolicyGroup resource which represents the available VirtualNetworkGatewayPolicyGroup for the gateway.
  late final pulumi.Output<List<Map<String, dynamic>>?>
  virtualNetworkGatewayPolicyGroups;

  /// The reference to the VpnClientConfiguration resource which represents the P2S VpnClient configurations.
  late final pulumi.Output<VpnClientConfigurationResponse?>
  vpnClientConfiguration;

  /// The generation for this VirtualNetworkGateway. Must be None if gatewayType is not VPN.
  late final pulumi.Output<String?> vpnGatewayGeneration;

  /// The type of this virtual network gateway.
  late final pulumi.Output<String?> vpnType;

  /// Creates a new [VirtualNetworkGatewayNetwork].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [VirtualNetworkGatewayNetwork]. {@macro pulumi_network_virtual_network_gateway_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  VirtualNetworkGatewayNetwork(
    String name, {
    VirtualNetworkGatewayArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:network:VirtualNetworkGateway',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    activeActive = registerOutput<bool?>('activeActive');
    adminState = registerOutput<String?>('adminState');
    allowRemoteVnetTraffic = registerOutput<bool?>('allowRemoteVnetTraffic');
    allowVirtualWanTraffic = registerOutput<bool?>('allowVirtualWanTraffic');
    autoScaleConfiguration =
        registerOutput<VirtualNetworkGatewayAutoScaleConfigurationResponse?>(
          'autoScaleConfiguration',
        );
    azureApiVersion = registerOutput<String>('azureApiVersion');
    bgpSettings = registerOutput<BgpSettingsResponse?>('bgpSettings');
    customRoutes = registerOutput<AddressSpaceResponse?>('customRoutes');
    disableIPSecReplayProtection = registerOutput<bool?>(
      'disableIPSecReplayProtection',
    );
    enableBgp = registerOutput<bool?>('enableBgp');
    enableBgpRouteTranslationForNat = registerOutput<bool?>(
      'enableBgpRouteTranslationForNat',
    );
    enableDnsForwarding = registerOutput<bool?>('enableDnsForwarding');
    enablePrivateIpAddress = registerOutput<bool?>('enablePrivateIpAddress');
    etag = registerOutput<String>('etag');
    extendedLocation = registerOutput<ExtendedLocationResponse?>(
      'extendedLocation',
    );
    gatewayDefaultSite = registerOutput<SubResourceResponse?>(
      'gatewayDefaultSite',
    );
    gatewayType = registerOutput<String?>('gatewayType');
    identity = registerOutput<ManagedServiceIdentityResponse?>('identity');
    inboundDnsForwardingEndpoint = registerOutput<String>(
      'inboundDnsForwardingEndpoint',
    );
    ipConfigurations = registerOutput<List<Map<String, dynamic>>?>(
      'ipConfigurations',
    );
    location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    natRules = registerOutput<List<Map<String, dynamic>>?>('natRules');
    provisioningState = registerOutput<String>('provisioningState');
    resiliencyModel = registerOutput<String?>('resiliencyModel');
    resourceGuid = registerOutput<String>('resourceGuid');
    sku = registerOutput<VirtualNetworkGatewaySkuResponse?>('sku');
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
    vNetExtendedLocationResourceId = registerOutput<String?>(
      'vNetExtendedLocationResourceId',
    );
    virtualNetworkGatewayPolicyGroups =
        registerOutput<List<Map<String, dynamic>>?>(
          'virtualNetworkGatewayPolicyGroups',
        );
    vpnClientConfiguration = registerOutput<VpnClientConfigurationResponse?>(
      'vpnClientConfiguration',
    );
    vpnGatewayGeneration = registerOutput<String?>('vpnGatewayGeneration');
    vpnType = registerOutput<String?>('vpnType');
  }
}
