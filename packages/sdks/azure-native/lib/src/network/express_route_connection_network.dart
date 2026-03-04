import 'package:pulumi/pulumi.dart' as pulumi;
import 'express_route_circuit_peering_id_response.dart';
import 'express_route_connection_args.dart';
import 'routing_configuration_response.dart';

/// ExpressRouteConnection resource.
///
/// Uses Azure REST API version 2024-05-01. In version 2.x of the Azure Native provider, it used API version 2023-02-01.
///
/// Other available API versions: 2018-08-01, 2018-10-01, 2018-11-01, 2018-12-01, 2019-02-01, 2019-04-01, 2019-06-01, 2019-07-01, 2019-08-01, 2019-09-01, 2019-11-01, 2019-12-01, 2020-03-01, 2020-04-01, 2020-05-01, 2020-06-01, 2020-07-01, 2020-08-01, 2020-11-01, 2021-02-01, 2021-03-01, 2021-05-01, 2021-08-01, 2022-01-01, 2022-05-01, 2022-07-01, 2022-09-01, 2022-11-01, 2023-02-01, 2023-04-01, 2023-05-01, 2023-06-01, 2023-09-01, 2023-11-01, 2024-01-01, 2024-03-01, 2024-07-01, 2024-10-01, 2025-01-01, 2025-03-01, 2025-05-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native network [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### ExpressRouteConnectionCreate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var expressRouteConnection = new AzureNative.Network.ExpressRouteConnection("expressRouteConnection", new()
///     {
///         AuthorizationKey = "authorizationKey",
///         ConnectionName = "connectionName",
///         ExpressRouteCircuitPeering = new AzureNative.Network.Inputs.ExpressRouteCircuitPeeringIdArgs
///         {
///             Id = "/subscriptions/subid/resourceGroups/resourceGroupName/providers/Microsoft.Network/expressRouteCircuits/circuitName/peerings/AzurePrivatePeering",
///         },
///         ExpressRouteGatewayName = "gateway-2",
///         Id = "/subscriptions/subid/resourceGroups/resourceGroupName/providers/Microsoft.Network/expressRouteGateways/gateway-2/expressRouteConnections/connectionName",
///         Name = "connectionName",
///         ResourceGroupName = "resourceGroupName",
///         RoutingConfiguration = new AzureNative.Network.Inputs.RoutingConfigurationArgs
///         {
///             AssociatedRouteTable = new AzureNative.Network.Inputs.SubResourceArgs
///             {
///                 Id = "/subscriptions/subid/resourceGroups/resourceGroupName/providers/Microsoft.Network/virtualHubs/hub1/hubRouteTables/hubRouteTable1",
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
///                         Id = "/subscriptions/subid/resourceGroups/resourceGroupName/providers/Microsoft.Network/virtualHubs/hub1/hubRouteTables/hubRouteTable1",
///                     },
///                     new AzureNative.Network.Inputs.SubResourceArgs
///                     {
///                         Id = "/subscriptions/subid/resourceGroups/resourceGroupName/providers/Microsoft.Network/virtualHubs/hub1/hubRouteTables/hubRouteTable2",
///                     },
///                     new AzureNative.Network.Inputs.SubResourceArgs
///                     {
///                         Id = "/subscriptions/subid/resourceGroups/resourceGroupName/providers/Microsoft.Network/virtualHubs/hub1/hubRouteTables/hubRouteTable3",
///                     },
///                 },
///                 Labels = new[]
///                 {
///                     "label1",
///                     "label2",
///                 },
///             },
///         },
///         RoutingWeight = 2,
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
/// 		_, err := network.NewExpressRouteConnection(ctx, "expressRouteConnection", &network.ExpressRouteConnectionArgs{
/// 			AuthorizationKey: pulumi.String("authorizationKey"),
/// 			ConnectionName:   pulumi.String("connectionName"),
/// 			ExpressRouteCircuitPeering: &network.ExpressRouteCircuitPeeringIdArgs{
/// 				Id: pulumi.String("/subscriptions/subid/resourceGroups/resourceGroupName/providers/Microsoft.Network/expressRouteCircuits/circuitName/peerings/AzurePrivatePeering"),
/// 			},
/// 			ExpressRouteGatewayName: pulumi.String("gateway-2"),
/// 			Id:                      pulumi.String("/subscriptions/subid/resourceGroups/resourceGroupName/providers/Microsoft.Network/expressRouteGateways/gateway-2/expressRouteConnections/connectionName"),
/// 			Name:                    pulumi.String("connectionName"),
/// 			ResourceGroupName:       pulumi.String("resourceGroupName"),
/// 			RoutingConfiguration: &network.RoutingConfigurationArgs{
/// 				AssociatedRouteTable: &network.SubResourceArgs{
/// 					Id: pulumi.String("/subscriptions/subid/resourceGroups/resourceGroupName/providers/Microsoft.Network/virtualHubs/hub1/hubRouteTables/hubRouteTable1"),
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
/// 							Id: pulumi.String("/subscriptions/subid/resourceGroups/resourceGroupName/providers/Microsoft.Network/virtualHubs/hub1/hubRouteTables/hubRouteTable1"),
/// 						},
/// 						&network.SubResourceArgs{
/// 							Id: pulumi.String("/subscriptions/subid/resourceGroups/resourceGroupName/providers/Microsoft.Network/virtualHubs/hub1/hubRouteTables/hubRouteTable2"),
/// 						},
/// 						&network.SubResourceArgs{
/// 							Id: pulumi.String("/subscriptions/subid/resourceGroups/resourceGroupName/providers/Microsoft.Network/virtualHubs/hub1/hubRouteTables/hubRouteTable3"),
/// 						},
/// 					},
/// 					Labels: pulumi.StringArray{
/// 						pulumi.String("label1"),
/// 						pulumi.String("label2"),
/// 					},
/// 				},
/// 			},
/// 			RoutingWeight: pulumi.Int(2),
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
/// import com.pulumi.azurenative.network.ExpressRouteConnection;
/// import com.pulumi.azurenative.network.ExpressRouteConnectionArgs;
/// import com.pulumi.azurenative.network.inputs.ExpressRouteCircuitPeeringIdArgs;
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
///         var expressRouteConnection = new ExpressRouteConnection("expressRouteConnection", ExpressRouteConnectionArgs.builder()
///             .authorizationKey("authorizationKey")
///             .connectionName("connectionName")
///             .expressRouteCircuitPeering(ExpressRouteCircuitPeeringIdArgs.builder()
///                 .id("/subscriptions/subid/resourceGroups/resourceGroupName/providers/Microsoft.Network/expressRouteCircuits/circuitName/peerings/AzurePrivatePeering")
///                 .build())
///             .expressRouteGatewayName("gateway-2")
///             .id("/subscriptions/subid/resourceGroups/resourceGroupName/providers/Microsoft.Network/expressRouteGateways/gateway-2/expressRouteConnections/connectionName")
///             .name("connectionName")
///             .resourceGroupName("resourceGroupName")
///             .routingConfiguration(RoutingConfigurationArgs.builder()
///                 .associatedRouteTable(SubResourceArgs.builder()
///                     .id("/subscriptions/subid/resourceGroups/resourceGroupName/providers/Microsoft.Network/virtualHubs/hub1/hubRouteTables/hubRouteTable1")
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
///                             .id("/subscriptions/subid/resourceGroups/resourceGroupName/providers/Microsoft.Network/virtualHubs/hub1/hubRouteTables/hubRouteTable1")
///                             .build(),
///                         SubResourceArgs.builder()
///                             .id("/subscriptions/subid/resourceGroups/resourceGroupName/providers/Microsoft.Network/virtualHubs/hub1/hubRouteTables/hubRouteTable2")
///                             .build(),
///                         SubResourceArgs.builder()
///                             .id("/subscriptions/subid/resourceGroups/resourceGroupName/providers/Microsoft.Network/virtualHubs/hub1/hubRouteTables/hubRouteTable3")
///                             .build())
///                     .labels(
///                         "label1",
///                         "label2")
///                     .build())
///                 .build())
///             .routingWeight(2)
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
/// const expressRouteConnection = new azure_native.network.ExpressRouteConnection("expressRouteConnection", {
///     authorizationKey: "authorizationKey",
///     connectionName: "connectionName",
///     expressRouteCircuitPeering: {
///         id: "/subscriptions/subid/resourceGroups/resourceGroupName/providers/Microsoft.Network/expressRouteCircuits/circuitName/peerings/AzurePrivatePeering",
///     },
///     expressRouteGatewayName: "gateway-2",
///     id: "/subscriptions/subid/resourceGroups/resourceGroupName/providers/Microsoft.Network/expressRouteGateways/gateway-2/expressRouteConnections/connectionName",
///     name: "connectionName",
///     resourceGroupName: "resourceGroupName",
///     routingConfiguration: {
///         associatedRouteTable: {
///             id: "/subscriptions/subid/resourceGroups/resourceGroupName/providers/Microsoft.Network/virtualHubs/hub1/hubRouteTables/hubRouteTable1",
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
///                     id: "/subscriptions/subid/resourceGroups/resourceGroupName/providers/Microsoft.Network/virtualHubs/hub1/hubRouteTables/hubRouteTable1",
///                 },
///                 {
///                     id: "/subscriptions/subid/resourceGroups/resourceGroupName/providers/Microsoft.Network/virtualHubs/hub1/hubRouteTables/hubRouteTable2",
///                 },
///                 {
///                     id: "/subscriptions/subid/resourceGroups/resourceGroupName/providers/Microsoft.Network/virtualHubs/hub1/hubRouteTables/hubRouteTable3",
///                 },
///             ],
///             labels: [
///                 "label1",
///                 "label2",
///             ],
///         },
///     },
///     routingWeight: 2,
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// express_route_connection = azure_native.network.ExpressRouteConnection("expressRouteConnection",
///     authorization_key="authorizationKey",
///     connection_name="connectionName",
///     express_route_circuit_peering={
///         "id": "/subscriptions/subid/resourceGroups/resourceGroupName/providers/Microsoft.Network/expressRouteCircuits/circuitName/peerings/AzurePrivatePeering",
///     },
///     express_route_gateway_name="gateway-2",
///     id="/subscriptions/subid/resourceGroups/resourceGroupName/providers/Microsoft.Network/expressRouteGateways/gateway-2/expressRouteConnections/connectionName",
///     name="connectionName",
///     resource_group_name="resourceGroupName",
///     routing_configuration={
///         "associated_route_table": {
///             "id": "/subscriptions/subid/resourceGroups/resourceGroupName/providers/Microsoft.Network/virtualHubs/hub1/hubRouteTables/hubRouteTable1",
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
///                     "id": "/subscriptions/subid/resourceGroups/resourceGroupName/providers/Microsoft.Network/virtualHubs/hub1/hubRouteTables/hubRouteTable1",
///                 },
///                 {
///                     "id": "/subscriptions/subid/resourceGroups/resourceGroupName/providers/Microsoft.Network/virtualHubs/hub1/hubRouteTables/hubRouteTable2",
///                 },
///                 {
///                     "id": "/subscriptions/subid/resourceGroups/resourceGroupName/providers/Microsoft.Network/virtualHubs/hub1/hubRouteTables/hubRouteTable3",
///                 },
///             ],
///             "labels": [
///                 "label1",
///                 "label2",
///             ],
///         },
///     },
///     routing_weight=2)
///
/// ```
///
/// ```yaml
/// resources:
///   expressRouteConnection:
///     type: azure-native:network:ExpressRouteConnection
///     properties:
///       authorizationKey: authorizationKey
///       connectionName: connectionName
///       expressRouteCircuitPeering:
///         id: /subscriptions/subid/resourceGroups/resourceGroupName/providers/Microsoft.Network/expressRouteCircuits/circuitName/peerings/AzurePrivatePeering
///       expressRouteGatewayName: gateway-2
///       id: /subscriptions/subid/resourceGroups/resourceGroupName/providers/Microsoft.Network/expressRouteGateways/gateway-2/expressRouteConnections/connectionName
///       name: connectionName
///       resourceGroupName: resourceGroupName
///       routingConfiguration:
///         associatedRouteTable:
///           id: /subscriptions/subid/resourceGroups/resourceGroupName/providers/Microsoft.Network/virtualHubs/hub1/hubRouteTables/hubRouteTable1
///         inboundRouteMap:
///           id: /subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualHubs/virtualHub1/routeMaps/routeMap1
///         outboundRouteMap:
///           id: /subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualHubs/virtualHub1/routeMaps/routeMap2
///         propagatedRouteTables:
///           ids:
///             - id: /subscriptions/subid/resourceGroups/resourceGroupName/providers/Microsoft.Network/virtualHubs/hub1/hubRouteTables/hubRouteTable1
///             - id: /subscriptions/subid/resourceGroups/resourceGroupName/providers/Microsoft.Network/virtualHubs/hub1/hubRouteTables/hubRouteTable2
///             - id: /subscriptions/subid/resourceGroups/resourceGroupName/providers/Microsoft.Network/virtualHubs/hub1/hubRouteTables/hubRouteTable3
///           labels:
///             - label1
///             - label2
///       routingWeight: 2
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
/// $ pulumi import azure-native:network:ExpressRouteConnection connectionName /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/expressRouteGateways/{expressRouteGatewayName}/expressRouteConnections/{connectionName}
/// ```
class ExpressRouteConnectionNetwork extends pulumi.CustomResource {
  /// Authorization key to establish the connection.
  late final pulumi.Output<String?> authorizationKey;

  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// Enable internet security.
  late final pulumi.Output<bool?> enableInternetSecurity;

