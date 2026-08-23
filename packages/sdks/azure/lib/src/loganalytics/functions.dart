import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_workspace_table_args.dart';
import 'get_workspace_table_result.dart';

/// Use this data source to access information about an existing Log Analytics Workspace Table.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.loganalytics.getWorkspaceTable({
///     name: "InsightsMetrics",
///     workspaceId: exampleAzurermLogAnalyticsWorkspace.id,
/// });
/// export const retentionInDays = example.then(example => example.retentionInDays);
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.loganalytics.get_workspace_table(name="InsightsMetrics",
///     workspace_id=example_azurerm_log_analytics_workspace["id"])
/// pulumi.export("retentionInDays", example.retention_in_days)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Azure.LogAnalytics.GetWorkspaceTable.Invoke(new()
///     {
///         Name = "InsightsMetrics",
///         WorkspaceId = exampleAzurermLogAnalyticsWorkspace.Id,
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["retentionInDays"] = example.Apply(getWorkspaceTableResult => getWorkspaceTableResult.RetentionInDays),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/loganalytics"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := loganalytics.LookupWorkspaceTable(ctx, &loganalytics.LookupWorkspaceTableArgs{
/// 			Name:        "InsightsMetrics",
/// 			WorkspaceId: exampleAzurermLogAnalyticsWorkspace.Id,
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("retentionInDays", example.RetentionInDays)
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
/// data "azure_loganalytics_getworkspacetable" "example" {
///   name         = "InsightsMetrics"
///   workspace_id = exampleAzurermLogAnalyticsWorkspace.id
/// }
///
/// output "retentionInDays" {
///   value = data.azure_loganalytics_getworkspacetable.example.retention_in_days
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azure.loganalytics.LoganalyticsFunctions;
/// import com.pulumi.azure.loganalytics.inputs.GetWorkspaceTableArgs;
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
///         final var example = LoganalyticsFunctions.getWorkspaceTable(GetWorkspaceTableArgs.builder()
///             .name("InsightsMetrics")
///             .workspaceId(exampleAzurermLogAnalyticsWorkspace.id())
///             .build());
///
///         ctx.export("retentionInDays", example.retentionInDays());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: azure:loganalytics:getWorkspaceTable
///       arguments:
///         name: InsightsMetrics
///         workspaceId: ${exampleAzurermLogAnalyticsWorkspace.id}
/// outputs:
///   retentionInDays: ${example.retentionInDays}
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This data source uses the following Azure API Providers:
///
/// * `Microsoft.OperationalInsights` - 2022-10-01
/// [args] Arguments passed to this invoke. {@macro pulumi_loganalytics_get_workspace_table_get_workspace_table_args_doc}
/// [options] Invoke options controlling this call.
Future<GetWorkspaceTableResult> getWorkspaceTable(
  GetWorkspaceTableArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:loganalytics/getWorkspaceTable:getWorkspaceTable',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetWorkspaceTableResult.fromMap(result);
}
