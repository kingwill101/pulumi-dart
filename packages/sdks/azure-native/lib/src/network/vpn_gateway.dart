import 'package:pulumi/pulumi.dart' as pulumi;
import 'bgp_settings_response.dart';
import 'sub_resource_response.dart';
import 'vpn_connection_response.dart';
import 'vpn_gateway_args.dart';
import 'vpn_gateway_ip_configuration_response.dart';
import 'vpn_gateway_nat_rule_response.dart';

/// VpnGateway Resource.
///
/// Uses Azure REST API version 2024-05-01. In version 2.x of the Azure Native provider, it used API version 2023-02-01.
///
/// Other available API versions: 2018-06-01, 2018-07-01, 2018-08-01, 2018-10-01, 2018-11-01, 2018-12-01, 2019-02-01, 2019-04-01, 2019-06-01, 2019-07-01, 2019-08-01, 2019-09-01, 2019-11-01, 2019-12-01, 2020-03-01, 2020-04-01, 2020-05-01, 2020-06-01, 2020-07-01, 2020-08-01, 2020-11-01, 2021-02-01, 2021-03-01, 2021-05-01, 2021-08-01, 2022-01-01, 2022-05-01, 2022-07-01, 2022-09-01, 2022-11-01, 2023-02-01, 2023-04-01, 2023-05-01, 2023-06-01, 2023-09-01, 2023-11-01, 2024-01-01, 2024-03-01, 2024-07-01, 2024-10-01, 2025-01-01, 2025-03-01, 2025-05-01, 2025-07-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native network [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### VpnGatewayPut
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var vpnGateway = new AzureNative.Network.VpnGateway("vpnGateway", new()
///     {
///         BgpSettings = new AzureNative.Network.Inputs.BgpSettingsArgs
///         {
///             Asn = 65515,
///             BgpPeeringAddresses = new[]
///             {
///                 new AzureNative.Network.Inputs.IPConfigurationBgpPeeringAddressArgs
///                 {
///                     CustomBgpIpAddresses = new[]
///                     {
///                         "169.254.21.5",
///                     },
///                     IpconfigurationId = "Instance0",
///                 },
///                 new AzureNative.Network.Inputs.IPConfigurationBgpPeeringAddressArgs
///                 {
///                     CustomBgpIpAddresses = new[]
///                     {
///                         "169.254.21.10",
///                     },
///                     IpconfigurationId = "Instance1",
///                 },
///             },
///             PeerWeight = 0,
///         },
///         Connections = new[]
///         {
///             new AzureNative.Network.Inputs.VpnConnectionArgs
///             {
///                 Name = "vpnConnection1",
///                 RemoteVpnSite = new AzureNative.Network.Inputs.SubResourceArgs
///                 {
///                     Id = "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/vpnSites/vpnSite1",
///                 },
///                 VpnLinkConnections = new[]
///                 {
///                     new AzureNative.Network.Inputs.VpnSiteLinkConnectionArgs
///                     {
///                         ConnectionBandwidth = 200,
///                         EgressNatRules = new[]
///                         {
///                             new AzureNative.Network.Inputs.SubResourceArgs
///                             {
///                                 Id = "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/vpnGateways/gateway1/natRules/nat03",
///                             },
///                         },
///                         Name = "Connection-Link1",
///                         SharedKey = "key",
///                         VpnConnectionProtocolType = AzureNative.Network.VirtualNetworkGatewayConnectionProtocol.IKEv2,
///                         VpnSiteLink = new AzureNative.Network.Inputs.SubResourceArgs
///                         {
///                             Id = "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/vpnSites/vpnSite1/vpnSiteLinks/siteLink1",
///                         },
///                     },
///                 },
///             },
///         },
///         EnableBgpRouteTranslationForNat = false,
///         GatewayName = "gateway1",
///         IsRoutingPreferenceInternet = false,
///         Location = "westcentralus",
///         NatRules = new[]
///         {
///             new AzureNative.Network.Inputs.VpnGatewayNatRuleArgs
///             {
///                 ExternalMappings = new[]
///                 {
///                     new AzureNative.Network.Inputs.VpnNatRuleMappingArgs
///                     {
///                         AddressSpace = "192.168.0.0/26",
///                     },
///                 },
///                 InternalMappings = new[]
///                 {
///                     new AzureNative.Network.Inputs.VpnNatRuleMappingArgs
///                     {
///                         AddressSpace = "0.0.0.0/26",
///                     },
///                 },
///                 IpConfigurationId = "",
///                 Mode = AzureNative.Network.VpnNatRuleMode.EgressSnat,
///                 Name = "nat03",
///                 Type = AzureNative.Network.VpnNatRuleType.Static,
///             },
///         },
///         ResourceGroupName = "rg1",
///         Tags =
///         {
///             { "key1", "value1" },
///         },
///         VirtualHub = new AzureNative.Network.Inputs.SubResourceArgs
///         {
///             Id = "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualHubs/virtualHub1",
///         },
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
/// 		_, err := network.NewVpnGateway(ctx, "vpnGateway", &network.VpnGatewayArgs{
/// 			BgpSettings: &network.BgpSettingsArgs{
/// 				Asn: pulumi.Float64(65515),
/// 				BgpPeeringAddresses: network.IPConfigurationBgpPeeringAddressArray{
/// 					&network.IPConfigurationBgpPeeringAddressArgs{
/// 						CustomBgpIpAddresses: pulumi.StringArray{
/// 							pulumi.String("169.254.21.5"),
/// 						},
/// 						IpconfigurationId: pulumi.String("Instance0"),
/// 					},
/// 					&network.IPConfigurationBgpPeeringAddressArgs{
/// 						CustomBgpIpAddresses: pulumi.StringArray{
/// 							pulumi.String("169.254.21.10"),
/// 						},
/// 						IpconfigurationId: pulumi.String("Instance1"),
/// 					},
/// 				},
/// 				PeerWeight: pulumi.Int(0),
/// 			},
/// 			Connections: network.VpnConnectionTypeArray{
/// 				&network.VpnConnectionTypeArgs{
/// 					Name: pulumi.String("vpnConnection1"),
/// 					RemoteVpnSite: &network.SubResourceArgs{
/// 						Id: pulumi.String("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/vpnSites/vpnSite1"),
/// 					},
/// 					VpnLinkConnections: network.VpnSiteLinkConnectionArray{
/// 						&network.VpnSiteLinkConnectionArgs{
/// 							ConnectionBandwidth: pulumi.Int(200),
/// 							EgressNatRules: network.SubResourceArray{
/// 								&network.SubResourceArgs{
/// 									Id: pulumi.String("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/vpnGateways/gateway1/natRules/nat03"),
/// 								},
/// 							},
/// 							Name:                      pulumi.String("Connection-Link1"),
/// 							SharedKey:                 pulumi.String("key"),
/// 							VpnConnectionProtocolType: pulumi.String(network.VirtualNetworkGatewayConnectionProtocolIKEv2),
/// 							VpnSiteLink: &network.SubResourceArgs{
/// 								Id: pulumi.String("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/vpnSites/vpnSite1/vpnSiteLinks/siteLink1"),
/// 							},
/// 						},
/// 					},
/// 				},
/// 			},
/// 			EnableBgpRouteTranslationForNat: pulumi.Bool(false),
/// 			GatewayName:                     pulumi.String("gateway1"),
/// 			IsRoutingPreferenceInternet:     pulumi.Bool(false),
/// 			Location:                        pulumi.String("westcentralus"),
/// 			NatRules: network.VpnGatewayNatRuleArray{
/// 				&network.VpnGatewayNatRuleArgs{
/// 					ExternalMappings: network.VpnNatRuleMappingArray{
/// 						&network.VpnNatRuleMappingArgs{
/// 							AddressSpace: pulumi.String("192.168.0.0/26"),
/// 						},
/// 					},
/// 					InternalMappings: network.VpnNatRuleMappingArray{
/// 						&network.VpnNatRuleMappingArgs{
/// 							AddressSpace: pulumi.String("0.0.0.0/26"),
/// 						},
/// 					},
/// 					IpConfigurationId: pulumi.String(""),
/// 					Mode:              pulumi.String(network.VpnNatRuleModeEgressSnat),
/// 					Name:              pulumi.String("nat03"),
/// 					Type:              pulumi.String(network.VpnNatRuleTypeStatic),
/// 				},
/// 			},
/// 			ResourceGroupName: pulumi.String("rg1"),
/// 			Tags: pulumi.StringMap{
/// 				"key1": pulumi.String("value1"),
/// 			},
/// 			VirtualHub: &network.SubResourceArgs{
/// 				Id: pulumi.String("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualHubs/virtualHub1"),
/// 			},
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
/// resource "azure-native_network_vpngateway" "vpnGateway" {
///   bgp_settings = {
///     asn = 65515
///     bgp_peering_addresses = [{
///       "customBgpIpAddresses" = ["169.254.21.5"]
///       "ipconfigurationId"    = "Instance0"
///       }, {
///       "customBgpIpAddresses" = ["169.254.21.10"]
///       "ipconfigurationId"    = "Instance1"
///     }]
///     peer_weight = 0
///   }
///   connections {
///     name = "vpnConnection1"
///     remote_vpn_site = {
///       id = "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/vpnSites/vpnSite1"
///     }
///     vpn_link_connections {
///       connection_bandwidth = 200
///       egress_nat_rules {
///         id = "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/vpnGateways/gateway1/natRules/nat03"
///       }
///       name                         = "Connection-Link1"
///       shared_key                   = "key"
///       vpn_connection_protocol_type = "IKEv2"
///       vpn_site_link = {
///         id = "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/vpnSites/vpnSite1/vpnSiteLinks/siteLink1"
///       }
///     }
///   }
///   enable_bgp_route_translation_for_nat = false
///   gateway_name                         = "gateway1"
///   is_routing_preference_internet       = false
///   location                             = "westcentralus"
///   nat_rules {
///     external_mappings {
///       address_space = "192.168.0.0/26"
///     }
///     internal_mappings {
///       address_space = "0.0.0.0/26"
///     }
///     ip_configuration_id = ""
///     mode                = "EgressSnat"
///     name                = "nat03"
///     type                = "Static"
///   }
///   resource_group_name = "rg1"
///   tags = {
///     "key1" = "value1"
///   }
///   virtual_hub = {
///     id = "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualHubs/virtualHub1"
///   }
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
/// import com.pulumi.azurenative.network.VpnGateway;
/// import com.pulumi.azurenative.network.VpnGatewayArgs;
/// import com.pulumi.azurenative.network.inputs.BgpSettingsArgs;
/// import com.pulumi.azurenative.network.inputs.VpnConnectionArgs;
/// import com.pulumi.azurenative.network.inputs.SubResourceArgs;
/// import com.pulumi.azurenative.network.inputs.VpnGatewayNatRuleArgs;
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
///         var vpnGateway = new VpnGateway("vpnGateway", VpnGatewayArgs.builder()
///             .bgpSettings(BgpSettingsArgs.builder()
///                 .asn(65515.0)
///                 .bgpPeeringAddresses(
///                     IPConfigurationBgpPeeringAddressArgs.builder()
///                         .customBgpIpAddresses("169.254.21.5")
///                         .ipconfigurationId("Instance0")
///                         .build(),
///                     IPConfigurationBgpPeeringAddressArgs.builder()
///                         .customBgpIpAddresses("169.254.21.10")
///                         .ipconfigurationId("Instance1")
///                         .build())
///                 .peerWeight(0)
///                 .build())
///             .connections(VpnConnectionArgs.builder()
///                 .name("vpnConnection1")
///                 .remoteVpnSite(SubResourceArgs.builder()
///                     .id("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/vpnSites/vpnSite1")
///                     .build())
///                 .vpnLinkConnections(VpnSiteLinkConnectionArgs.builder()
///                     .connectionBandwidth(200)
///                     .egressNatRules(SubResourceArgs.builder()
///                         .id("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/vpnGateways/gateway1/natRules/nat03")
///                         .build())
///                     .name("Connection-Link1")
///                     .sharedKey("key")
///                     .vpnConnectionProtocolType("IKEv2")
///                     .vpnSiteLink(SubResourceArgs.builder()
///                         .id("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/vpnSites/vpnSite1/vpnSiteLinks/siteLink1")
///                         .build())
///                     .build())
///                 .build())
///             .enableBgpRouteTranslationForNat(false)
///             .gatewayName("gateway1")
///             .isRoutingPreferenceInternet(false)
///             .location("westcentralus")
///             .natRules(VpnGatewayNatRuleArgs.builder()
///                 .externalMappings(VpnNatRuleMappingArgs.builder()
///                     .addressSpace("192.168.0.0/26")
///                     .build())
///                 .internalMappings(VpnNatRuleMappingArgs.builder()
///                     .addressSpace("0.0.0.0/26")
///                     .build())
///                 .ipConfigurationId("")
///                 .mode("EgressSnat")
///                 .name("nat03")
///                 .type("Static")
///                 .build())
///             .resourceGroupName("rg1")
///             .tags(Map.of("key1", "value1"))
///             .virtualHub(SubResourceArgs.builder()
///                 .id("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualHubs/virtualHub1")
///                 .build())
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
/// const vpnGateway = new azure_native.network.VpnGateway("vpnGateway", {
///     bgpSettings: {
///         asn: 65515,
///         bgpPeeringAddresses: [
///             {
///                 customBgpIpAddresses: ["169.254.21.5"],
///                 ipconfigurationId: "Instance0",
///             },
///             {
///                 customBgpIpAddresses: ["169.254.21.10"],
///                 ipconfigurationId: "Instance1",
///             },
///         ],
///         peerWeight: 0,
///     },
///     connections: [{
///         name: "vpnConnection1",
///         remoteVpnSite: {
///             id: "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/vpnSites/vpnSite1",
///         },
///         vpnLinkConnections: [{
///             connectionBandwidth: 200,
///             egressNatRules: [{
///                 id: "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/vpnGateways/gateway1/natRules/nat03",
///             }],
///             name: "Connection-Link1",
///             sharedKey: "key",
///             vpnConnectionProtocolType: azure_native.network.VirtualNetworkGatewayConnectionProtocol.IKEv2,
///             vpnSiteLink: {
///                 id: "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/vpnSites/vpnSite1/vpnSiteLinks/siteLink1",
///             },
///         }],
///     }],
///     enableBgpRouteTranslationForNat: false,
///     gatewayName: "gateway1",
///     isRoutingPreferenceInternet: false,
///     location: "westcentralus",
///     natRules: [{
///         externalMappings: [{
///             addressSpace: "192.168.0.0/26",
///         }],
///         internalMappings: [{
///             addressSpace: "0.0.0.0/26",
///         }],
///         ipConfigurationId: "",
///         mode: azure_native.network.VpnNatRuleMode.EgressSnat,
///         name: "nat03",
///         type: azure_native.network.VpnNatRuleType.Static,
///     }],
///     resourceGroupName: "rg1",
///     tags: {
///         key1: "value1",
///     },
///     virtualHub: {
///         id: "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualHubs/virtualHub1",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// vpn_gateway = azure_native.network.VpnGateway("vpnGateway",
///     bgp_settings={
///         "asn": float(65515),
///         "bgp_peering_addresses": [
///             {
///                 "custom_bgp_ip_addresses": ["169.254.21.5"],
///                 "ipconfiguration_id": "Instance0",
///             },
///             {
///                 "custom_bgp_ip_addresses": ["169.254.21.10"],
///                 "ipconfiguration_id": "Instance1",
///             },
///         ],
///         "peer_weight": 0,
///     },
///     connections=[{
///         "name": "vpnConnection1",
///         "remote_vpn_site": {
///             "id": "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/vpnSites/vpnSite1",
///         },
///         "vpn_link_connections": [{
///             "connection_bandwidth": 200,
///             "egress_nat_rules": [{
///                 "id": "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/vpnGateways/gateway1/natRules/nat03",
///             }],
///             "name": "Connection-Link1",
///             "shared_key": "key",
///             "vpn_connection_protocol_type": azure_native.network.VirtualNetworkGatewayConnectionProtocol.IK_EV2,
///             "vpn_site_link": {
///                 "id": "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/vpnSites/vpnSite1/vpnSiteLinks/siteLink1",
///             },
///         }],
///     }],
///     enable_bgp_route_translation_for_nat=False,
///     gateway_name="gateway1",
///     is_routing_preference_internet=False,
///     location="westcentralus",
///     nat_rules=[{
///         "external_mappings": [{
///             "address_space": "192.168.0.0/26",
///         }],
///         "internal_mappings": [{
///             "address_space": "0.0.0.0/26",
///         }],
///         "ip_configuration_id": "",
///         "mode": azure_native.network.VpnNatRuleMode.EGRESS_SNAT,
///         "name": "nat03",
///         "type": azure_native.network.VpnNatRuleType.STATIC,
///     }],
///     resource_group_name="rg1",
///     tags={
///         "key1": "value1",
///     },
///     virtual_hub={
///         "id": "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualHubs/virtualHub1",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   vpnGateway:
///     type: azure-native:network:VpnGateway
///     properties:
///       bgpSettings:
///         asn: 65515
///         bgpPeeringAddresses:
///           - customBgpIpAddresses:
///               - 169.254.21.5
///             ipconfigurationId: Instance0
///           - customBgpIpAddresses:
///               - 169.254.21.10
///             ipconfigurationId: Instance1
///         peerWeight: 0
///       connections:
///         - name: vpnConnection1
///           remoteVpnSite:
///             id: /subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/vpnSites/vpnSite1
///           vpnLinkConnections:
///             - connectionBandwidth: 200
///               egressNatRules:
///                 - id: /subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/vpnGateways/gateway1/natRules/nat03
///               name: Connection-Link1
///               sharedKey: key
///               vpnConnectionProtocolType: IKEv2
///               vpnSiteLink:
///                 id: /subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/vpnSites/vpnSite1/vpnSiteLinks/siteLink1
///       enableBgpRouteTranslationForNat: false
///       gatewayName: gateway1
///       isRoutingPreferenceInternet: false
///       location: westcentralus
///       natRules:
///         - externalMappings:
///             - addressSpace: 192.168.0.0/26
///           internalMappings:
///             - addressSpace: 0.0.0.0/26
///           ipConfigurationId: ""
///           mode: EgressSnat
///           name: nat03
///           type: Static
///       resourceGroupName: rg1
///       tags:
///         key1: value1
///       virtualHub:
///         id: /subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualHubs/virtualHub1
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
/// $ pulumi import azure-native:network:VpnGateway gateway1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/vpnGateways/{gatewayName}
/// ```
class VpnGateway extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Local network gateway's BGP speaker settings.
  late final pulumi.Output<BgpSettingsResponse?> bgpSettings;
  /// List of all vpn connections to the gateway.
  late final pulumi.Output<List<VpnConnectionResponse>?> connections;
  /// Enable BGP routes translation for NAT on this VpnGateway.
  late final pulumi.Output<bool?> enableBgpRouteTranslationForNat;
  /// A unique read-only string that changes whenever the resource is updated.
  late final pulumi.Output<String> etag;
  /// List of all IPs configured on the gateway.
  late final pulumi.Output<List<VpnGatewayIpConfigurationResponse>> ipConfigurations;
  /// Enable Routing Preference property for the Public IP Interface of the VpnGateway.
  late final pulumi.Output<bool?> isRoutingPreferenceInternet;
  /// Resource location.
  late final pulumi.Output<String> location;
  /// Resource name.
  late final pulumi.Output<String> name;
  /// List of all the nat Rules associated with the gateway.
  late final pulumi.Output<List<VpnGatewayNatRuleResponse>?> natRules;
  /// The provisioning state of the VPN gateway resource.
  late final pulumi.Output<String> provisioningState;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Resource type.
  late final pulumi.Output<String> type;
  /// The VirtualHub to which the gateway belongs.
  late final pulumi.Output<SubResourceResponse?> virtualHub;
  /// The scale unit for this vpn gateway.
  late final pulumi.Output<int?> vpnGatewayScaleUnit;

  /// Creates a new [VpnGateway].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [VpnGateway]. {@macro pulumi_network_vpn_gateway_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  VpnGateway(
    String name, {
    VpnGatewayArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:network:VpnGateway',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    bgpSettings = registerOutput<BgpSettingsResponse?>('bgpSettings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return BgpSettingsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    connections = registerOutput<List<VpnConnectionResponse>?>('connections', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<VpnConnectionResponse>(guardedValue, (value) => VpnConnectionResponse.fromMap((value as Map).cast<String, dynamic>())); });
    enableBgpRouteTranslationForNat = registerOutput<bool?>('enableBgpRouteTranslationForNat');
    etag = registerOutput<String>('etag');
    ipConfigurations = registerOutput<List<VpnGatewayIpConfigurationResponse>>('ipConfigurations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<VpnGatewayIpConfigurationResponse>(guardedValue, (value) => VpnGatewayIpConfigurationResponse.fromMap((value as Map).cast<String, dynamic>())); });
    isRoutingPreferenceInternet = registerOutput<bool?>('isRoutingPreferenceInternet');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    natRules = registerOutput<List<VpnGatewayNatRuleResponse>?>('natRules', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<VpnGatewayNatRuleResponse>(guardedValue, (value) => VpnGatewayNatRuleResponse.fromMap((value as Map).cast<String, dynamic>())); });
    provisioningState = registerOutput<String>('provisioningState');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
    virtualHub = registerOutput<SubResourceResponse?>('virtualHub', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SubResourceResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    vpnGatewayScaleUnit = registerOutput<int?>('vpnGatewayScaleUnit');
  }

  /// Creates a typed reference to an existing [VpnGateway] resource.
  VpnGateway.reference(String urn)
    : super(
        'azure-native:network:VpnGateway',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    bgpSettings = registerOutput<BgpSettingsResponse?>('bgpSettings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return BgpSettingsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    connections = registerOutput<List<VpnConnectionResponse>?>('connections', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<VpnConnectionResponse>(guardedValue, (value) => VpnConnectionResponse.fromMap((value as Map).cast<String, dynamic>())); });
    enableBgpRouteTranslationForNat = registerOutput<bool?>('enableBgpRouteTranslationForNat');
    etag = registerOutput<String>('etag');
    ipConfigurations = registerOutput<List<VpnGatewayIpConfigurationResponse>>('ipConfigurations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<VpnGatewayIpConfigurationResponse>(guardedValue, (value) => VpnGatewayIpConfigurationResponse.fromMap((value as Map).cast<String, dynamic>())); });
    isRoutingPreferenceInternet = registerOutput<bool?>('isRoutingPreferenceInternet');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    natRules = registerOutput<List<VpnGatewayNatRuleResponse>?>('natRules', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<VpnGatewayNatRuleResponse>(guardedValue, (value) => VpnGatewayNatRuleResponse.fromMap((value as Map).cast<String, dynamic>())); });
    provisioningState = registerOutput<String>('provisioningState');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
    virtualHub = registerOutput<SubResourceResponse?>('virtualHub', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SubResourceResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    vpnGatewayScaleUnit = registerOutput<int?>('vpnGatewayScaleUnit');
  }
}
