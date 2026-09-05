import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_recommendations_args.dart';
import 'get_recommendations_result.dart';

/// Use this data source to access information about an existing Advisor Recommendations.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.advisor.getRecommendations({
///     filterByCategories: [
///         "security",
///         "cost",
///     ],
///     filterByResourceGroups: ["example-resgroups"],
/// });
/// export const recommendations = example.then(example => example.recommendations);
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.advisor.get_recommendations(filter_by_categories=[
///         "security",
///         "cost",
///     ],
///     filter_by_resource_groups=["example-resgroups"])
/// pulumi.export("recommendations", example.recommendations)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Azure.Advisor.GetRecommendations.Invoke(new()
///     {
///         FilterByCategories = new[]
///         {
///             "security",
///             "cost",
///         },
///         FilterByResourceGroups = new[]
///         {
///             "example-resgroups",
///         },
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["recommendations"] = example.Apply(getRecommendationsResult => getRecommendationsResult.Recommendations),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/advisor"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := advisor.GetRecommendations(ctx, &advisor.GetRecommendationsArgs{
/// 			FilterByCategories: []string{
/// 				"security",
/// 				"cost",
/// 			},
/// 			FilterByResourceGroups: []string{
/// 				"example-resgroups",
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("recommendations", example.Recommendations)
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
/// data "azure_advisor_getrecommendations" "example" {
///   filter_by_categories      = ["security", "cost"]
///   filter_by_resource_groups = ["example-resgroups"]
/// }
///
/// output "recommendations" {
///   value = data.azure_advisor_getrecommendations.example.recommendations
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azure.advisor.AdvisorFunctions;
/// import com.pulumi.azure.advisor.inputs.GetRecommendationsArgs;
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
///         final var example = AdvisorFunctions.getRecommendations(GetRecommendationsArgs.builder()
///             .filterByCategories(
///                 "security",
///                 "cost")
///             .filterByResourceGroups("example-resgroups")
///             .build());
///
///         ctx.export("recommendations", example.recommendations());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: azure:advisor:getRecommendations
///       arguments:
///         filterByCategories:
///           - security
///           - cost
///         filterByResourceGroups:
///           - example-resgroups
/// outputs:
///   recommendations: ${example.recommendations}
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This data source uses the following Azure API Providers:
///
/// * `Microsoft.Advisor` - 2023-01-01
/// [args] Arguments passed to this invoke. {@macro pulumi_advisor_get_recommendations_get_recommendations_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRecommendationsResult> getRecommendations(
  GetRecommendationsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:advisor/getRecommendations:getRecommendations',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRecommendationsResult.fromMap(result);
}

pulumi.Output<GetRecommendationsResult> getRecommendationsOutput(
  GetRecommendationsArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure:advisor/getRecommendations:getRecommendations',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetRecommendationsResult.fromMap);
}
