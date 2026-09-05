import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_definition_args.dart';
import 'get_definition_result.dart';

/// Uses this data source to access information about an existing Managed Application Definition.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.managedapplication.getDefinition({
///     name: "examplemanagedappdef",
///     resourceGroupName: "exampleresources",
/// });
/// export const id = example.then(example => example.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.managedapplication.get_definition(name="examplemanagedappdef",
///     resource_group_name="exampleresources")
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
///     var example = Azure.ManagedApplication.GetDefinition.Invoke(new()
///     {
///         Name = "examplemanagedappdef",
///         ResourceGroupName = "exampleresources",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["id"] = example.Apply(getDefinitionResult => getDefinitionResult.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/managedapplication"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := managedapplication.LookupDefinition(ctx, &managedapplication.LookupDefinitionArgs{
/// 			Name:              "examplemanagedappdef",
/// 			ResourceGroupName: "exampleresources",
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
/// data "azure_managedapplication_getdefinition" "example" {
///   name                = "examplemanagedappdef"
///   resource_group_name = "exampleresources"
/// }
///
/// output "id" {
///   value = data.azure_managedapplication_getdefinition.example.id
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azure.managedapplication.ManagedapplicationFunctions;
/// import com.pulumi.azure.managedapplication.inputs.GetDefinitionArgs;
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
///         final var example = ManagedapplicationFunctions.getDefinition(GetDefinitionArgs.builder()
///             .name("examplemanagedappdef")
///             .resourceGroupName("exampleresources")
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
///       function: azure:managedapplication:getDefinition
///       arguments:
///         name: examplemanagedappdef
///         resourceGroupName: exampleresources
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
/// * `Microsoft.Solutions` - 2021-07-01
/// [args] Arguments passed to this invoke. {@macro pulumi_managedapplication_get_definition_get_definition_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDefinitionResult> getDefinition(
  GetDefinitionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:managedapplication/getDefinition:getDefinition',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDefinitionResult.fromMap(result);
}

pulumi.Output<GetDefinitionResult> getDefinitionOutput(
  GetDefinitionArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure:managedapplication/getDefinition:getDefinition',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetDefinitionResult.fromMap);
}
