import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_geographical_location_args.dart';
import 'get_geographical_location_result.dart';

/// Use this data source to access the ID of a specified Traffic Manager Geographical Location within the Geographical Hierarchy.
///
/// ## Example Usage
///
/// ### World)
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.network.getTrafficManager({
///     name: "World",
/// });
/// export const locationCode = example.then(example => example.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.network.get_traffic_manager(name="World")
/// pulumi.export("locationCode", example.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Azure.Network.GetTrafficManager.Invoke(new()
///     {
///         Name = "World",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["locationCode"] = example.Apply(getTrafficManagerResult => getTrafficManagerResult.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/network"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := network.GetTrafficManager(ctx, &network.GetTrafficManagerArgs{
/// 			Name: "World",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("locationCode", example.Id)
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
/// import com.pulumi.azure.network.NetworkFunctions;
/// import com.pulumi.azure.network.inputs.GetTrafficManagerArgs;
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
///         final var example = NetworkFunctions.getTrafficManager(GetTrafficManagerArgs.builder()
///             .name("World")
///             .build());
///
///         ctx.export("locationCode", example.id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: azure:network:getTrafficManager
///       arguments:
///         name: World
/// outputs:
///   locationCode: ${example.id}
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This data source uses the following Azure API Providers:
///
/// * `Microsoft.Network` - 2022-04-01
/// [args] Arguments passed to this invoke. {@macro pulumi_trafficmanager_get_geographical_location_get_geographical_location_args_doc}
/// [options] Invoke options controlling this call.
Future<GetGeographicalLocationResult> getGeographicalLocation(
  GetGeographicalLocationArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:trafficmanager/getGeographicalLocation:getGeographicalLocation',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetGeographicalLocationResult.fromMap(result);
}
