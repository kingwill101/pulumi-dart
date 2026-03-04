import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_args.dart';
import 'get_result.dart';

/// Use this data source to access information about a Load Test Service.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.loadtest.get({
///     resourceGroupName: "example-resources",
///     name: "example-load-test",
/// });
/// export const loadTestId = example.then(example => example.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.loadtest.get(resource_group_name="example-resources",
///     name="example-load-test")
/// pulumi.export("loadTestId", example.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Azure.LoadTest.Get.Invoke(new()
///     {
///         ResourceGroupName = "example-resources",
///         Name = "example-load-test",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["loadTestId"] = example.Apply(getResult => getResult.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/loadtest"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := loadtest.Get(ctx, &loadtest.GetArgs{
/// 			ResourceGroupName: "example-resources",
/// 			Name:              "example-load-test",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("loadTestId", example.Id)
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
/// import com.pulumi.azure.loadtest.LoadtestFunctions;
/// import com.pulumi.azure.loadtest.inputs.GetArgs;
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
///         final var example = LoadtestFunctions.get(GetArgs.builder()
///             .resourceGroupName("example-resources")
///             .name("example-load-test")
///             .build());
///
///         ctx.export("loadTestId", example.id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: azure:loadtest:get
///       arguments:
///         resourceGroupName: example-resources
///         name: example-load-test
/// outputs:
///   loadTestId: ${example.id}
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This data source uses the following Azure API Providers:
///
/// * `Microsoft.LoadTestService` - 2022-12-01
/// [args] Arguments passed to this invoke. {@macro pulumi_loadtest_get_get_args_doc}
/// [options] Invoke options controlling this call.
Future<GetResult> get(GetArgs args, {pulumi.InvokeOptions? options}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:loadtest/get:get',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetResult.fromMap(result);
}
