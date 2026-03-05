import 'package:pulumi/pulumi.dart' as pulumi;
import 'hub_virtual_network_connection_args.dart';
import 'routing_configuration_response.dart';
import 'sub_resource_response.dart';

/// HubVirtualNetworkConnection Resource.
///
/// Uses Azure REST API version 2024-05-01. In version 2.x of the Azure Native provider, it used API version 2023-02-01.
///
/// Other available API versions: 2020-05-01, 2020-06-01, 2020-07-01, 2020-08-01, 2020-11-01, 2021-02-01, 2021-03-01, 2021-05-01, 2021-08-01, 2022-01-01, 2022-05-01, 2022-07-01, 2022-09-01, 2022-11-01, 2023-02-01, 2023-04-01, 2023-05-01, 2023-06-01, 2023-09-01, 2023-11-01, 2024-01-01, 2024-03-01, 2024-07-01, 2024-10-01, 2025-01-01, 2025-03-01, 2025-05-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native network [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### HubVirtualNetworkConnectionPut
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var hubVirtualNetworkConnection = new AzureNative.Network.HubVirtualNetworkConnection("hubVirtualNetworkConnection", new()
///     {
///         ConnectionName = "connection1",
///         EnableInternetSecurity = false,
///         RemoteVirtualNetwork = new AzureNative.Network.Inputs.SubResourceArgs
///         {
///             Id = "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworks/SpokeVnet1",
///         },
///         ResourceGroupName = "rg1",
///         RoutingConfiguration = new AzureNative.Network.Inputs.RoutingConfigurationArgs
///         {
///             AssociatedRouteTable = new AzureNative.Network.Inputs.SubResourceArgs
///             {
///                 Id = "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualHubs/virtualHub1/hubRouteTables/hubRouteTable1",
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
///                         Id = "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualHubs/virtualHub1/hubRouteTables/hubRouteTable1",
///                     },
///                 },
///                 Labels = new[]
///                 {
///                     "label1",
///                     "label2",
///                 },
///             },
///             VnetRoutes = new AzureNative.Network.Inputs.VnetRouteArgs
///             {
///                 StaticRoutes = new[]
///                 {
///                     new AzureNative.Network.Inputs.StaticRouteArgs
///                     {
///                         AddressPrefixes = new[]
///                         {
///                             "10.1.0.0/16",
///                             "10.2.0.0/16",
///                         },
///                         Name = "route1",
///                         NextHopIpAddress = "10.0.0.68",
///                     },
///                     new AzureNative.Network.Inputs.StaticRouteArgs
///                     {
///                         AddressPrefixes = new[]
///                         {
///                             "10.3.0.0/16",
///                             "10.4.0.0/16",
///                         },
///                         Name = "route2",
///                         NextHopIpAddress = "10.0.0.65",
///                     },
///                 },
///                 StaticRoutesConfig = new AzureNative.Network.Inputs.StaticRoutesConfigArgs
///                 {
///                     VnetLocalRouteOverrideCriteria = AzureNative.Network.VnetLocalRouteOverrideCriteria.Equal,
///                 },
///             },
///         },
///         VirtualHubName = "virtualHub1",
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
/// 		_, err := network.NewHubVirtualNetworkConnection(ctx, "hubVirtualNetworkConnection", &network.HubVirtualNetworkConnectionArgs{
/// 			ConnectionName:         pulumi.String("connection1"),
/// 			EnableInternetSecurity: pulumi.Bool(false),
/// 			RemoteVirtualNetwork: &network.SubResourceArgs{
/// 				Id: pulumi.String("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworks/SpokeVnet1"),
/// 			},
/// 			ResourceGroupName: pulumi.String("rg1"),
/// 			RoutingConfiguration: &network.RoutingConfigurationArgs{
/// 				AssociatedRouteTable: &network.SubResourceArgs{
/// 					Id: pulumi.String("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualHubs/virtualHub1/hubRouteTables/hubRouteTable1"),
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
/// 							Id: pulumi.String("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualHubs/virtualHub1/hubRouteTables/hubRouteTable1"),
/// 						},
/// 					},
/// 					Labels: pulumi.StringArray{
/// 						pulumi.String("label1"),
/// 						pulumi.String("label2"),
/// 					},
/// 				},
/// 				VnetRoutes: &network.VnetRouteArgs{
/// 					StaticRoutes: network.StaticRouteArray{
/// 						&network.StaticRouteArgs{
/// 							AddressPrefixes: pulumi.StringArray{
/// 								pulumi.String("10.1.0.0/16"),
/// 								pulumi.String("10.2.0.0/16"),
/// 							},
/// 							Name:             pulumi.String("route1"),
/// 							NextHopIpAddress: pulumi.String("10.0.0.68"),
/// 						},
/// 						&network.StaticRouteArgs{
/// 							AddressPrefixes: pulumi.StringArray{
/// 								pulumi.String("10.3.0.0/16"),
/// 								pulumi.String("10.4.0.0/16"),
/// 							},
/// 							Name:             pulumi.String("route2"),
/// 							NextHopIpAddress: pulumi.String("10.0.0.65"),
/// 						},
/// 					},
/// 					StaticRoutesConfig: &network.StaticRoutesConfigArgs{
/// 						VnetLocalRouteOverrideCriteria: pulumi.String(network.VnetLocalRouteOverrideCriteriaEqual),
/// 					},
/// 				},
/// 			},
/// 			VirtualHubName: pulumi.String("virtualHub1"),
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
/// import com.pulumi.azurenative.network.HubVirtualNetworkConnection;
/// import com.pulumi.azurenative.network.HubVirtualNetworkConnectionArgs;
/// import com.pulumi.azurenative.network.inputs.SubResourceArgs;
/// import com.pulumi.azurenative.network.inputs.RoutingConfigurationArgs;
/// import com.pulumi.azurenative.network.inputs.PropagatedRouteTableArgs;
/// import com.pulumi.azurenative.network.inputs.VnetRouteArgs;
/// import com.pulumi.azurenative.network.inputs.StaticRoutesConfigArgs;
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
///         var hubVirtualNetworkConnection = new HubVirtualNetworkConnection("hubVirtualNetworkConnection", HubVirtualNetworkConnectionArgs.builder()
///             .connectionName("connection1")
///             .enableInternetSecurity(false)
///             .remoteVirtualNetwork(SubResourceArgs.builder()
///                 .id("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworks/SpokeVnet1")
///                 .build())
///             .resourceGroupName("rg1")
///             .routingConfiguration(RoutingConfigurationArgs.builder()
///                 .associatedRouteTable(SubResourceArgs.builder()
///                     .id("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualHubs/virtualHub1/hubRouteTables/hubRouteTable1")
///                     .build())
///                 .inboundRouteMap(SubResourceArgs.builder()
///                     .id("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualHubs/virtualHub1/routeMaps/routeMap1")
///                     .build())
///                 .outboundRouteMap(SubResourceArgs.builder()
///                     .id("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualHubs/virtualHub1/routeMaps/routeMap2")
///                     .build())
///                 .propagatedRouteTables(PropagatedRouteTableArgs.builder()
///                     .ids(SubResourceArgs.builder()
///                         .id("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualHubs/virtualHub1/hubRouteTables/hubRouteTable1")
///                         .build())
///                     .labels(
///                         "label1",
///                         "label2")
///                     .build())
///                 .vnetRoutes(VnetRouteArgs.builder()
///                     .staticRoutes(
///                         StaticRouteArgs.builder()
///                             .addressPrefixes(
///                                 "10.1.0.0/16",
///                                 "10.2.0.0/16")
///                             .name("route1")
///                             .nextHopIpAddress("10.0.0.68")
///                             .build(),
///                         StaticRouteArgs.builder()
///                             .addressPrefixes(
///                                 "10.3.0.0/16",
///                                 "10.4.0.0/16")
///                             .name("route2")
///                             .nextHopIpAddress("10.0.0.65")
///                             .build())
///                     .staticRoutesConfig(StaticRoutesConfigArgs.builder()
///                         .vnetLocalRouteOverrideCriteria("Equal")
///                         .build())
///                     .build())
///                 .build())
///             .virtualHubName("virtualHub1")
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
/// const hubVirtualNetworkConnection = new azure_native.network.HubVirtualNetworkConnection("hubVirtualNetworkConnection", {
///     connectionName: "connection1",
///     enableInternetSecurity: false,
///     remoteVirtualNetwork: {
///         id: "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworks/SpokeVnet1",
///     },
///     resourceGroupName: "rg1",
///     routingConfiguration: {
///         associatedRouteTable: {
///             id: "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualHubs/virtualHub1/hubRouteTables/hubRouteTable1",
///         },
///         inboundRouteMap: {
///             id: "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualHubs/virtualHub1/routeMaps/routeMap1",
///         },
///         outboundRouteMap: {
///             id: "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualHubs/virtualHub1/routeMaps/routeMap2",
///         },
///         propagatedRouteTables: {
///             ids: [{
///                 id: "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualHubs/virtualHub1/hubRouteTables/hubRouteTable1",
///             }],
///             labels: [
///                 "label1",
///                 "label2",
///             ],
///         },
///         vnetRoutes: {
///             staticRoutes: [
///                 {
///                     addressPrefixes: [
///                         "10.1.0.0/16",
///                         "10.2.0.0/16",
///                     ],
///                     name: "route1",
///                     nextHopIpAddress: "10.0.0.68",
///                 },
///                 {
///                     addressPrefixes: [
///                         "10.3.0.0/16",
///                         "10.4.0.0/16",
///                     ],
///                     name: "route2",
///                     nextHopIpAddress: "10.0.0.65",
///                 },
///             ],
///             staticRoutesConfig: {
///                 vnetLocalRouteOverrideCriteria: azure_native.network.VnetLocalRouteOverrideCriteria.Equal,
///             },
///         },
///     },
///     virtualHubName: "virtualHub1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// hub_virtual_network_connection = azure_native.network.HubVirtualNetworkConnection("hubVirtualNetworkConnection",
///     connection_name="connection1",
///     enable_internet_security=False,
///     remote_virtual_network={
///         "id": "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworks/SpokeVnet1",
///     },
///     resource_group_name="rg1",
///     routing_configuration={
///         "associated_route_table": {
///             "id": "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualHubs/virtualHub1/hubRouteTables/hubRouteTable1",
///         },
///         "inbound_route_map": {
///             "id": "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualHubs/virtualHub1/routeMaps/routeMap1",
///         },
///         "outbound_route_map": {
///             "id": "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualHubs/virtualHub1/routeMaps/routeMap2",
///         },
///         "propagated_route_tables": {
///             "ids": [{
///                 "id": "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualHubs/virtualHub1/hubRouteTables/hubRouteTable1",
///             }],
///             "labels": [
///                 "label1",
///                 "label2",
///             ],
///         },
///         "vnet_routes": {
///             "static_routes": [
///                 {
///                     "address_prefixes": [
///                         "10.1.0.0/16",
///                         "10.2.0.0/16",
///                     ],
///                     "name": "route1",
///                     "next_hop_ip_address": "10.0.0.68",
///                 },
///                 {
///                     "address_prefixes": [
///                         "10.3.0.0/16",
///                         "10.4.0.0/16",
///                     ],
///                     "name": "route2",
///                     "next_hop_ip_address": "10.0.0.65",
///                 },
///             ],
///             "static_routes_config": {
///                 "vnet_local_route_override_criteria": azure_native.network.VnetLocalRouteOverrideCriteria.EQUAL,
///             },
///         },
///     },
///     virtual_hub_name="virtualHub1")
///
/// ```
///
/// ```yaml
/// resources:
///   hubVirtualNetworkConnection:
///     type: azure-native:network:HubVirtualNetworkConnection
///     properties:
///       connectionName: connection1
///       enableInternetSecurity: false
///       remoteVirtualNetwork:
///         id: /subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworks/SpokeVnet1
///       resourceGroupName: rg1
///       routingConfiguration:
///         associatedRouteTable:
///           id: /subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualHubs/virtualHub1/hubRouteTables/hubRouteTable1
///         inboundRouteMap:
///           id: /subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualHubs/virtualHub1/routeMaps/routeMap1
///         outboundRouteMap:
///           id: /subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualHubs/virtualHub1/routeMaps/routeMap2
///         propagatedRouteTables:
///           ids:
///             - id: /subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualHubs/virtualHub1/hubRouteTables/hubRouteTable1
///           labels:
///             - label1
///             - label2
///         vnetRoutes:
///           staticRoutes:
///             - addressPrefixes:
///                 - 10.1.0.0/16
///                 - 10.2.0.0/16
///               name: route1
///               nextHopIpAddress: 10.0.0.68
///             - addressPrefixes:
///                 - 10.3.0.0/16
///                 - 10.4.0.0/16
///               name: route2
///               nextHopIpAddress: 10.0.0.65
///           staticRoutesConfig:
///             vnetLocalRouteOverrideCriteria: Equal
///       virtualHubName: virtualHub1
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
/// $ pulumi import azure-native:network:HubVirtualNetworkConnection connection1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/virtualHubs/{virtualHubName}/hubVirtualNetworkConnections/{connectionName}
/// ```
class HubVirtualNetworkConnection extends pulumi.CustomResource {
  /// Deprecated: VirtualHub to RemoteVnet transit to enabled or not.
  late final pulumi.Output<bool?> allowHubToRemoteVnetTransit;
  /// Deprecated: Allow RemoteVnet to use Virtual Hub's gateways.
  late final pulumi.Output<bool?> allowRemoteVnetToUseHubVnetGateways;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Enable internet security.
  late final pulumi.Output<bool?> enableInternetSecurity;
  /// A unique read-only string that changes whenever the resource is updated.
  late final pulumi.Output<String> etag;
  /// The name of the resource that is unique within a resource group. This name can be used to access the resource.
  late final pulumi.Output<String?> name;
  /// The provisioning state of the hub virtual network connection resource.
  late final pulumi.Output<String> provisioningState;
  /// Reference to the remote virtual network.
  late final pulumi.Output<SubResourceResponse?> remoteVirtualNetwork;
  /// The Routing Configuration indicating the associated and propagated route tables on this connection.
  late final pulumi.Output<RoutingConfigurationResponse?> routingConfiguration;

  /// Creates a new [HubVirtualNetworkConnection].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [HubVirtualNetworkConnection]. {@macro pulumi_network_hub_virtual_network_connection_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  HubVirtualNetworkConnection(
    String name, {
    HubVirtualNetworkConnectionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:network:HubVirtualNetworkConnection',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    allowHubToRemoteVnetTransit = registerOutput<bool?>('allowHubToRemoteVnetTransit');
    allowRemoteVnetToUseHubVnetGateways = registerOutput<bool?>('allowRemoteVnetToUseHubVnetGateways');
    azureApiVersion = registerOutput<String>('azureApiVersion');
    enableInternetSecurity = registerOutput<bool?>('enableInternetSecurity');
    etag = registerOutput<String>('etag');
    this.name = registerOutput<String?>('name');
    provisioningState = registerOutput<String>('provisioningState');
    remoteVirtualNetwork = registerOutput<SubResourceResponse?>('remoteVirtualNetwork', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SubResourceResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    routingConfiguration = registerOutput<RoutingConfigurationResponse?>('routingConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RoutingConfigurationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
