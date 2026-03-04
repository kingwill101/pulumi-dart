import 'package:pulumi/pulumi.dart' as pulumi;
import 'express_route_gateway_args.dart';
import 'express_route_gateway_state.dart';

/// Manages an ExpressRoute gateway.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "example-resources",
///     location: "West Europe",
/// });
/// const exampleVirtualWan = new azure.network.VirtualWan("example", {
///     name: "example-virtualwan",
///     resourceGroupName: example.name,
///     location: example.location,
/// });
/// const exampleVirtualHub = new azure.network.VirtualHub("example", {
///     name: "example-virtualhub",
///     resourceGroupName: example.name,
///     location: example.location,
///     virtualWanId: exampleVirtualWan.id,
///     addressPrefix: "10.0.1.0/24",
/// });
/// const exampleExpressRouteGateway = new azure.network.ExpressRouteGateway("example", {
///     name: "expressRoute1",
///     resourceGroupName: example.name,
///     location: example.location,
///     virtualHubId: exampleVirtualHub.id,
///     scaleUnits: 1,
///     tags: {
///         environment: "Production",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// example_virtual_wan = azure.network.VirtualWan("example",
///     name="example-virtualwan",
///     resource_group_name=example.name,
///     location=example.location)
/// example_virtual_hub = azure.network.VirtualHub("example",
///     name="example-virtualhub",
///     resource_group_name=example.name,
///     location=example.location,
///     virtual_wan_id=example_virtual_wan.id,
///     address_prefix="10.0.1.0/24")
/// example_express_route_gateway = azure.network.ExpressRouteGateway("example",
///     name="expressRoute1",
///     resource_group_name=example.name,
///     location=example.location,
///     virtual_hub_id=example_virtual_hub.id,
///     scale_units=1,
///     tags={
///         "environment": "Production",
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
///         Name = "example-resources",
///         Location = "West Europe",
///     });
///
///     var exampleVirtualWan = new Azure.Network.VirtualWan("example", new()
///     {
///         Name = "example-virtualwan",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///     });
///
///     var exampleVirtualHub = new Azure.Network.VirtualHub("example", new()
///     {
///         Name = "example-virtualhub",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         VirtualWanId = exampleVirtualWan.Id,
///         AddressPrefix = "10.0.1.0/24",
///     });
///
///     var exampleExpressRouteGateway = new Azure.Network.ExpressRouteGateway("example", new()
///     {
///         Name = "expressRoute1",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         VirtualHubId = exampleVirtualHub.Id,
///         ScaleUnits = 1,
///         Tags =
///         {
///             { "environment", "Production" },
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
/// 			Name:     pulumi.String("example-resources"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleVirtualWan, err := network.NewVirtualWan(ctx, "example", &network.VirtualWanArgs{
/// 			Name:              pulumi.String("example-virtualwan"),
/// 			ResourceGroupName: example.Name,
/// 			Location:          example.Location,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleVirtualHub, err := network.NewVirtualHub(ctx, "example", &network.VirtualHubArgs{
/// 			Name:              pulumi.String("example-virtualhub"),
/// 			ResourceGroupName: example.Name,
/// 			Location:          example.Location,
/// 			VirtualWanId:      exampleVirtualWan.ID(),
/// 			AddressPrefix:     pulumi.String("10.0.1.0/24"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = network.NewExpressRouteGateway(ctx, "example", &network.ExpressRouteGatewayArgs{
/// 			Name:              pulumi.String("expressRoute1"),
/// 			ResourceGroupName: example.Name,
/// 			Location:          example.Location,
/// 			VirtualHubId:      exampleVirtualHub.ID(),
/// 			ScaleUnits:        pulumi.Int(1),
/// 			Tags: pulumi.StringMap{
/// 				"environment": pulumi.String("Production"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
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
/// import com.pulumi.azure.network.VirtualWan;
/// import com.pulumi.azure.network.VirtualWanArgs;
/// import com.pulumi.azure.network.VirtualHub;
/// import com.pulumi.azure.network.VirtualHubArgs;
/// import com.pulumi.azure.network.ExpressRouteGateway;
/// import com.pulumi.azure.network.ExpressRouteGatewayArgs;
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
///         var example = new ResourceGroup("example", ResourceGroupArgs.builder()
///             .name("example-resources")
///             .location("West Europe")
///             .build());
///
///         var exampleVirtualWan = new VirtualWan("exampleVirtualWan", VirtualWanArgs.builder()
///             .name("example-virtualwan")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .build());
///
///         var exampleVirtualHub = new VirtualHub("exampleVirtualHub", VirtualHubArgs.builder()
///             .name("example-virtualhub")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .virtualWanId(exampleVirtualWan.id())
///             .addressPrefix("10.0.1.0/24")
///             .build());
///
///         var exampleExpressRouteGateway = new ExpressRouteGateway("exampleExpressRouteGateway", ExpressRouteGatewayArgs.builder()
///             .name("expressRoute1")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .virtualHubId(exampleVirtualHub.id())
///             .scaleUnits(1)
///             .tags(Map.of("environment", "Production"))
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
///       name: example-resources
///       location: West Europe
///   exampleVirtualWan:
///     type: azure:network:VirtualWan
///     name: example
///     properties:
///       name: example-virtualwan
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///   exampleVirtualHub:
///     type: azure:network:VirtualHub
///     name: example
///     properties:
///       name: example-virtualhub
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       virtualWanId: ${exampleVirtualWan.id}
///       addressPrefix: 10.0.1.0/24
///   exampleExpressRouteGateway:
///     type: azure:network:ExpressRouteGateway
///     name: example
///     properties:
///       name: expressRoute1
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       virtualHubId: ${exampleVirtualHub.id}
///       scaleUnits: 1
///       tags:
///         environment: Production
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
/// ExpressRoute Gateways can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:network/expressRouteGateway:ExpressRouteGateway example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/mygroup1/providers/Microsoft.Network/expressRouteGateways/myExpressRouteGateway
/// ```
class ExpressRouteGateway extends pulumi.CustomResource {
  /// Specified whether this gateway accept traffic from non-Virtual WAN networks. Defaults to `false`.
  late final pulumi.Output<bool?> allowNonVirtualWanTraffic;

