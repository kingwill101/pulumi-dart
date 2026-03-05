import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_args.dart';
import 'get_result.dart';

/// Use this data source to access information about an existing Azure Arc machine.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.arcmachine.get({
///     name: "existing-hcmachine",
///     resourceGroupName: "existing-rg",
/// });
/// export const id = example.then(example => example.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.arcmachine.get(name="existing-hcmachine",
///     resource_group_name="existing-rg")
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
///     var example = Azure.ArcMachine.Get.Invoke(new()
///     {
///         Name = "existing-hcmachine",
///         ResourceGroupName = "existing-rg",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["id"] = example.Apply(getResult => getResult.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/arcmachine"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := arcmachine.Get(ctx, &arcmachine.GetArgs{
/// 			Name:              "existing-hcmachine",
/// 			ResourceGroupName: "existing-rg",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("id", example.Id)
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
/// import com.pulumi.azure.arcmachine.ArcmachineFunctions;
/// import com.pulumi.azure.arcmachine.inputs.GetArgs;
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
///         final var example = ArcmachineFunctions.get(GetArgs.builder()
///             .name("existing-hcmachine")
///             .resourceGroupName("existing-rg")
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
///       function: azure:arcmachine:get
///       arguments:
///         name: existing-hcmachine
///         resourceGroupName: existing-rg
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
/// * `Microsoft.HybridCompute` - 2022-11-10
/// [args] Arguments passed to this invoke. {@macro pulumi_arcmachine_get_get_args_doc}
/// [options] Invoke options controlling this call.
Future<GetResult> get(
  GetArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:arcmachine/get:get',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetResult.fromMap(result);
}
