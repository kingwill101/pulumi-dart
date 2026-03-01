import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_analytics_workspace_args.dart';
import 'get_analytics_workspace_result.dart';

/// Use this data source to access information about an existing Log Analytics (formally Operational Insights) Workspace.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.operationalinsights.getAnalyticsWorkspace({
///     name: "acctest-01",
///     resourceGroupName: "acctest",
/// });
/// export const logAnalyticsWorkspaceId = example.then(example => example.workspaceId);
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.operationalinsights.get_analytics_workspace(name="acctest-01",
///     resource_group_name="acctest")
/// pulumi.export("logAnalyticsWorkspaceId", example.workspace_id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Azure.OperationalInsights.GetAnalyticsWorkspace.Invoke(new()
///     {
///         Name = "acctest-01",
///         ResourceGroupName = "acctest",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["logAnalyticsWorkspaceId"] = example.Apply(getAnalyticsWorkspaceResult => getAnalyticsWorkspaceResult.WorkspaceId),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/operationalinsights"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := operationalinsights.LookupAnalyticsWorkspace(ctx, &operationalinsights.LookupAnalyticsWorkspaceArgs{
/// 			Name:              "acctest-01",
/// 			ResourceGroupName: "acctest",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("logAnalyticsWorkspaceId", example.WorkspaceId)
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
/// import com.pulumi.azure.operationalinsights.OperationalinsightsFunctions;
/// import com.pulumi.azure.operationalinsights.inputs.GetAnalyticsWorkspaceArgs;
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
///         final var example = OperationalinsightsFunctions.getAnalyticsWorkspace(GetAnalyticsWorkspaceArgs.builder()
///             .name("acctest-01")
///             .resourceGroupName("acctest")
///             .build());
///
///         ctx.export("logAnalyticsWorkspaceId", example.workspaceId());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: azure:operationalinsights:getAnalyticsWorkspace
///       arguments:
///         name: acctest-01
///         resourceGroupName: acctest
/// outputs:
///   logAnalyticsWorkspaceId: ${example.workspaceId}
/// ```
///
///
/// ## API Providers
///
/// <!-- This section is generated, changes will be overwritten -->
/// This data source uses the following Azure API Providers:
///
/// * `Microsoft.OperationalInsights` - 2020-08-01
/// [args] Arguments passed to this invoke. {@macro pulumi_operationalinsights_get_analytics_workspace_get_analytics_workspace_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAnalyticsWorkspaceResult> getAnalyticsWorkspace(
  GetAnalyticsWorkspaceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:operationalinsights/getAnalyticsWorkspace:getAnalyticsWorkspace',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAnalyticsWorkspaceResult.fromMap(result);
}
