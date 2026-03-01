import 'package:pulumi/pulumi.dart' as pulumi;
import 'workspace_table_args.dart';
import 'workspace_table_state.dart';

/// Manages a Table in a Log Analytics (formally Operational Insights) Workspace.
///
/// > **Note:** This resource does not create or destroy tables. This resource is used to update attributes (currently only retention_in_days) of the tables created when a Log Analytics Workspace is created. Deleting an azure.loganalytics.WorkspaceTable resource will not delete the table. Instead, the table's retention_in_days field will be set to the value of azure.operationalinsights.AnalyticsWorkspace retention_in_days
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "example-resources",
///     location: "West Europe",
/// });
/// const exampleAnalyticsWorkspace = new azure.operationalinsights.AnalyticsWorkspace("example", {
///     name: "example",
///     location: example.location,
///     resourceGroupName: example.name,
///     sku: "PerGB2018",
///     retentionInDays: 30,
/// });
/// const exampleWorkspaceTable = new azure.loganalytics.WorkspaceTable("example", {
///     workspaceId: exampleAnalyticsWorkspace.id,
///     name: "AppMetrics",
///     retentionInDays: 60,
///     totalRetentionInDays: 180,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// example_analytics_workspace = azure.operationalinsights.AnalyticsWorkspace("example",
///     name="example",
///     location=example.location,
///     resource_group_name=example.name,
///     sku="PerGB2018",
///     retention_in_days=30)
/// example_workspace_table = azure.loganalytics.WorkspaceTable("example",
///     workspace_id=example_analytics_workspace.id,
///     name="AppMetrics",
///     retention_in_days=60,
///     total_retention_in_days=180)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Azure.Core.ResourceGroup("example", new()
///     {
///         Name = "example-resources",
///         Location = "West Europe",
///     });
///
///     var exampleAnalyticsWorkspace = new Azure.OperationalInsights.AnalyticsWorkspace("example", new()
///     {
///         Name = "example",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         Sku = "PerGB2018",
///         RetentionInDays = 30,
///     });
///
///     var exampleWorkspaceTable = new Azure.LogAnalytics.WorkspaceTable("example", new()
///     {
///         WorkspaceId = exampleAnalyticsWorkspace.Id,
///         Name = "AppMetrics",
///         RetentionInDays = 60,
///         TotalRetentionInDays = 180,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/loganalytics"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/operationalinsights"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("example-resources"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleAnalyticsWorkspace, err := operationalinsights.NewAnalyticsWorkspace(ctx, "example", &operationalinsights.AnalyticsWorkspaceArgs{
/// 			Name:              pulumi.String("example"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			Sku:               pulumi.String("PerGB2018"),
/// 			RetentionInDays:   pulumi.Int(30),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = loganalytics.NewWorkspaceTable(ctx, "example", &loganalytics.WorkspaceTableArgs{
/// 			WorkspaceId:          exampleAnalyticsWorkspace.ID(),
/// 			Name:                 pulumi.String("AppMetrics"),
/// 			RetentionInDays:      pulumi.Int(60),
/// 			TotalRetentionInDays: pulumi.Int(180),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
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
/// import com.pulumi.azure.core.ResourceGroup;
/// import com.pulumi.azure.core.ResourceGroupArgs;
/// import com.pulumi.azure.operationalinsights.AnalyticsWorkspace;
/// import com.pulumi.azure.operationalinsights.AnalyticsWorkspaceArgs;
/// import com.pulumi.azure.loganalytics.WorkspaceTable;
/// import com.pulumi.azure.loganalytics.WorkspaceTableArgs;
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
///         var example = new ResourceGroup("example", ResourceGroupArgs.builder()
///             .name("example-resources")
///             .location("West Europe")
///             .build());
///
///         var exampleAnalyticsWorkspace = new AnalyticsWorkspace("exampleAnalyticsWorkspace", AnalyticsWorkspaceArgs.builder()
///             .name("example")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .sku("PerGB2018")
///             .retentionInDays(30)
///             .build());
///
///         var exampleWorkspaceTable = new WorkspaceTable("exampleWorkspaceTable", WorkspaceTableArgs.builder()
///             .workspaceId(exampleAnalyticsWorkspace.id())
///             .name("AppMetrics")
///             .retentionInDays(60)
///             .totalRetentionInDays(180)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: azure:core:ResourceGroup
///     properties:
///       name: example-resources
///       location: West Europe
///   exampleAnalyticsWorkspace:
///     type: azure:operationalinsights:AnalyticsWorkspace
///     name: example
///     properties:
///       name: example
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       sku: PerGB2018
///       retentionInDays: 30
///   exampleWorkspaceTable:
///     type: azure:loganalytics:WorkspaceTable
///     name: example
///     properties:
///       workspaceId: ${exampleAnalyticsWorkspace.id}
///       name: AppMetrics
///       retentionInDays: 60
///       totalRetentionInDays: 180
/// ```
///
///
/// ## API Providers
///
/// <!-- This section is generated, changes will be overwritten -->
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.OperationalInsights` - 2022-10-01
class WorkspaceTable extends pulumi.CustomResource {
  /// Specifies the name of a table in a Log Analytics Workspace.
  late final pulumi.Output<String> name;
  /// Specify the system how to handle and charge the logs ingested to the table. Possible values are `Analytics` and `Basic`. Defaults to `Analytics`.
  ///
  /// > **Note:** The `name` of tables currently supported by the `Basic` plan can be found [here](https://learn.microsoft.com/en-us/azure/azure-monitor/logs/basic-logs-azure-tables).
  late final pulumi.Output<String?> plan;
  /// The table's retention in days. Possible values are either `8` (Basic Tier only) or range between `4` and `730`.
  late final pulumi.Output<int?> retentionInDays;
  /// The table's total retention in days. Possible values range between `4` and `730`; or `1095`, `1460`, `1826`, `2191`, `2556`, `2922`, `3288`, `3653`, `4018`, or `4383`.
  ///
  /// > **Note:** `retention_in_days` and `total_retention_in_days` will revert back to the value of azure.operationalinsights.AnalyticsWorkspace retention_in_days when a azure.loganalytics.WorkspaceTable is deleted.
  ///
  /// > **Note:** The `retention_in_days` cannot be specified when `plan` is `Basic` because the retention is fixed at eight days.
  late final pulumi.Output<int?> totalRetentionInDays;
  /// The object ID of the Log Analytics Workspace that contains the table.
  late final pulumi.Output<String> workspaceId;

  /// Creates a new [WorkspaceTable].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [WorkspaceTable]. {@macro pulumi_loganalytics_workspace_table_workspace_table_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  WorkspaceTable(
    String name, {
    WorkspaceTableArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:loganalytics/workspaceTable:WorkspaceTable',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.name = registerOutput<String>('name');
    this.plan = registerOutput<String?>('plan');
    this.retentionInDays = registerOutput<int?>('retentionInDays');
    this.totalRetentionInDays = registerOutput<int?>('totalRetentionInDays');
    this.workspaceId = registerOutput<String>('workspaceId');
  }

  /// Gets an existing [WorkspaceTable] resource's state with the given [name] and [id].
  static WorkspaceTable get(
    String name,
    pulumi.Input<String> id, {
    WorkspaceTableState? state,
  }) {
    return WorkspaceTable._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  WorkspaceTable._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:loganalytics/workspaceTable:WorkspaceTable',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.name = registerOutput<String>('name');
    this.plan = registerOutput<String?>('plan');
    this.retentionInDays = registerOutput<int?>('retentionInDays');
    this.totalRetentionInDays = registerOutput<int?>('totalRetentionInDays');
    this.workspaceId = registerOutput<String>('workspaceId');
  }
}
