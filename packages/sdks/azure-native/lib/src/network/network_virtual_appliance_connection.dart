import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_virtual_appliance_connection_args.dart';
import 'network_virtual_appliance_connection_properties_response.dart';

/// NetworkVirtualApplianceConnection resource.
///
/// Uses Azure REST API version 2024-05-01. In version 2.x of the Azure Native provider, it used API version 2023-06-01.
///
/// Other available API versions: 2023-06-01, 2023-09-01, 2023-11-01, 2024-01-01, 2024-03-01, 2024-07-01, 2024-10-01, 2025-01-01, 2025-03-01, 2025-05-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native network [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### NetworkVirtualApplianceConnectionPut
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var networkVirtualApplianceConnection = new AzureNative.Network.NetworkVirtualApplianceConnection("networkVirtualApplianceConnection", new()
///     {
///         ConnectionName = "connection1",
///         NetworkVirtualApplianceName = "nva1",
///         Properties = new AzureNative.Network.Inputs.NetworkVirtualApplianceConnectionPropertiesArgs
///         {
///             Asn = 64512,
///             BgpPeerAddress = new[]
///             {
///                 "169.254.16.13",
///                 "169.254.16.14",
///             },
///             EnableInternetSecurity = false,
///             Name = "connection1",
///             RoutingConfiguration = new AzureNative.Network.Inputs.RoutingConfigurationArgs
///             {
///                 AssociatedRouteTable = new AzureNative.Network.Inputs.SubResourceArgs
///                 {
///                     Id = "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualHubs/virtualHub1/hubRouteTables/hubRouteTable1",
///                 },
///                 InboundRouteMap = new AzureNative.Network.Inputs.SubResourceArgs
///                 {
///                     Id = "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualHubs/virtualHub1/routeMaps/routeMap1",
///                 },
///                 OutboundRouteMap = new AzureNative.Network.Inputs.SubResourceArgs
///                 {
///                     Id = "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualHubs/virtualHub1/routeMaps/routeMap2",
///                 },
///                 PropagatedRouteTables = new AzureNative.Network.Inputs.PropagatedRouteTableArgs
///                 {
///                     Ids = new[]
///                     {
///                         new AzureNative.Network.Inputs.SubResourceArgs
///                         {
///                             Id = "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualHubs/virtualHub1/hubRouteTables/hubRouteTable1",
///                         },
///                     },
///                     Labels = new[]
///                     {
///                         "label1",
///                     },
///                 },
///             },
///             TunnelIdentifier = 0,
///         },
///         ResourceGroupName = "rg1",
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
/// 		_, err := network.NewNetworkVirtualApplianceConnection(ctx, "networkVirtualApplianceConnection", &network.NetworkVirtualApplianceConnectionArgs{
/// 			ConnectionName:              pulumi.String("connection1"),
/// 			NetworkVirtualApplianceName: pulumi.String("nva1"),
/// 			Properties: &network.NetworkVirtualApplianceConnectionPropertiesArgs{
/// 				Asn: pulumi.Float64(64512),
/// 				BgpPeerAddress: pulumi.StringArray{
/// 					pulumi.String("169.254.16.13"),
/// 					pulumi.String("169.254.16.14"),
/// 				},
/// 				EnableInternetSecurity: pulumi.Bool(false),
/// 				Name:                   pulumi.String("connection1"),
/// 				RoutingConfiguration: &network.RoutingConfigurationArgs{
/// 					AssociatedRouteTable: &network.SubResourceArgs{
/// 						Id: pulumi.String("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualHubs/virtualHub1/hubRouteTables/hubRouteTable1"),
/// 					},
/// 					InboundRouteMap: &network.SubResourceArgs{
/// 						Id: pulumi.String("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualHubs/virtualHub1/routeMaps/routeMap1"),
/// 					},
/// 					OutboundRouteMap: &network.SubResourceArgs{
/// 						Id: pulumi.String("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualHubs/virtualHub1/routeMaps/routeMap2"),
/// 					},
/// 					PropagatedRouteTables: &network.PropagatedRouteTableArgs{
/// 						Ids: network.SubResourceArray{
/// 							&network.SubResourceArgs{
/// 								Id: pulumi.String("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualHubs/virtualHub1/hubRouteTables/hubRouteTable1"),
/// 							},
/// 						},
/// 						Labels: pulumi.StringArray{
/// 							pulumi.String("label1"),
/// 						},
/// 					},
/// 				},
/// 				TunnelIdentifier: pulumi.Float64(0),
/// 			},
/// 			ResourceGroupName: pulumi.String("rg1"),
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
/// import com.pulumi.azurenative.network.NetworkVirtualApplianceConnection;
/// import com.pulumi.azurenative.network.NetworkVirtualApplianceConnectionArgs;
/// import com.pulumi.azurenative.network.inputs.NetworkVirtualApplianceConnectionPropertiesArgs;
/// import com.pulumi.azurenative.network.inputs.RoutingConfigurationArgs;
/// import com.pulumi.azurenative.network.inputs.SubResourceArgs;
/// import com.pulumi.azurenative.network.inputs.PropagatedRouteTableArgs;
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
///         var networkVirtualApplianceConnection = new NetworkVirtualApplianceConnection("networkVirtualApplianceConnection", NetworkVirtualApplianceConnectionArgs.builder()
///             .connectionName("connection1")
///             .networkVirtualApplianceName("nva1")
///             .properties(NetworkVirtualApplianceConnectionPropertiesArgs.builder()
///                 .asn(64512.0)
///                 .bgpPeerAddress(
///                     "169.254.16.13",
///                     "169.254.16.14")
///                 .enableInternetSecurity(false)
///                 .name("connection1")
///                 .routingConfiguration(RoutingConfigurationArgs.builder()
///                     .associatedRouteTable(SubResourceArgs.builder()
///                         .id("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualHubs/virtualHub1/hubRouteTables/hubRouteTable1")
///                         .build())
///                     .inboundRouteMap(SubResourceArgs.builder()
///                         .id("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualHubs/virtualHub1/routeMaps/routeMap1")
///                         .build())
///                     .outboundRouteMap(SubResourceArgs.builder()
///                         .id("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualHubs/virtualHub1/routeMaps/routeMap2")
///                         .build())
///                     .propagatedRouteTables(PropagatedRouteTableArgs.builder()
///                         .ids(SubResourceArgs.builder()
///                             .id("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualHubs/virtualHub1/hubRouteTables/hubRouteTable1")
///                             .build())
///                         .labels("label1")
///                         .build())
///                     .build())
///                 .tunnelIdentifier(0.0)
///                 .build())
///             .resourceGroupName("rg1")
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
/// const networkVirtualApplianceConnection = new azure_native.network.NetworkVirtualApplianceConnection("networkVirtualApplianceConnection", {
///     connectionName: "connection1",
///     networkVirtualApplianceName: "nva1",
///     properties: {
///         asn: 64512,
///         bgpPeerAddress: [
///             "169.254.16.13",
///             "169.254.16.14",
///         ],
///         enableInternetSecurity: false,
///         name: "connection1",
///         routingConfiguration: {
///             associatedRouteTable: {
///                 id: "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualHubs/virtualHub1/hubRouteTables/hubRouteTable1",
///             },
///             inboundRouteMap: {
///                 id: "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualHubs/virtualHub1/routeMaps/routeMap1",
///             },
///             outboundRouteMap: {
///                 id: "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualHubs/virtualHub1/routeMaps/routeMap2",
///             },
///             propagatedRouteTables: {
///                 ids: [{
///                     id: "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualHubs/virtualHub1/hubRouteTables/hubRouteTable1",
///                 }],
///                 labels: ["label1"],
///             },
///         },
///         tunnelIdentifier: 0,
///     },
///     resourceGroupName: "rg1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// network_virtual_appliance_connection = azure_native.network.NetworkVirtualApplianceConnection("networkVirtualApplianceConnection",
///     connection_name="connection1",
///     network_virtual_appliance_name="nva1",
///     properties={
///         "asn": 64512,
///         "bgp_peer_address": [
///             "169.254.16.13",
///             "169.254.16.14",
///         ],
///         "enable_internet_security": False,
///         "name": "connection1",
///         "routing_configuration": {
///             "associated_route_table": {
///                 "id": "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualHubs/virtualHub1/hubRouteTables/hubRouteTable1",
///             },
///             "inbound_route_map": {
///                 "id": "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualHubs/virtualHub1/routeMaps/routeMap1",
///             },
///             "outbound_route_map": {
///                 "id": "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualHubs/virtualHub1/routeMaps/routeMap2",
///             },
///             "propagated_route_tables": {
///                 "ids": [{
///                     "id": "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualHubs/virtualHub1/hubRouteTables/hubRouteTable1",
///                 }],
///                 "labels": ["label1"],
///             },
///         },
///         "tunnel_identifier": 0,
///     },
///     resource_group_name="rg1")
///
/// ```
///
/// ```yaml
/// resources:
///   networkVirtualApplianceConnection:
///     type: azure-native:network:NetworkVirtualApplianceConnection
///     properties:
///       connectionName: connection1
///       networkVirtualApplianceName: nva1
///       properties:
///         asn: 64512
///         bgpPeerAddress:
///           - 169.254.16.13
///           - 169.254.16.14
///         enableInternetSecurity: false
///         name: connection1
///         routingConfiguration:
///           associatedRouteTable:
///             id: /subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualHubs/virtualHub1/hubRouteTables/hubRouteTable1
///           inboundRouteMap:
///             id: /subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualHubs/virtualHub1/routeMaps/routeMap1
///           outboundRouteMap:
///             id: /subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualHubs/virtualHub1/routeMaps/routeMap2
///           propagatedRouteTables:
///             ids:
///               - id: /subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualHubs/virtualHub1/hubRouteTables/hubRouteTable1
///             labels:
///               - label1
///         tunnelIdentifier: 0
///       resourceGroupName: rg1
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
/// $ pulumi import azure-native:network:NetworkVirtualApplianceConnection connection1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/networkVirtualAppliances/{networkVirtualApplianceName}/networkVirtualApplianceConnections/{connectionName}
/// ```
class NetworkVirtualApplianceConnection extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The name of the resource.
  late final pulumi.Output<String?> name;
  /// Properties of the express route connection.
  late final pulumi.Output<NetworkVirtualApplianceConnectionPropertiesResponse> properties;

  /// Creates a new [NetworkVirtualApplianceConnection].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [NetworkVirtualApplianceConnection]. {@macro pulumi_network_network_virtual_appliance_connection_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  NetworkVirtualApplianceConnection(
    String name, {
    NetworkVirtualApplianceConnectionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:network:NetworkVirtualApplianceConnection',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String?>('name');
    properties = registerOutput<NetworkVirtualApplianceConnectionPropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return NetworkVirtualApplianceConnectionPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
