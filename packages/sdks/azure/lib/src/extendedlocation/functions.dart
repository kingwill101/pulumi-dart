import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_custom_location_args.dart';
import 'get_custom_location_result.dart';

/// Use this data source to access information about an existing Custom Location within an Extended Location.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.extendedlocation.getCustomLocation({
///     name: exampleAzurermExtendedLocationCustomLocation.name,
///     resourceGroupName: exampleAzurermResourceGroup.name,
/// });
/// export const customLocationId = example.then(example => example.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.extendedlocation.get_custom_location(name=example_azurerm_extended_location_custom_location["name"],
///     resource_group_name=example_azurerm_resource_group["name"])
/// pulumi.export("customLocationId", example.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Azure.ExtendedLocation.GetCustomLocation.Invoke(new()
///     {
///         Name = exampleAzurermExtendedLocationCustomLocation.Name,
///         ResourceGroupName = exampleAzurermResourceGroup.Name,
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["customLocationId"] = example.Apply(getCustomLocationResult => getCustomLocationResult.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/extendedlocation"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := extendedlocation.LookupCustomLocation(ctx, &extendedlocation.LookupCustomLocationArgs{
/// 			Name:              exampleAzurermExtendedLocationCustomLocation.Name,
/// 			ResourceGroupName: exampleAzurermResourceGroup.Name,
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("customLocationId", example.Id)
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     azure = {
///       source = "pulumi/azure"
///     }
///   }
/// }
///
/// data "azure_extendedlocation_getcustomlocation" "example" {
///   name                = exampleAzurermExtendedLocationCustomLocation.name
///   resource_group_name = exampleAzurermResourceGroup.name
/// }
///
/// output "customLocationId" {
///   value = data.azure_extendedlocation_getcustomlocation.example.id
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azure.extendedlocation.ExtendedlocationFunctions;
/// import com.pulumi.azure.extendedlocation.inputs.GetCustomLocationArgs;
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
///         final var example = ExtendedlocationFunctions.getCustomLocation(GetCustomLocationArgs.builder()
///             .name(exampleAzurermExtendedLocationCustomLocation.name())
///             .resourceGroupName(exampleAzurermResourceGroup.name())
///             .build());
///
///         ctx.export("customLocationId", example.id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: azure:extendedlocation:getCustomLocation
///       arguments:
///         name: ${exampleAzurermExtendedLocationCustomLocation.name}
///         resourceGroupName: ${exampleAzurermResourceGroup.name}
/// outputs:
///   customLocationId: ${example.id}
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This data source uses the following Azure API Providers:
///
/// * `Microsoft.ExtendedLocation` - 2021-08-15
/// [args] Arguments passed to this invoke. {@macro pulumi_extendedlocation_get_custom_location_get_custom_location_args_doc}
/// [options] Invoke options controlling this call.
Future<GetCustomLocationResult> getCustomLocation(
  GetCustomLocationArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:extendedlocation/getCustomLocation:getCustomLocation',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetCustomLocationResult.fromMap(result);
}

pulumi.Output<GetCustomLocationResult> getCustomLocationOutput(
  GetCustomLocationArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure:extendedlocation/getCustomLocation:getCustomLocation',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetCustomLocationResult.fromMap);
}