  /// Bypass the ExpressRoute gateway when accessing private-links. ExpressRoute FastPath (expressRouteGatewayBypass) must be enabled.
  late final pulumi.Output<bool?> enablePrivateLinkFastPath;

  /// The ExpressRoute circuit peering.
  late final pulumi.Output<ExpressRouteCircuitPeeringIdResponse>
  expressRouteCircuitPeering;

  /// Enable FastPath to vWan Firewall hub.
  late final pulumi.Output<bool?> expressRouteGatewayBypass;

  /// The name of the resource.
  late final pulumi.Output<String> name;

  /// The provisioning state of the express route connection resource.
  late final pulumi.Output<String> provisioningState;

  /// The Routing Configuration indicating the associated and propagated route tables on this connection.
  late final pulumi.Output<RoutingConfigurationResponse?> routingConfiguration;

  /// The routing weight associated to the connection.
  late final pulumi.Output<int?> routingWeight;

  /// Creates a new [ExpressRouteConnectionNetwork].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ExpressRouteConnectionNetwork]. {@macro pulumi_network_express_route_connection_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ExpressRouteConnectionNetwork(
    String name, {
    ExpressRouteConnectionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:network:ExpressRouteConnection',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    authorizationKey = registerOutput<String?>('authorizationKey');
    azureApiVersion = registerOutput<String>('azureApiVersion');
    enableInternetSecurity = registerOutput<bool?>('enableInternetSecurity');
    enablePrivateLinkFastPath = registerOutput<bool?>(
      'enablePrivateLinkFastPath',
    );
    expressRouteCircuitPeering =
        registerOutput<ExpressRouteCircuitPeeringIdResponse>(
          'expressRouteCircuitPeering',
        );
    expressRouteGatewayBypass = registerOutput<bool?>(
      'expressRouteGatewayBypass',
    );
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    routingConfiguration = registerOutput<RoutingConfigurationResponse?>(
      'routingConfiguration',
    );
    routingWeight = registerOutput<int?>('routingWeight');
  }
}
