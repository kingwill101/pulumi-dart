import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_account_args.dart';
import 'get_account_result.dart';

/// Use this data source to access information about an existing Azure Maps Account.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.maps.getAccount({
///     name: "production",
///     resourceGroupName: "maps",
/// });
/// export const mapsAccountId = example.then(example => example.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.maps.get_account(name="production",
///     resource_group_name="maps")
/// pulumi.export("mapsAccountId", example.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Azure.Maps.GetAccount.Invoke(new()
///     {
///         Name = "production",
///         ResourceGroupName = "maps",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["mapsAccountId"] = example.Apply(getAccountResult => getAccountResult.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/maps"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := maps.LookupAccount(ctx, &maps.LookupAccountArgs{
/// 			Name:              "production",
/// 			ResourceGroupName: "maps",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("mapsAccountId", example.Id)
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
/// import com.pulumi.azure.maps.MapsFunctions;
/// import com.pulumi.azure.maps.inputs.GetAccountArgs;
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
///         final var example = MapsFunctions.getAccount(GetAccountArgs.builder()
///             .name("production")
///             .resourceGroupName("maps")
///             .build());
///
///         ctx.export("mapsAccountId", example.id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: azure:maps:getAccount
///       arguments:
///         name: production
///         resourceGroupName: maps
/// outputs:
///   mapsAccountId: ${example.id}
/// ```
///
///
/// ## API Providers
///
/// <!-- This section is generated, changes will be overwritten -->
/// This data source uses the following Azure API Providers:
///
/// * `Microsoft.Maps` - 2023-06-01
/// [args] Arguments passed to this invoke. {@macro pulumi_maps_get_account_get_account_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAccountResult> getAccount(
  GetAccountArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:maps/getAccount:getAccount',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAccountResult.fromMap(result);
}
