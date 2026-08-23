import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_provider_args.dart';
import 'get_provider_result.dart';

/// Use this data source to access information about an existing Attestation Provider.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azurerm from "@pulumi/azurerm";
///
/// const example = azurerm.Attestation({
///     name: "example-attestationprovider",
///     resourceGroupName: "example-resource-group",
/// });
/// export const id = example.id;
/// ```
/// ```python
/// import pulumi
/// import pulumi_azurerm as azurerm
///
/// example = azurerm.attestation(name="example-attestationprovider",
///     resource_group_name="example-resource-group")
/// pulumi.export("id", example["id"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azurerm = Pulumi.Azurerm;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Azurerm.Attestation.Invoke(new()
///     {
///         Name = "example-attestationprovider",
///         ResourceGroupName = "example-resource-group",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["id"] = example.Id,
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azurerm/sdk/go/azurerm"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := azurerm.Attestation(ctx, map[string]interface{}{
/// 			"name":              "example-attestationprovider",
/// 			"resourceGroupName": "example-resource-group",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("id", pulumi.Any(example.Id))
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// data "azurerm_attestation" "example" {
///   name                = "example-attestationprovider"
///   resource_group_name = "example-resource-group"
/// }
///
/// output "id" {
///   value = data.azurerm_attestation.example.id
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurerm.AzurermFunctions;
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
///         final var example = AzurermFunctions.Attestation(Map.ofEntries(
///             Map.entry("name", "example-attestationprovider"),
///             Map.entry("resourceGroupName", "example-resource-group")
///         ));
///
///         ctx.export("id", example.id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: azurerm:Attestation
///       arguments:
///         name: example-attestationprovider
///         resourceGroupName: example-resource-group
/// outputs:
///   id: ${example.id}
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This data source uses the following Azure API Providers:
///
/// * `Microsoft.Attestation` - 2020-10-01
/// [args] Arguments passed to this invoke. {@macro pulumi_attestation_get_provider_get_provider_args_doc}
/// [options] Invoke options controlling this call.
Future<GetProviderResult> getProvider(
  GetProviderArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:attestation/getProvider:getProvider',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetProviderResult.fromMap(result);
}