  /// Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  late final pulumi.Output<String> location;

  /// The name of the ExpressRoute gateway. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;

  /// The name of the resource group in which to create the ExpressRoute gateway. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;

  /// The number of scale units with which to provision the ExpressRoute gateway. Each scale unit is equal to 2Gbps, with support for up to 10 scale units (20Gbps).
  late final pulumi.Output<int> scaleUnits;

  /// A mapping of tags to assign to the resource.
  late final pulumi.Output<Map<String, String>?> tags;

  /// The ID of a Virtual HUB within which the ExpressRoute gateway should be created. Changing this forces a new resource to be created.
  late final pulumi.Output<String> virtualHubId;

  /// Creates a new [ExpressRouteGateway].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ExpressRouteGateway]. {@macro pulumi_network_express_route_gateway_express_route_gateway_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ExpressRouteGateway(
    String name, {
    ExpressRouteGatewayArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:network/expressRouteGateway:ExpressRouteGateway',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    allowNonVirtualWanTraffic = registerOutput<bool?>(
      'allowNonVirtualWanTraffic',
    );
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    scaleUnits = registerOutput<int>('scaleUnits');
    tags = registerOutput<Map<String, String>?>('tags');
    virtualHubId = registerOutput<String>('virtualHubId');
  }

  /// Gets an existing [ExpressRouteGateway] resource's state with the given [name] and [id].
  static ExpressRouteGateway get(
    String name,
    pulumi.Input<String> id, {
    ExpressRouteGatewayState? state,
  }) {
    return ExpressRouteGateway._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ExpressRouteGateway._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:network/expressRouteGateway:ExpressRouteGateway',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    allowNonVirtualWanTraffic = registerOutput<bool?>(
      'allowNonVirtualWanTraffic',
    );
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    scaleUnits = registerOutput<int>('scaleUnits');
    tags = registerOutput<Map<String, String>?>('tags');
    virtualHubId = registerOutput<String>('virtualHubId');
  }
}
