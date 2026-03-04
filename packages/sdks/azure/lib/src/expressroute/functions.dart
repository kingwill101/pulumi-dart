import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_circuit_peering_args.dart';
import 'get_circuit_peering_result.dart';

/// Use this data source to access information about an existing ExpressRoute Circuit Peering.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.expressroute.getCircuitPeering({
///     peeringType: "example-peering",
///     expressRouteCircuitName: "example-expressroute",
///     resourceGroupName: "example-resources",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.expressroute.get_circuit_peering(peering_type="example-peering",
///     express_route_circuit_name="example-expressroute",
///     resource_group_name="example-resources")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Azure.ExpressRoute.GetCircuitPeering.Invoke(new()
///     {
///         PeeringType = "example-peering",
///         ExpressRouteCircuitName = "example-expressroute",
///         ResourceGroupName = "example-resources",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/expressroute"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := expressroute.GetCircuitPeering(ctx, &expressroute.GetCircuitPeeringArgs{
/// 			PeeringType:             "example-peering",
/// 			ExpressRouteCircuitName: "example-expressroute",
/// 			ResourceGroupName:       "example-resources",
/// 		}, nil)
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
/// import com.pulumi.azure.expressroute.ExpressrouteFunctions;
/// import com.pulumi.azure.expressroute.inputs.GetCircuitPeeringArgs;
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
///         final var example = ExpressrouteFunctions.getCircuitPeering(GetCircuitPeeringArgs.builder()
///             .peeringType("example-peering")
///             .expressRouteCircuitName("example-expressroute")
///             .resourceGroupName("example-resources")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: azure:expressroute:getCircuitPeering
///       arguments:
///         peeringType: example-peering
///         expressRouteCircuitName: example-expressroute
///         resourceGroupName: example-resources
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This data source uses the following Azure API Providers:
///
/// * `Microsoft.Network` - 2025-01-01
/// [args] Arguments passed to this invoke. {@macro pulumi_expressroute_get_circuit_peering_get_circuit_peering_args_doc}
/// [options] Invoke options controlling this call.
Future<GetCircuitPeeringResult> getCircuitPeering(
  GetCircuitPeeringArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:expressroute/getCircuitPeering:getCircuitPeering',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetCircuitPeeringResult.fromMap(result);
}
