import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_services_account_args.dart';
import 'get_services_account_result.dart';

/// Use this data source to access information about an existing Graph Services Account.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.graph.getServicesAccount({
///     name: "example-graph-services-account",
///     resourceGroupName: "example-resources",
/// });
/// export const applicationId = example.then(example => example.applicationId);
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.graph.get_services_account(name="example-graph-services-account",
///     resource_group_name="example-resources")
/// pulumi.export("applicationId", example.application_id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Azure.Graph.GetServicesAccount.Invoke(new()
///     {
///         Name = "example-graph-services-account",
///         ResourceGroupName = "example-resources",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["applicationId"] = example.Apply(getServicesAccountResult => getServicesAccountResult.ApplicationId),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/graph"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := graph.LookupServicesAccount(ctx, &graph.LookupServicesAccountArgs{
/// 			Name:              "example-graph-services-account",
/// 			ResourceGroupName: "example-resources",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("applicationId", example.ApplicationId)
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
/// data "azure_graph_getservicesaccount" "example" {
///   name                = "example-graph-services-account"
///   resource_group_name = "example-resources"
/// }
///
/// output "applicationId" {
///   value = data.azure_graph_getservicesaccount.example.application_id
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azure.graph.GraphFunctions;
/// import com.pulumi.azure.graph.inputs.GetServicesAccountArgs;
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
///         final var example = GraphFunctions.getServicesAccount(GetServicesAccountArgs.builder()
///             .name("example-graph-services-account")
///             .resourceGroupName("example-resources")
///             .build());
///
///         ctx.export("applicationId", example.applicationId());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: azure:graph:getServicesAccount
///       arguments:
///         name: example-graph-services-account
///         resourceGroupName: example-resources
/// outputs:
///   applicationId: ${example.applicationId}
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This data source uses the following Azure API Providers:
///
/// * `Microsoft.GraphServices` - 2023-04-13
/// [args] Arguments passed to this invoke. {@macro pulumi_graph_get_services_account_get_services_account_args_doc}
/// [options] Invoke options controlling this call.
Future<GetServicesAccountResult> getServicesAccount(
  GetServicesAccountArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:graph/getServicesAccount:getServicesAccount',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetServicesAccountResult.fromMap(result);
}
