import 'package:pulumi/pulumi.dart' as pulumi;
import 'p2s_vpn_gateway_args.dart';
import 'sub_resource_response.dart';
import 'vpn_client_connection_health_response.dart';

/// P2SVpnGateway Resource.
///
/// Uses Azure REST API version 2024-05-01. In version 2.x of the Azure Native provider, it used API version 2023-02-01.
///
/// Other available API versions: 2018-08-01, 2018-10-01, 2018-11-01, 2018-12-01, 2019-02-01, 2019-04-01, 2019-06-01, 2019-07-01, 2019-08-01, 2019-09-01, 2019-11-01, 2019-12-01, 2020-03-01, 2020-04-01, 2020-05-01, 2020-06-01, 2020-07-01, 2020-08-01, 2020-11-01, 2021-02-01, 2021-03-01, 2021-05-01, 2021-08-01, 2022-01-01, 2022-05-01, 2022-07-01, 2022-09-01, 2022-11-01, 2023-02-01, 2023-04-01, 2023-05-01, 2023-06-01, 2023-09-01, 2023-11-01, 2024-01-01, 2024-03-01, 2024-07-01, 2024-10-01, 2025-01-01, 2025-03-01, 2025-05-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native network [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### P2SVpnGatewayPut
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var p2sVpnGateway = new AzureNative.Network.P2sVpnGateway("p2sVpnGateway", new()
///     {
///         CustomDnsServers = new[]
///         {
///             "1.1.1.1",
///             "2.2.2.2",
///         },
///         GatewayName = "p2sVpnGateway1",
///         IsRoutingPreferenceInternet = false,
///         Location = "West US",
///         P2SConnectionConfigurations = new[]
///         {
///             new AzureNative.Network.Inputs.P2SConnectionConfigurationArgs
///             {
///                 Id = "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/p2sVpnGateways/p2sVpnGateway1/p2sConnectionConfigurations/P2SConnectionConfig1",
///                 Name = "P2SConnectionConfig1",
///                 RoutingConfiguration = new AzureNative.Network.Inputs.RoutingConfigurationArgs
///                 {
///                     AssociatedRouteTable = new AzureNative.Network.Inputs.SubResourceArgs
///                     {
///                         Id = "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualHubs/virtualHub1/hubRouteTables/hubRouteTable1",
///                     },
///                     PropagatedRouteTables = new AzureNative.Network.Inputs.PropagatedRouteTableArgs
///                     {
///                         Ids = new[]
///                         {
///                             new AzureNative.Network.Inputs.SubResourceArgs
///                             {
///                                 Id = "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualHubs/virtualHub1/hubRouteTables/hubRouteTable1",
///                             },
///                             new AzureNative.Network.Inputs.SubResourceArgs
///                             {
///                                 Id = "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualHubs/virtualHub1/hubRouteTables/hubRouteTable2",
///                             },
///                             new AzureNative.Network.Inputs.SubResourceArgs
///                             {
///                                 Id = "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualHubs/virtualHub1/hubRouteTables/hubRouteTable3",
///                             },
///                         },
///                         Labels = new[]
///                         {
///                             "label1",
///                             "label2",
///                         },
///                     },
///                     VnetRoutes = new AzureNative.Network.Inputs.VnetRouteArgs
///                     {
///                         StaticRoutes = new() { },
///                     },
///                 },
///                 VpnClientAddressPool = new AzureNative.Network.Inputs.AddressSpaceArgs
///                 {
///                     AddressPrefixes = new[]
///                     {
///                         "101.3.0.0/16",
///                     },
///                 },
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
///         VpnGatewayScaleUnit = 1,
///         VpnServerConfiguration = new AzureNative.Network.Inputs.SubResourceArgs
///         {
///             Id = "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/vpnServerConfigurations/vpnServerConfiguration1",
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
/// 		_, err := network.NewP2sVpnGateway(ctx, "p2sVpnGateway", &network.P2sVpnGatewayArgs{
/// 			CustomDnsServers: pulumi.StringArray{
/// 				pulumi.String("1.1.1.1"),
/// 				pulumi.String("2.2.2.2"),
/// 			},
/// 			GatewayName:                 pulumi.String("p2sVpnGateway1"),
/// 			IsRoutingPreferenceInternet: pulumi.Bool(false),
/// 			Location:                    pulumi.String("West US"),
/// 			P2SConnectionConfigurations: network.P2SConnectionConfigurationArray{
/// 				&network.P2SConnectionConfigurationArgs{
/// 					Id:   pulumi.String("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/p2sVpnGateways/p2sVpnGateway1/p2sConnectionConfigurations/P2SConnectionConfig1"),
/// 					Name: pulumi.String("P2SConnectionConfig1"),
/// 					RoutingConfiguration: &network.RoutingConfigurationArgs{
/// 						AssociatedRouteTable: &network.SubResourceArgs{
/// 							Id: pulumi.String("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualHubs/virtualHub1/hubRouteTables/hubRouteTable1"),
/// 						},
/// 						PropagatedRouteTables: &network.PropagatedRouteTableArgs{
/// 							Ids: network.SubResourceArray{
/// 								&network.SubResourceArgs{
/// 									Id: pulumi.String("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualHubs/virtualHub1/hubRouteTables/hubRouteTable1"),
/// 								},
/// 								&network.SubResourceArgs{
/// 									Id: pulumi.String("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualHubs/virtualHub1/hubRouteTables/hubRouteTable2"),
/// 								},
/// 								&network.SubResourceArgs{
/// 									Id: pulumi.String("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualHubs/virtualHub1/hubRouteTables/hubRouteTable3"),
/// 								},
/// 							},
/// 							Labels: pulumi.StringArray{
/// 								pulumi.String("label1"),
/// 								pulumi.String("label2"),
/// 							},
/// 						},
/// 						VnetRoutes: &network.VnetRouteArgs{
/// 							StaticRoutes: network.StaticRouteArray{},
/// 						},
/// 					},
/// 					VpnClientAddressPool: &network.AddressSpaceArgs{
/// 						AddressPrefixes: pulumi.StringArray{
/// 							pulumi.String("101.3.0.0/16"),
/// 						},
/// 					},
/// 				},
/// 			},
/// 			ResourceGroupName: pulumi.String("rg1"),
/// 			Tags: pulumi.StringMap{
/// 				"key1": pulumi.String("value1"),
/// 			},
/// 			VirtualHub: &network.SubResourceArgs{
/// 				Id: pulumi.String("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualHubs/virtualHub1"),
/// 			},
/// 			VpnGatewayScaleUnit: pulumi.Int(1),
/// 			VpnServerConfiguration: &network.SubResourceArgs{
/// 				Id: pulumi.String("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/vpnServerConfigurations/vpnServerConfiguration1"),
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
/// import com.pulumi.azurenative.network.P2sVpnGateway;
/// import com.pulumi.azurenative.network.P2sVpnGatewayArgs;
/// import com.pulumi.azurenative.network.inputs.P2SConnectionConfigurationArgs;
/// import com.pulumi.azurenative.network.inputs.RoutingConfigurationArgs;
/// import com.pulumi.azurenative.network.inputs.SubResourceArgs;
/// import com.pulumi.azurenative.network.inputs.PropagatedRouteTableArgs;
/// import com.pulumi.azurenative.network.inputs.VnetRouteArgs;
/// import com.pulumi.azurenative.network.inputs.AddressSpaceArgs;
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
///         var p2sVpnGateway = new P2sVpnGateway("p2sVpnGateway", P2sVpnGatewayArgs.builder()
///             .customDnsServers(
///                 "1.1.1.1",
///                 "2.2.2.2")
///             .gatewayName("p2sVpnGateway1")
///             .isRoutingPreferenceInternet(false)
///             .location("West US")
///             .p2SConnectionConfigurations(P2SConnectionConfigurationArgs.builder()
///                 .id("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/p2sVpnGateways/p2sVpnGateway1/p2sConnectionConfigurations/P2SConnectionConfig1")
///                 .name("P2SConnectionConfig1")
///                 .routingConfiguration(RoutingConfigurationArgs.builder()
///                     .associatedRouteTable(SubResourceArgs.builder()
///                         .id("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualHubs/virtualHub1/hubRouteTables/hubRouteTable1")
///                         .build())
///                     .propagatedRouteTables(PropagatedRouteTableArgs.builder()
///                         .ids(
///                             SubResourceArgs.builder()
///                                 .id("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualHubs/virtualHub1/hubRouteTables/hubRouteTable1")
///                                 .build(),
///                             SubResourceArgs.builder()
///                                 .id("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualHubs/virtualHub1/hubRouteTables/hubRouteTable2")
///                                 .build(),
///                             SubResourceArgs.builder()
///                                 .id("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualHubs/virtualHub1/hubRouteTables/hubRouteTable3")
///                                 .build())
///                         .labels(
///                             "label1",
///                             "label2")
///                         .build())
///                     .vnetRoutes(VnetRouteArgs.builder()
///                         .staticRoutes()
///                         .build())
///                     .build())
///                 .vpnClientAddressPool(AddressSpaceArgs.builder()
///                     .addressPrefixes("101.3.0.0/16")
///                     .build())
///                 .build())
///             .resourceGroupName("rg1")
///             .tags(Map.of("key1", "value1"))
///             .virtualHub(SubResourceArgs.builder()
///                 .id("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualHubs/virtualHub1")
///                 .build())
///             .vpnGatewayScaleUnit(1)
///             .vpnServerConfiguration(SubResourceArgs.builder()
///                 .id("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/vpnServerConfigurations/vpnServerConfiguration1")
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
/// const p2sVpnGateway = new azure_native.network.P2sVpnGateway("p2sVpnGateway", {
///     customDnsServers: [
///         "1.1.1.1",
///         "2.2.2.2",
///     ],
///     gatewayName: "p2sVpnGateway1",
///     isRoutingPreferenceInternet: false,
///     location: "West US",
///     p2SConnectionConfigurations: [{
///         id: "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/p2sVpnGateways/p2sVpnGateway1/p2sConnectionConfigurations/P2SConnectionConfig1",
///         name: "P2SConnectionConfig1",
///         routingConfiguration: {
///             associatedRouteTable: {
///                 id: "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualHubs/virtualHub1/hubRouteTables/hubRouteTable1",
///             },
///             propagatedRouteTables: {
///                 ids: [
///                     {
///                         id: "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualHubs/virtualHub1/hubRouteTables/hubRouteTable1",
///                     },
///                     {
///                         id: "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualHubs/virtualHub1/hubRouteTables/hubRouteTable2",
///                     },
///                     {
///                         id: "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualHubs/virtualHub1/hubRouteTables/hubRouteTable3",
///                     },
///                 ],
///                 labels: [
///                     "label1",
///                     "label2",
///                 ],
///             },
///             vnetRoutes: {
///                 staticRoutes: [],
///             },
///         },
///         vpnClientAddressPool: {
///             addressPrefixes: ["101.3.0.0/16"],
///         },
///     }],
///     resourceGroupName: "rg1",
///     tags: {
///         key1: "value1",
///     },
///     virtualHub: {
///         id: "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualHubs/virtualHub1",
///     },
///     vpnGatewayScaleUnit: 1,
///     vpnServerConfiguration: {
///         id: "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/vpnServerConfigurations/vpnServerConfiguration1",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// p2s_vpn_gateway = azure_native.network.P2sVpnGateway("p2sVpnGateway",
///     custom_dns_servers=[
///         "1.1.1.1",
///         "2.2.2.2",
///     ],
///     gateway_name="p2sVpnGateway1",
///     is_routing_preference_internet=False,
///     location="West US",
///     p2_s_connection_configurations=[{
///         "id": "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/p2sVpnGateways/p2sVpnGateway1/p2sConnectionConfigurations/P2SConnectionConfig1",
///         "name": "P2SConnectionConfig1",
///         "routing_configuration": {
///             "associated_route_table": {
///                 "id": "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualHubs/virtualHub1/hubRouteTables/hubRouteTable1",
///             },
///             "propagated_route_tables": {
///                 "ids": [
///                     {
///                         "id": "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualHubs/virtualHub1/hubRouteTables/hubRouteTable1",
///                     },
///                     {
///                         "id": "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualHubs/virtualHub1/hubRouteTables/hubRouteTable2",
///                     },
///                     {
///                         "id": "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualHubs/virtualHub1/hubRouteTables/hubRouteTable3",
///                     },
///                 ],
///                 "labels": [
///                     "label1",
///                     "label2",
///                 ],
///             },
///             "vnet_routes": {
///                 "static_routes": [],
///             },
///         },
///         "vpn_client_address_pool": {
///             "address_prefixes": ["101.3.0.0/16"],
///         },
///     }],
///     resource_group_name="rg1",
///     tags={
///         "key1": "value1",
///     },
///     virtual_hub={
///         "id": "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualHubs/virtualHub1",
///     },
///     vpn_gateway_scale_unit=1,
///     vpn_server_configuration={
///         "id": "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/vpnServerConfigurations/vpnServerConfiguration1",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   p2sVpnGateway:
///     type: azure-native:network:P2sVpnGateway
///     properties:
///       customDnsServers:
///         - 1.1.1.1
///         - 2.2.2.2
///       gatewayName: p2sVpnGateway1
///       isRoutingPreferenceInternet: false
///       location: West US
///       p2SConnectionConfigurations:
///         - id: /subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/p2sVpnGateways/p2sVpnGateway1/p2sConnectionConfigurations/P2SConnectionConfig1
///           name: P2SConnectionConfig1
///           routingConfiguration:
///             associatedRouteTable:
///               id: /subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualHubs/virtualHub1/hubRouteTables/hubRouteTable1
///             propagatedRouteTables:
///               ids:
///                 - id: /subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualHubs/virtualHub1/hubRouteTables/hubRouteTable1
///                 - id: /subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualHubs/virtualHub1/hubRouteTables/hubRouteTable2
///                 - id: /subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualHubs/virtualHub1/hubRouteTables/hubRouteTable3
///               labels:
///                 - label1
///                 - label2
///             vnetRoutes:
///               staticRoutes: []
///           vpnClientAddressPool:
///             addressPrefixes:
///               - 101.3.0.0/16
///       resourceGroupName: rg1
///       tags:
///         key1: value1
///       virtualHub:
///         id: /subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualHubs/virtualHub1
///       vpnGatewayScaleUnit: 1
///       vpnServerConfiguration:
///         id: /subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/vpnServerConfigurations/vpnServerConfiguration1
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
/// $ pulumi import azure-native:network:P2sVpnGateway p2sVpnGateway1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/p2svpnGateways/{gatewayName}
/// ```
class P2sVpnGateway extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// List of all customer specified DNS servers IP addresses.
  late final pulumi.Output<List<String>?> customDnsServers;
  /// A unique read-only string that changes whenever the resource is updated.
  late final pulumi.Output<String> etag;
  /// Enable Routing Preference property for the Public IP Interface of the P2SVpnGateway.
  late final pulumi.Output<bool?> isRoutingPreferenceInternet;
  /// Resource location.
  late final pulumi.Output<String> location;
  /// Resource name.
  late final pulumi.Output<String> name;
  /// List of all p2s connection configurations of the gateway.
  late final pulumi.Output<List<Map<String, dynamic>>?> p2SConnectionConfigurations;
  /// The provisioning state of the P2S VPN gateway resource.
  late final pulumi.Output<String> provisioningState;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Resource type.
  late final pulumi.Output<String> type;
  /// The VirtualHub to which the gateway belongs.
  late final pulumi.Output<SubResourceResponse?> virtualHub;
  /// All P2S VPN clients' connection health status.
  late final pulumi.Output<VpnClientConnectionHealthResponse> vpnClientConnectionHealth;
  /// The scale unit for this p2s vpn gateway.
  late final pulumi.Output<int?> vpnGatewayScaleUnit;
  /// The VpnServerConfiguration to which the p2sVpnGateway is attached to.
  late final pulumi.Output<SubResourceResponse?> vpnServerConfiguration;

  /// Creates a new [P2sVpnGateway].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [P2sVpnGateway]. {@macro pulumi_network_p2s_vpn_gateway_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  P2sVpnGateway(
    String name, {
    P2sVpnGatewayArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:network:P2sVpnGateway',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    customDnsServers = registerOutput<List<String>?>('customDnsServers');
    etag = registerOutput<String>('etag');
    isRoutingPreferenceInternet = registerOutput<bool?>('isRoutingPreferenceInternet');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    p2SConnectionConfigurations = registerOutput<List<Map<String, dynamic>>?>('p2SConnectionConfigurations');
    provisioningState = registerOutput<String>('provisioningState');
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
    virtualHub = registerOutput<SubResourceResponse?>('virtualHub', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SubResourceResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    vpnClientConnectionHealth = registerOutput<VpnClientConnectionHealthResponse>('vpnClientConnectionHealth', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return VpnClientConnectionHealthResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    vpnGatewayScaleUnit = registerOutput<int?>('vpnGatewayScaleUnit');
    vpnServerConfiguration = registerOutput<SubResourceResponse?>('vpnServerConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SubResourceResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
