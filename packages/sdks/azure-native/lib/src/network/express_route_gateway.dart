import 'package:pulumi/pulumi.dart' as pulumi;
import 'express_route_connection_response.dart';
import 'express_route_gateway_args.dart';
import 'express_route_gateway_properties_response_auto_scale_configuration.dart';
import 'virtual_hub_id_response.dart';

/// ExpressRoute gateway resource.
///
/// Uses Azure REST API version 2024-05-01. In version 2.x of the Azure Native provider, it used API version 2023-02-01.
///
/// Other available API versions: 2018-08-01, 2018-10-01, 2018-11-01, 2018-12-01, 2019-02-01, 2019-04-01, 2019-06-01, 2019-07-01, 2019-08-01, 2019-09-01, 2019-11-01, 2019-12-01, 2020-03-01, 2020-04-01, 2020-05-01, 2020-06-01, 2020-07-01, 2020-08-01, 2020-11-01, 2021-02-01, 2021-03-01, 2021-05-01, 2021-08-01, 2022-01-01, 2022-05-01, 2022-07-01, 2022-09-01, 2022-11-01, 2023-02-01, 2023-04-01, 2023-05-01, 2023-06-01, 2023-09-01, 2023-11-01, 2024-01-01, 2024-03-01, 2024-07-01, 2024-10-01, 2025-01-01, 2025-03-01, 2025-05-01, 2025-07-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native network [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### ExpressRouteGatewayCreate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var expressRouteGateway = new AzureNative.Network.ExpressRouteGateway("expressRouteGateway", new()
///     {
///         AllowNonVirtualWanTraffic = false,
///         AutoScaleConfiguration = new AzureNative.Network.Inputs.ExpressRouteGatewayPropertiesAutoScaleConfigurationArgs
///         {
///             Bounds = new AzureNative.Network.Inputs.ExpressRouteGatewayPropertiesBoundsArgs
///             {
///                 Min = 3,
///             },
///         },
///         ExpressRouteGatewayName = "gateway-2",
///         Location = "westus",
///         ResourceGroupName = "resourceGroupName",
///         VirtualHub = new AzureNative.Network.Inputs.VirtualHubIdArgs
///         {
///             Id = "/subscriptions/subid/resourceGroups/resourceGroupId/providers/Microsoft.Network/virtualHubs/virtualHubName",
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
/// 		_, err := network.NewExpressRouteGateway(ctx, "expressRouteGateway", &network.ExpressRouteGatewayArgs{
/// 			AllowNonVirtualWanTraffic: pulumi.Bool(false),
/// 			AutoScaleConfiguration: &network.ExpressRouteGatewayPropertiesAutoScaleConfigurationArgs{
/// 				Bounds: &network.ExpressRouteGatewayPropertiesBoundsArgs{
/// 					Min: pulumi.Int(3),
/// 				},
/// 			},
/// 			ExpressRouteGatewayName: pulumi.String("gateway-2"),
/// 			Location:                pulumi.String("westus"),
/// 			ResourceGroupName:       pulumi.String("resourceGroupName"),
/// 			VirtualHub: &network.VirtualHubIdArgs{
/// 				Id: pulumi.String("/subscriptions/subid/resourceGroups/resourceGroupId/providers/Microsoft.Network/virtualHubs/virtualHubName"),
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
/// resource "azure-native_network_expressroutegateway" "expressRouteGateway" {
///   allow_non_virtual_wan_traffic = false
///   auto_scale_configuration = {
///     bounds = {
///       min = 3
///     }
///   }
///   express_route_gateway_name = "gateway-2"
///   location                   = "westus"
///   resource_group_name        = "resourceGroupName"
///   virtual_hub = {
///     id = "/subscriptions/subid/resourceGroups/resourceGroupId/providers/Microsoft.Network/virtualHubs/virtualHubName"
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
/// import com.pulumi.azurenative.network.ExpressRouteGateway;
/// import com.pulumi.azurenative.network.ExpressRouteGatewayArgs;
/// import com.pulumi.azurenative.network.inputs.ExpressRouteGatewayPropertiesAutoScaleConfigurationArgs;
/// import com.pulumi.azurenative.network.inputs.ExpressRouteGatewayPropertiesBoundsArgs;
/// import com.pulumi.azurenative.network.inputs.VirtualHubIdArgs;
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
///         var expressRouteGateway = new ExpressRouteGateway("expressRouteGateway", ExpressRouteGatewayArgs.builder()
///             .allowNonVirtualWanTraffic(false)
///             .autoScaleConfiguration(ExpressRouteGatewayPropertiesAutoScaleConfigurationArgs.builder()
///                 .bounds(ExpressRouteGatewayPropertiesBoundsArgs.builder()
///                     .min(3)
///                     .build())
///                 .build())
///             .expressRouteGatewayName("gateway-2")
///             .location("westus")
///             .resourceGroupName("resourceGroupName")
///             .virtualHub(VirtualHubIdArgs.builder()
///                 .id("/subscriptions/subid/resourceGroups/resourceGroupId/providers/Microsoft.Network/virtualHubs/virtualHubName")
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
/// const expressRouteGateway = new azure_native.network.ExpressRouteGateway("expressRouteGateway", {
///     allowNonVirtualWanTraffic: false,
///     autoScaleConfiguration: {
///         bounds: {
///             min: 3,
///         },
///     },
///     expressRouteGatewayName: "gateway-2",
///     location: "westus",
///     resourceGroupName: "resourceGroupName",
///     virtualHub: {
///         id: "/subscriptions/subid/resourceGroups/resourceGroupId/providers/Microsoft.Network/virtualHubs/virtualHubName",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// express_route_gateway = azure_native.network.ExpressRouteGateway("expressRouteGateway",
///     allow_non_virtual_wan_traffic=False,
///     auto_scale_configuration={
///         "bounds": {
///             "min": 3,
///         },
///     },
///     express_route_gateway_name="gateway-2",
///     location="westus",
///     resource_group_name="resourceGroupName",
///     virtual_hub={
///         "id": "/subscriptions/subid/resourceGroups/resourceGroupId/providers/Microsoft.Network/virtualHubs/virtualHubName",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   expressRouteGateway:
///     type: azure-native:network:ExpressRouteGateway
///     properties:
///       allowNonVirtualWanTraffic: false
///       autoScaleConfiguration:
///         bounds:
///           min: 3
///       expressRouteGatewayName: gateway-2
///       location: westus
///       resourceGroupName: resourceGroupName
///       virtualHub:
///         id: /subscriptions/subid/resourceGroups/resourceGroupId/providers/Microsoft.Network/virtualHubs/virtualHubName
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
/// $ pulumi import azure-native:network:ExpressRouteGateway gateway-2 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/expressRouteGateways/{expressRouteGatewayName}
/// ```
class ExpressRouteGateway extends pulumi.CustomResource {
  /// Configures this gateway to accept traffic from non Virtual WAN networks.
  late final pulumi.Output<bool?> allowNonVirtualWanTraffic;
  /// Configuration for auto scaling.
  late final pulumi.Output<ExpressRouteGatewayPropertiesResponseAutoScaleConfiguration?> autoScaleConfiguration;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// A unique read-only string that changes whenever the resource is updated.
  late final pulumi.Output<String> etag;
  /// List of ExpressRoute connections to the ExpressRoute gateway.
  late final pulumi.Output<List<ExpressRouteConnectionResponse>?> expressRouteConnections;
  /// Resource location.
  late final pulumi.Output<String?> location;
  /// Resource name.
  late final pulumi.Output<String> name;
  /// The provisioning state of the express route gateway resource.
  late final pulumi.Output<String> provisioningState;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Resource type.
  late final pulumi.Output<String> type;
  /// The Virtual Hub where the ExpressRoute gateway is or will be deployed.
  late final pulumi.Output<VirtualHubIdResponse> virtualHub;

