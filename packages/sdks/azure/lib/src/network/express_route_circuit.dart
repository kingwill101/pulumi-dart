import 'package:pulumi/pulumi.dart' as pulumi;
import 'express_route_circuit_args.dart';
import 'express_route_circuit_sku.dart';
import 'express_route_circuit_state.dart';

/// Manages an ExpressRoute circuit.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "exprtTest",
///     location: "West Europe",
/// });
/// const exampleExpressRouteCircuit = new azure.network.ExpressRouteCircuit("example", {
///     name: "expressRoute1",
///     resourceGroupName: example.name,
///     location: example.location,
///     serviceProviderName: "Equinix",
///     peeringLocation: "Silicon Valley",
///     bandwidthInMbps: 50,
///     sku: {
///         tier: "Standard",
///         family: "MeteredData",
///     },
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
///     name="exprtTest",
///     location="West Europe")
/// example_express_route_circuit = azure.network.ExpressRouteCircuit("example",
///     name="expressRoute1",
///     resource_group_name=example.name,
///     location=example.location,
///     service_provider_name="Equinix",
///     peering_location="Silicon Valley",
///     bandwidth_in_mbps=50,
///     sku={
///         "tier": "Standard",
///         "family": "MeteredData",
///     },
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
///         Name = "exprtTest",
///         Location = "West Europe",
///     });
///
///     var exampleExpressRouteCircuit = new Azure.Network.ExpressRouteCircuit("example", new()
///     {
///         Name = "expressRoute1",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         ServiceProviderName = "Equinix",
///         PeeringLocation = "Silicon Valley",
///         BandwidthInMbps = 50,
///         Sku = new Azure.Network.Inputs.ExpressRouteCircuitSkuArgs
///         {
///             Tier = "Standard",
///             Family = "MeteredData",
///         },
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
/// 			Name:     pulumi.String("exprtTest"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = network.NewExpressRouteCircuit(ctx, "example", &network.ExpressRouteCircuitArgs{
/// 			Name:                pulumi.String("expressRoute1"),
/// 			ResourceGroupName:   example.Name,
/// 			Location:            example.Location,
/// 			ServiceProviderName: pulumi.String("Equinix"),
/// 			PeeringLocation:     pulumi.String("Silicon Valley"),
/// 			BandwidthInMbps:     pulumi.Int(50),
/// 			Sku: &network.ExpressRouteCircuitSkuArgs{
/// 				Tier:   pulumi.String("Standard"),
/// 				Family: pulumi.String("MeteredData"),
/// 			},
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
/// import com.pulumi.azure.network.ExpressRouteCircuit;
/// import com.pulumi.azure.network.ExpressRouteCircuitArgs;
/// import com.pulumi.azure.network.inputs.ExpressRouteCircuitSkuArgs;
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
///             .name("exprtTest")
///             .location("West Europe")
///             .build());
///
///         var exampleExpressRouteCircuit = new ExpressRouteCircuit("exampleExpressRouteCircuit", ExpressRouteCircuitArgs.builder()
///             .name("expressRoute1")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .serviceProviderName("Equinix")
///             .peeringLocation("Silicon Valley")
///             .bandwidthInMbps(50)
///             .sku(ExpressRouteCircuitSkuArgs.builder()
///                 .tier("Standard")
///                 .family("MeteredData")
///                 .build())
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
///       name: exprtTest
///       location: West Europe
///   exampleExpressRouteCircuit:
///     type: azure:network:ExpressRouteCircuit
///     name: example
///     properties:
///       name: expressRoute1
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       serviceProviderName: Equinix
///       peeringLocation: Silicon Valley
///       bandwidthInMbps: 50
///       sku:
///         tier: Standard
///         family: MeteredData
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
/// ExpressRoute circuits can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:network/expressRouteCircuit:ExpressRouteCircuit myExpressRoute /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/mygroup1/providers/Microsoft.Network/expressRouteCircuits/myExpressRoute
/// ```
class ExpressRouteCircuit extends pulumi.CustomResource {
  /// Allow the circuit to interact with classic (RDFE) resources. Defaults to `false`.
  late final pulumi.Output<bool?> allowClassicOperations;
  /// The authorization key. This can be used to set up an ExpressRoute Circuit with an ExpressRoute Port from another subscription.
  late final pulumi.Output<String?> authorizationKey;
  /// The bandwidth in Gbps of the circuit being created on the Express Route Port.
  ///
  /// &gt; **Note:** The `express_route_port_id` and the `bandwidth_in_gbps` should be set together and they conflict with `service_provider_name`, `peering_location` and `bandwidth_in_mbps`.
  late final pulumi.Output<double?> bandwidthInGbps;
  /// The bandwidth in Mbps of the circuit being created on the Service Provider.
  ///
  /// &gt; **Note:** Once you increase your bandwidth, you will not be able to decrease it to its previous value.
  ///
  /// &gt; **Note:** The `service_provider_name`, the `peering_location` and the `bandwidth_in_mbps` should be set together and they conflict with `express_route_port_id` and `bandwidth_in_gbps`.
  late final pulumi.Output<int?> bandwidthInMbps;
  /// The ID of the Express Route Port this Express Route Circuit is based on. Changing this forces a new resource to be created.
  late final pulumi.Output<String?> expressRoutePortId;
  /// Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  late final pulumi.Output<String> location;
  /// The name of the ExpressRoute circuit. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// The name of the peering location and **not** the Azure resource location. Changing this forces a new resource to be created.
  late final pulumi.Output<String?> peeringLocation;
  /// Enable [rate limiting](https://learn.microsoft.com/en-us/azure/expressroute/rate-limit) for the circuit. Only works with ExpressRoute Ports. Defaults to `false`.
  late final pulumi.Output<bool?> rateLimitingEnabled;
  /// The name of the resource group in which to create the ExpressRoute circuit. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// The string needed by the service provider to provision the ExpressRoute circuit.
  late final pulumi.Output<String> serviceKey;
  /// The name of the ExpressRoute Service Provider. Changing this forces a new resource to be created.
  late final pulumi.Output<String?> serviceProviderName;
  /// The ExpressRoute circuit provisioning state from your chosen service provider. Possible values are `NotProvisioned`, `Provisioning`, `Provisioned`, and `Deprovisioning`.
  late final pulumi.Output<String> serviceProviderProvisioningState;
  /// A `sku` block for the ExpressRoute circuit as documented below.
  late final pulumi.Output<ExpressRouteCircuitSku> sku;
  /// A mapping of tags to assign to the resource.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Creates a new [ExpressRouteCircuit].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ExpressRouteCircuit]. {@macro pulumi_network_express_route_circuit_express_route_circuit_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ExpressRouteCircuit(
    String name, {
    ExpressRouteCircuitArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:network/expressRouteCircuit:ExpressRouteCircuit',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    allowClassicOperations = registerOutput<bool?>('allowClassicOperations');
    authorizationKey = registerOutput<String?>('authorizationKey');
    bandwidthInGbps = registerOutput<double?>('bandwidthInGbps');
    bandwidthInMbps = registerOutput<int?>('bandwidthInMbps');
    expressRoutePortId = registerOutput<String?>('expressRoutePortId');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    peeringLocation = registerOutput<String?>('peeringLocation');
    rateLimitingEnabled = registerOutput<bool?>('rateLimitingEnabled');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    serviceKey = registerOutput<String>('serviceKey');
    serviceProviderName = registerOutput<String?>('serviceProviderName');
    serviceProviderProvisioningState = registerOutput<String>('serviceProviderProvisioningState');
    sku = registerOutput<ExpressRouteCircuitSku>('sku', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ExpressRouteCircuitSku.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags');
  }

  /// Gets an existing [ExpressRouteCircuit] resource's state with the given [name] and [id].
  static ExpressRouteCircuit get(
    String name,
    pulumi.Input<String> id, {
    ExpressRouteCircuitState? state,
  }) {
    return ExpressRouteCircuit._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ExpressRouteCircuit._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:network/expressRouteCircuit:ExpressRouteCircuit',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    allowClassicOperations = registerOutput<bool?>('allowClassicOperations');
    authorizationKey = registerOutput<String?>('authorizationKey');
    bandwidthInGbps = registerOutput<double?>('bandwidthInGbps');
    bandwidthInMbps = registerOutput<int?>('bandwidthInMbps');
    expressRoutePortId = registerOutput<String?>('expressRoutePortId');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    peeringLocation = registerOutput<String?>('peeringLocation');
    rateLimitingEnabled = registerOutput<bool?>('rateLimitingEnabled');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    serviceKey = registerOutput<String>('serviceKey');
    serviceProviderName = registerOutput<String?>('serviceProviderName');
    serviceProviderProvisioningState = registerOutput<String>('serviceProviderProvisioningState');
    sku = registerOutput<ExpressRouteCircuitSku>('sku', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ExpressRouteCircuitSku.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags');
  }
}
