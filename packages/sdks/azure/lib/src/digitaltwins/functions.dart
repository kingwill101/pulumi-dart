import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_instance_args.dart';
import 'get_instance_result.dart';

/// Use this data source to access information about an existing Digital Twins instance.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.digitaltwins.getInstance({
///     name: "existing-digital-twins",
///     resourceGroupName: "existing-resgroup",
/// });
/// export const id = example.then(example => example.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.digitaltwins.get_instance(name="existing-digital-twins",
///     resource_group_name="existing-resgroup")
/// pulumi.export("id", example.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Azure.DigitalTwins.GetInstance.Invoke(new()
///     {
///         Name = "existing-digital-twins",
///         ResourceGroupName = "existing-resgroup",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["id"] = example.Apply(getInstanceResult => getInstanceResult.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/digitaltwins"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := digitaltwins.LookupInstance(ctx, &digitaltwins.LookupInstanceArgs{
/// 			Name:              "existing-digital-twins",
/// 			ResourceGroupName: "existing-resgroup",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("id", example.Id)
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
/// data "azure_digitaltwins_getinstance" "example" {
///   name                = "existing-digital-twins"
///   resource_group_name = "existing-resgroup"
/// }
///
/// output "id" {
///   value = data.azure_digitaltwins_getinstance.example.id
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azure.digitaltwins.DigitaltwinsFunctions;
/// import com.pulumi.azure.digitaltwins.inputs.GetInstanceArgs;
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
///         final var example = DigitaltwinsFunctions.getInstance(GetInstanceArgs.builder()
///             .name("existing-digital-twins")
///             .resourceGroupName("existing-resgroup")
///             .build());
///
///         ctx.export("id", example.id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: azure:digitaltwins:getInstance
///       arguments:
///         name: existing-digital-twins
///         resourceGroupName: existing-resgroup
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
/// * `Microsoft.DigitalTwins` - 2023-01-31
/// [args] Arguments passed to this invoke. {@macro pulumi_digitaltwins_get_instance_get_instance_args_doc}
/// [options] Invoke options controlling this call.
Future<GetInstanceResult> getInstance(
  GetInstanceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:digitaltwins/getInstance:getInstance',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetInstanceResult.fromMap(result);
}