  /// Creates a new [ExpressRouteGateway].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ExpressRouteGateway]. {@macro pulumi_network_express_route_gateway_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ExpressRouteGateway(
    String name, {
    ExpressRouteGatewayArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:network:ExpressRouteGateway',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    allowNonVirtualWanTraffic = registerOutput<bool?>('allowNonVirtualWanTraffic');
    autoScaleConfiguration = registerOutput<ExpressRouteGatewayPropertiesResponseAutoScaleConfiguration?>('autoScaleConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ExpressRouteGatewayPropertiesResponseAutoScaleConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    azureApiVersion = registerOutput<String>('azureApiVersion');
    etag = registerOutput<String>('etag');
    expressRouteConnections = registerOutput<List<ExpressRouteConnectionResponse>?>('expressRouteConnections', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ExpressRouteConnectionResponse>(guardedValue, (value) => ExpressRouteConnectionResponse.fromMap((value as Map).cast<String, dynamic>())); });
    location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
    virtualHub = registerOutput<VirtualHubIdResponse>('virtualHub', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return VirtualHubIdResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Creates a typed reference to an existing [ExpressRouteGateway] resource.
  ExpressRouteGateway.reference(String urn)
    : super(
        'azure-native:network:ExpressRouteGateway',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    allowNonVirtualWanTraffic = registerOutput<bool?>('allowNonVirtualWanTraffic');
    autoScaleConfiguration = registerOutput<ExpressRouteGatewayPropertiesResponseAutoScaleConfiguration?>('autoScaleConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ExpressRouteGatewayPropertiesResponseAutoScaleConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    azureApiVersion = registerOutput<String>('azureApiVersion');
    etag = registerOutput<String>('etag');
    expressRouteConnections = registerOutput<List<ExpressRouteConnectionResponse>?>('expressRouteConnections', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ExpressRouteConnectionResponse>(guardedValue, (value) => ExpressRouteConnectionResponse.fromMap((value as Map).cast<String, dynamic>())); });
    location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
    virtualHub = registerOutput<VirtualHubIdResponse>('virtualHub', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return VirtualHubIdResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
