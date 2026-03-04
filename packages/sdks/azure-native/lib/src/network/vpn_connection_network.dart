import 'package:pulumi/pulumi.dart' as pulumi;
import 'routing_configuration_response.dart';
import 'sub_resource_response.dart';
import 'vpn_connection_args.dart';

/// VpnConnection Resource.
///
/// Uses Azure REST API version 2024-05-01. In version 2.x of the Azure Native provider, it used API version 2023-02-01.
///
/// Other available API versions: 2018-06-01, 2018-07-01, 2018-08-01, 2018-10-01, 2018-11-01, 2018-12-01, 2019-02-01, 2019-04-01, 2019-06-01, 2019-07-01, 2019-08-01, 2019-09-01, 2019-11-01, 2019-12-01, 2020-03-01, 2020-04-01, 2020-05-01, 2020-06-01, 2020-07-01, 2020-08-01, 2020-11-01, 2021-02-01, 2021-03-01, 2021-05-01, 2021-08-01, 2022-01-01, 2022-05-01, 2022-07-01, 2022-09-01, 2022-11-01, 2023-02-01, 2023-04-01, 2023-05-01, 2023-06-01, 2023-09-01, 2023-11-01, 2024-01-01, 2024-03-01, 2024-07-01, 2024-10-01, 2025-01-01, 2025-03-01, 2025-05-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native network [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### VpnConnectionPut
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var vpnConnection = new AzureNative.Network.VpnConnection("vpnConnection", new()
///     {
///         ConnectionName = "vpnConnection1",
///         GatewayName = "gateway1",
///         RemoteVpnSite = new AzureNative.Network.Inputs.SubResourceArgs
///         {
///             Id = "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/vpnSites/vpnSite1",
///         },
///         ResourceGroupName = "rg1",
///         RoutingConfiguration = new AzureNative.Network.Inputs.RoutingConfigurationArgs
///         {
///             AssociatedRouteTable = new AzureNative.Network.Inputs.SubResourceArgs
///             {
///                 Id = "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualHubs/hub1/hubRouteTables/hubRouteTable1",
///             },
///             InboundRouteMap = new AzureNative.Network.Inputs.SubResourceArgs
///             {
///                 Id = "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualHubs/virtualHub1/routeMaps/routeMap1",
///             },
///             OutboundRouteMap = new AzureNative.Network.Inputs.SubResourceArgs
///             {
///                 Id = "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualHubs/virtualHub1/routeMaps/routeMap2",
///             },
///             PropagatedRouteTables = new AzureNative.Network.Inputs.PropagatedRouteTableArgs
///             {
///                 Ids = new[]
///                 {
///                     new AzureNative.Network.Inputs.SubResourceArgs
///                     {
///                         Id = "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualHubs/hub1/hubRouteTables/hubRouteTable1",
///                     },
///                     new AzureNative.Network.Inputs.SubResourceArgs
///                     {
///                         Id = "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualHubs/hub1/hubRouteTables/hubRouteTable2",
///                     },
///                     new AzureNative.Network.Inputs.SubResourceArgs
///                     {
///                         Id = "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualHubs/hub1/hubRouteTables/hubRouteTable3",
///                     },
///                 },
///                 Labels = new[]
///                 {
///                     "label1",
///                     "label2",
///                 },
///             },
///         },
///         TrafficSelectorPolicies = new[] {},
///         VpnLinkConnections = new[]
///         {
///             new AzureNative.Network.Inputs.VpnSiteLinkConnectionArgs
///             {
///                 ConnectionBandwidth = 200,
///                 Name = "Connection-Link1",
///                 SharedKey = "key",
///                 UsePolicyBasedTrafficSelectors = false,
///                 VpnConnectionProtocolType = AzureNative.Network.VirtualNetworkGatewayConnectionProtocol.IKEv2,
///                 VpnLinkConnectionMode = AzureNative.Network.VpnLinkConnectionMode.Default,
///                 VpnSiteLink = new AzureNative.Network.Inputs.SubResourceArgs
///                 {
///                     Id = "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/vpnSites/vpnSite1/vpnSiteLinks/siteLink1",
///                 },
///             },
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
/// 		_, err := network.NewVpnConnection(ctx, "vpnConnection", &network.VpnConnectionArgs{
/// 			ConnectionName: pulumi.String("vpnConnection1"),
/// 			GatewayName:    pulumi.String("gateway1"),
/// 			RemoteVpnSite: &network.SubResourceArgs{
/// 				Id: pulumi.String("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/vpnSites/vpnSite1"),
/// 			},
/// 			ResourceGroupName: pulumi.String("rg1"),
/// 			RoutingConfiguration: &network.RoutingConfigurationArgs{
/// 				AssociatedRouteTable: &network.SubResourceArgs{
/// 					Id: pulumi.String("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualHubs/hub1/hubRouteTables/hubRouteTable1"),
/// 				},
/// 				InboundRouteMap: &network.SubResourceArgs{
/// 					Id: pulumi.String("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualHubs/virtualHub1/routeMaps/routeMap1"),
/// 				},
/// 				OutboundRouteMap: &network.SubResourceArgs{
/// 					Id: pulumi.String("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualHubs/virtualHub1/routeMaps/routeMap2"),
/// 				},
/// 				PropagatedRouteTables: &network.PropagatedRouteTableArgs{
/// 					Ids: network.SubResourceArray{
/// 						&network.SubResourceArgs{
/// 							Id: pulumi.String("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualHubs/hub1/hubRouteTables/hubRouteTable1"),
/// 						},
/// 						&network.SubResourceArgs{
/// 							Id: pulumi.String("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualHubs/hub1/hubRouteTables/hubRouteTable2"),
/// 						},
/// 						&network.SubResourceArgs{
/// 							Id: pulumi.String("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualHubs/hub1/hubRouteTables/hubRouteTable3"),
/// 						},
/// 					},
/// 					Labels: pulumi.StringArray{
/// 						pulumi.String("label1"),
/// 						pulumi.String("label2"),
/// 					},
/// 				},
/// 			},
/// 			TrafficSelectorPolicies: network.TrafficSelectorPolicyArray{},
/// 			VpnLinkConnections: network.VpnSiteLinkConnectionArray{
/// 				&network.VpnSiteLinkConnectionArgs{
/// 					ConnectionBandwidth:            pulumi.Int(200),
/// 					Name:                           pulumi.String("Connection-Link1"),
/// 					SharedKey:                      pulumi.String("key"),
/// 					UsePolicyBasedTrafficSelectors: pulumi.Bool(false),
/// 					VpnConnectionProtocolType:      pulumi.String(network.VirtualNetworkGatewayConnectionProtocolIKEv2),
/// 					VpnLinkConnectionMode:          pulumi.String(network.VpnLinkConnectionModeDefault),
/// 					VpnSiteLink: &network.SubResourceArgs{
/// 						Id: pulumi.String("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/vpnSites/vpnSite1/vpnSiteLinks/siteLink1"),
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
///
/// ```
///
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.network.VpnConnection;
/// import com.pulumi.azurenative.network.VpnConnectionArgs;
/// import com.pulumi.azurenative.network.inputs.SubResourceArgs;
/// import com.pulumi.azurenative.network.inputs.RoutingConfigurationArgs;
/// import com.pulumi.azurenative.network.inputs.PropagatedRouteTableArgs;
/// import com.pulumi.azurenative.network.inputs.VpnSiteLinkConnectionArgs;
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
///         var vpnConnection = new VpnConnection("vpnConnection", VpnConnectionArgs.builder()
///             .connectionName("vpnConnection1")
///             .gatewayName("gateway1")
///             .remoteVpnSite(SubResourceArgs.builder()
///                 .id("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/vpnSites/vpnSite1")
///                 .build())
///             .resourceGroupName("rg1")
///             .routingConfiguration(RoutingConfigurationArgs.builder()
///                 .associatedRouteTable(SubResourceArgs.builder()
///                     .id("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualHubs/hub1/hubRouteTables/hubRouteTable1")
///                     .build())
///                 .inboundRouteMap(SubResourceArgs.builder()
///                     .id("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualHubs/virtualHub1/routeMaps/routeMap1")
///                     .build())
///                 .outboundRouteMap(SubResourceArgs.builder()
///                     .id("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualHubs/virtualHub1/routeMaps/routeMap2")
///                     .build())
///                 .propagatedRouteTables(PropagatedRouteTableArgs.builder()
///                     .ids(
///                         SubResourceArgs.builder()
///                             .id("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualHubs/hub1/hubRouteTables/hubRouteTable1")
///                             .build(),
///                         SubResourceArgs.builder()
///                             .id("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualHubs/hub1/hubRouteTables/hubRouteTable2")
///                             .build(),
///                         SubResourceArgs.builder()
///                             .id("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualHubs/hub1/hubRouteTables/hubRouteTable3")
///                             .build())
///                     .labels(
///                         "label1",
///                         "label2")
///                     .build())
///                 .build())
///             .trafficSelectorPolicies()
///             .vpnLinkConnections(VpnSiteLinkConnectionArgs.builder()
///                 .connectionBandwidth(200)
///                 .name("Connection-Link1")
///                 .sharedKey("key")
///                 .usePolicyBasedTrafficSelectors(false)
///                 .vpnConnectionProtocolType("IKEv2")
///                 .vpnLinkConnectionMode("Default")
///                 .vpnSiteLink(SubResourceArgs.builder()
///                     .id("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/vpnSites/vpnSite1/vpnSiteLinks/siteLink1")
///                     .build())
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
/// const vpnConnection = new azure_native.network.VpnConnection("vpnConnection", {
///     connectionName: "vpnConnection1",
///     gatewayName: "gateway1",
///     remoteVpnSite: {
///         id: "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/vpnSites/vpnSite1",
///     },
///     resourceGroupName: "rg1",
///     routingConfiguration: {
///         associatedRouteTable: {
///             id: "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualHubs/hub1/hubRouteTables/hubRouteTable1",
///         },
///         inboundRouteMap: {
///             id: "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualHubs/virtualHub1/routeMaps/routeMap1",
///         },
///         outboundRouteMap: {
///             id: "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualHubs/virtualHub1/routeMaps/routeMap2",
///         },
///         propagatedRouteTables: {
///             ids: [
///                 {
///                     id: "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualHubs/hub1/hubRouteTables/hubRouteTable1",
///                 },
///                 {
///                     id: "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualHubs/hub1/hubRouteTables/hubRouteTable2",
///                 },
///                 {
///                     id: "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualHubs/hub1/hubRouteTables/hubRouteTable3",
///                 },
///             ],
///             labels: [
///                 "label1",
///                 "label2",
///             ],
///         },
///     },
///     trafficSelectorPolicies: [],
///     vpnLinkConnections: [{
///         connectionBandwidth: 200,
///         name: "Connection-Link1",
///         sharedKey: "key",
///         usePolicyBasedTrafficSelectors: false,
///         vpnConnectionProtocolType: azure_native.network.VirtualNetworkGatewayConnectionProtocol.IKEv2,
///         vpnLinkConnectionMode: azure_native.network.VpnLinkConnectionMode.Default,
///         vpnSiteLink: {
///             id: "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/vpnSites/vpnSite1/vpnSiteLinks/siteLink1",
///         },
///     }],
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// vpn_connection = azure_native.network.VpnConnection("vpnConnection",
///     connection_name="vpnConnection1",
///     gateway_name="gateway1",
///     remote_vpn_site={
///         "id": "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/vpnSites/vpnSite1",
///     },
///     resource_group_name="rg1",
///     routing_configuration={
///         "associated_route_table": {
///             "id": "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualHubs/hub1/hubRouteTables/hubRouteTable1",
///         },
///         "inbound_route_map": {
///             "id": "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualHubs/virtualHub1/routeMaps/routeMap1",
///         },
///         "outbound_route_map": {
///             "id": "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualHubs/virtualHub1/routeMaps/routeMap2",
///         },
///         "propagated_route_tables": {
///             "ids": [
///                 {
///                     "id": "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualHubs/hub1/hubRouteTables/hubRouteTable1",
///                 },
///                 {
///                     "id": "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualHubs/hub1/hubRouteTables/hubRouteTable2",
///                 },
///                 {
///                     "id": "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualHubs/hub1/hubRouteTables/hubRouteTable3",
///                 },
///             ],
///             "labels": [
///                 "label1",
///                 "label2",
///             ],
///         },
///     },
///     traffic_selector_policies=[],
///     vpn_link_connections=[{
///         "connection_bandwidth": 200,
///         "name": "Connection-Link1",
///         "shared_key": "key",
///         "use_policy_based_traffic_selectors": False,
///         "vpn_connection_protocol_type": azure_native.network.VirtualNetworkGatewayConnectionProtocol.IK_EV2,
///         "vpn_link_connection_mode": azure_native.network.VpnLinkConnectionMode.DEFAULT,
///         "vpn_site_link": {
///             "id": "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/vpnSites/vpnSite1/vpnSiteLinks/siteLink1",
///         },
///     }])
///
/// ```
///
/// ```yaml
/// resources:
///   vpnConnection:
///     type: azure-native:network:VpnConnection
///     properties:
///       connectionName: vpnConnection1
///       gatewayName: gateway1
///       remoteVpnSite:
///         id: /subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/vpnSites/vpnSite1
///       resourceGroupName: rg1
///       routingConfiguration:
///         associatedRouteTable:
///           id: /subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualHubs/hub1/hubRouteTables/hubRouteTable1
///         inboundRouteMap:
///           id: /subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualHubs/virtualHub1/routeMaps/routeMap1
///         outboundRouteMap:
///           id: /subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualHubs/virtualHub1/routeMaps/routeMap2
///         propagatedRouteTables:
///           ids:
///             - id: /subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualHubs/hub1/hubRouteTables/hubRouteTable1
///             - id: /subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualHubs/hub1/hubRouteTables/hubRouteTable2
///             - id: /subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualHubs/hub1/hubRouteTables/hubRouteTable3
///           labels:
///             - label1
///             - label2
///       trafficSelectorPolicies: []
///       vpnLinkConnections:
///         - connectionBandwidth: 200
///           name: Connection-Link1
///           sharedKey: key
///           usePolicyBasedTrafficSelectors: false
///           vpnConnectionProtocolType: IKEv2
///           vpnLinkConnectionMode: Default
///           vpnSiteLink:
///             id: /subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/vpnSites/vpnSite1/vpnSiteLinks/siteLink1
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
/// $ pulumi import azure-native:network:VpnConnection vpnConnection1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/vpnGateways/{gatewayName}/vpnConnections/{connectionName}
/// ```
class VpnConnectionNetwork extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// Expected bandwidth in MBPS.
  late final pulumi.Output<int?> connectionBandwidth;

  /// The connection status.
  late final pulumi.Output<String> connectionStatus;

  /// DPD timeout in seconds for vpn connection.
  late final pulumi.Output<int?> dpdTimeoutSeconds;

  /// Egress bytes transferred.
  late final pulumi.Output<double> egressBytesTransferred;

  /// EnableBgp flag.
  late final pulumi.Output<bool?> enableBgp;

  /// Enable internet security.
  late final pulumi.Output<bool?> enableInternetSecurity;

  /// EnableBgp flag.
  late final pulumi.Output<bool?> enableRateLimiting;

  /// A unique read-only string that changes whenever the resource is updated.
  late final pulumi.Output<String> etag;

  /// Ingress bytes transferred.
  late final pulumi.Output<double> ingressBytesTransferred;

  /// The IPSec Policies to be considered by this connection.
  late final pulumi.Output<List<Map<String, dynamic>>?> ipsecPolicies;

  /// The name of the resource that is unique within a resource group. This name can be used to access the resource.
  late final pulumi.Output<String?> name;

  /// The provisioning state of the VPN connection resource.
  late final pulumi.Output<String> provisioningState;

  /// Id of the connected vpn site.
  late final pulumi.Output<SubResourceResponse?> remoteVpnSite;

  /// The Routing Configuration indicating the associated and propagated route tables on this connection.
  late final pulumi.Output<RoutingConfigurationResponse?> routingConfiguration;

  /// Routing weight for vpn connection.
  late final pulumi.Output<int?> routingWeight;

  /// SharedKey for the vpn connection.
  late final pulumi.Output<String?> sharedKey;

  /// The Traffic Selector Policies to be considered by this connection.
  late final pulumi.Output<List<Map<String, dynamic>>?> trafficSelectorPolicies;

  /// Use local azure ip to initiate connection.
  late final pulumi.Output<bool?> useLocalAzureIpAddress;

  /// Enable policy-based traffic selectors.
  late final pulumi.Output<bool?> usePolicyBasedTrafficSelectors;

  /// Connection protocol used for this connection.
  late final pulumi.Output<String?> vpnConnectionProtocolType;

  /// List of all vpn site link connections to the gateway.
  late final pulumi.Output<List<Map<String, dynamic>>?> vpnLinkConnections;

  /// Creates a new [VpnConnectionNetwork].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [VpnConnectionNetwork]. {@macro pulumi_network_vpn_connection_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  VpnConnectionNetwork(
    String name, {
    VpnConnectionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:network:VpnConnection',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    connectionBandwidth = registerOutput<int?>('connectionBandwidth');
    connectionStatus = registerOutput<String>('connectionStatus');
    dpdTimeoutSeconds = registerOutput<int?>('dpdTimeoutSeconds');
    egressBytesTransferred = registerOutput<double>('egressBytesTransferred');
    enableBgp = registerOutput<bool?>('enableBgp');
    enableInternetSecurity = registerOutput<bool?>('enableInternetSecurity');
    enableRateLimiting = registerOutput<bool?>('enableRateLimiting');
    etag = registerOutput<String>('etag');
    ingressBytesTransferred = registerOutput<double>('ingressBytesTransferred');
    ipsecPolicies = registerOutput<List<Map<String, dynamic>>?>(
      'ipsecPolicies',
    );
    this.name = registerOutput<String?>('name');
    provisioningState = registerOutput<String>('provisioningState');
    remoteVpnSite = registerOutput<SubResourceResponse?>('remoteVpnSite');
    routingConfiguration = registerOutput<RoutingConfigurationResponse?>(
      'routingConfiguration',
    );
    routingWeight = registerOutput<int?>('routingWeight');
    sharedKey = registerOutput<String?>('sharedKey');
    trafficSelectorPolicies = registerOutput<List<Map<String, dynamic>>?>(
      'trafficSelectorPolicies',
    );
    useLocalAzureIpAddress = registerOutput<bool?>('useLocalAzureIpAddress');
    usePolicyBasedTrafficSelectors = registerOutput<bool?>(
      'usePolicyBasedTrafficSelectors',
    );
    vpnConnectionProtocolType = registerOutput<String?>(
      'vpnConnectionProtocolType',
    );
    vpnLinkConnections = registerOutput<List<Map<String, dynamic>>?>(
      'vpnLinkConnections',
    );
  }
}
