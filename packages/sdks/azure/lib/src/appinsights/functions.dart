import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_insights_args.dart';
import 'get_insights_result.dart';

/// Use this data source to access information about an existing Application Insights component.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.appinsights.getInsights({
///     name: "production",
///     resourceGroupName: "networking",
/// });
/// export const applicationInsightsInstrumentationKey = example.then(example => example.instrumentationKey);
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.appinsights.get_insights(name="production",
///     resource_group_name="networking")
/// pulumi.export("applicationInsightsInstrumentationKey", example.instrumentation_key)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Azure.AppInsights.GetInsights.Invoke(new()
///     {
///         Name = "production",
///         ResourceGroupName = "networking",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["applicationInsightsInstrumentationKey"] = example.Apply(getInsightsResult => getInsightsResult.InstrumentationKey),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/appinsights"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := appinsights.LookupInsights(ctx, &appinsights.LookupInsightsArgs{
/// 			Name:              "production",
/// 			ResourceGroupName: "networking",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("applicationInsightsInstrumentationKey", example.InstrumentationKey)
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
/// data "azure_appinsights_getinsights" "example" {
///   name                = "production"
///   resource_group_name = "networking"
/// }
///
/// output "applicationInsightsInstrumentationKey" {
///   value = data.azure_appinsights_getinsights.example.instrumentation_key
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azure.appinsights.AppinsightsFunctions;
/// import com.pulumi.azure.appinsights.inputs.GetInsightsArgs;
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
///         final var example = AppinsightsFunctions.getInsights(GetInsightsArgs.builder()
///             .name("production")
///             .resourceGroupName("networking")
///             .build());
///
///         ctx.export("applicationInsightsInstrumentationKey", example.instrumentationKey());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: azure:appinsights:getInsights
///       arguments:
///         name: production
///         resourceGroupName: networking
/// outputs:
///   applicationInsightsInstrumentationKey: ${example.instrumentationKey}
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This data source uses the following Azure API Providers:
///
/// * `Microsoft.Insights` - 2020-02-02
/// [args] Arguments passed to this invoke. {@macro pulumi_appinsights_get_insights_get_insights_args_doc}
/// [options] Invoke options controlling this call.
Future<GetInsightsResult> getInsights(
  GetInsightsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:appinsights/getInsights:getInsights',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetInsightsResult.fromMap(result);
}
