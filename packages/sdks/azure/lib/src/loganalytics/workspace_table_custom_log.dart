import 'package:pulumi/pulumi.dart' as pulumi;
import 'workspace_table_custom_log_args.dart';
import 'workspace_table_custom_log_state.dart';

/// Manages a Custom Log Table in a Log Analytics (formally Operational Insights) Workspace.
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
/// const exampleWorkspaceTableCustomLog = new azure.loganalytics.WorkspaceTableCustomLog("example", {
///     name: "example_CL",
///     workspaceId: exampleAnalyticsWorkspace.id,
///     columns: [{
///         name: "TimeGenerated",
///         type: "datetime",
///     }],
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
/// example_workspace_table_custom_log = azure.loganalytics.WorkspaceTableCustomLog("example",
///     name="example_CL",
///     workspace_id=example_analytics_workspace.id,
///     columns=[{
///         "name": "TimeGenerated",
///         "type": "datetime",
///     }])
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
///     var exampleWorkspaceTableCustomLog = new Azure.LogAnalytics.WorkspaceTableCustomLog("example", new()
///     {
///         Name = "example_CL",
///         WorkspaceId = exampleAnalyticsWorkspace.Id,
///         Columns = new[]
///         {
///             new Azure.LogAnalytics.Inputs.WorkspaceTableCustomLogColumnArgs
///             {
///                 Name = "TimeGenerated",
///                 Type = "datetime",
///             },
///         },
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
/// 		_, err = loganalytics.NewWorkspaceTableCustomLog(ctx, "example", &loganalytics.WorkspaceTableCustomLogArgs{
/// 			Name:        pulumi.String("example_CL"),
/// 			WorkspaceId: exampleAnalyticsWorkspace.ID(),
/// 			Columns: loganalytics.WorkspaceTableCustomLogColumnArray{
/// 				&loganalytics.WorkspaceTableCustomLogColumnArgs{
/// 					Name: pulumi.String("TimeGenerated"),
/// 					Type: pulumi.String("datetime"),
/// 				},
/// 			},
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
/// import com.pulumi.azure.loganalytics.WorkspaceTableCustomLog;
/// import com.pulumi.azure.loganalytics.WorkspaceTableCustomLogArgs;
/// import com.pulumi.azure.loganalytics.inputs.WorkspaceTableCustomLogColumnArgs;
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
///         var exampleWorkspaceTableCustomLog = new WorkspaceTableCustomLog("exampleWorkspaceTableCustomLog", WorkspaceTableCustomLogArgs.builder()
///             .name("example_CL")
///             .workspaceId(exampleAnalyticsWorkspace.id())
///             .columns(WorkspaceTableCustomLogColumnArgs.builder()
///                 .name("TimeGenerated")
///                 .type("datetime")
///                 .build())
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
///   exampleWorkspaceTableCustomLog:
///     type: azure:loganalytics:WorkspaceTableCustomLog
///     name: example
///     properties:
///       name: example_CL
///       workspaceId: ${exampleAnalyticsWorkspace.id}
///       columns:
///         - name: TimeGenerated
///           type: datetime
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.OperationalInsights` - 2022-10-01
///
/// ## Import
///
/// Log Analytics Workspace Table Custom Logs can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:loganalytics/workspaceTableCustomLog:WorkspaceTableCustomLog example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/mygroup1/providers/Microsoft.OperationalInsights/workspaces/workspace1/tables/table1
/// ```
class WorkspaceTableCustomLog extends pulumi.CustomResource {
  /// One or more `column` blocks as defined below.
  late final pulumi.Output<List<Map<String, dynamic>>> columns;

  /// The description of the table.
  late final pulumi.Output<String?> description;

  /// The display name of the table.
  late final pulumi.Output<String?> displayName;

  /// Specifies the name of the Log Analytics Workspace Table Custom Log. Changing this forces a new resource to be created.
  ///
  /// &gt; **Note:** `name` must end with `_CL`.
  late final pulumi.Output<String> name;

  /// Specify the system how to handle and charge the logs ingested to the table. Possible values are `Analytics` and `Basic`. Defaults to `Analytics`.
  ///
  /// &gt; **Note:** Changing the table's `plan` is limited to once a week.
  late final pulumi.Output<String?> plan;

  /// The table's retention in days. Possible values range between `4` and `730`.
  ///
  /// &gt; **Note:** `retention_in_days` cannot be set when `plan` is set to `Basic` because the retention is fixed.
  late final pulumi.Output<int?> retentionInDays;

  /// A list of solutions associated with the table.
  late final pulumi.Output<List<String>> solutions;

  /// One or more `standard_column` blocks as defined below.
  late final pulumi.Output<List<Map<String, dynamic>>> standardColumns;

  /// The table's total retention in days. Possible values range between `4` and `730`; or `1095`, `1460`, `1826`, `2191`, `2556`, `2922`, `3288`, `3653`, `4018`, or `4383`.
  late final pulumi.Output<int?> totalRetentionInDays;

  /// The object ID of the Log Analytics Workspace that contains the table. Changing this forces a new resource to be created.
  late final pulumi.Output<String> workspaceId;

  /// Creates a new [WorkspaceTableCustomLog].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [WorkspaceTableCustomLog]. {@macro pulumi_loganalytics_workspace_table_custom_log_workspace_table_custom_log_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  WorkspaceTableCustomLog(
    String name, {
    WorkspaceTableCustomLogArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:loganalytics/workspaceTableCustomLog:WorkspaceTableCustomLog',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    columns = registerOutput<List<Map<String, dynamic>>>('columns');
    description = registerOutput<String?>('description');
    displayName = registerOutput<String?>('displayName');
    this.name = registerOutput<String>('name');
    plan = registerOutput<String?>('plan');
    retentionInDays = registerOutput<int?>('retentionInDays');
    solutions = registerOutput<List<String>>('solutions');
    standardColumns = registerOutput<List<Map<String, dynamic>>>(
      'standardColumns',
    );
    totalRetentionInDays = registerOutput<int?>('totalRetentionInDays');
    workspaceId = registerOutput<String>('workspaceId');
  }

  /// Gets an existing [WorkspaceTableCustomLog] resource's state with the given [name] and [id].
  static WorkspaceTableCustomLog get(
    String name,
    pulumi.Input<String> id, {
    WorkspaceTableCustomLogState? state,
  }) {
    return WorkspaceTableCustomLog._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  WorkspaceTableCustomLog._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:loganalytics/workspaceTableCustomLog:WorkspaceTableCustomLog',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    columns = registerOutput<List<Map<String, dynamic>>>('columns');
    description = registerOutput<String?>('description');
    displayName = registerOutput<String?>('displayName');
    this.name = registerOutput<String>('name');
    plan = registerOutput<String?>('plan');
    retentionInDays = registerOutput<int?>('retentionInDays');
    solutions = registerOutput<List<String>>('solutions');
    standardColumns = registerOutput<List<Map<String, dynamic>>>(
      'standardColumns',
    );
    totalRetentionInDays = registerOutput<int?>('totalRetentionInDays');
    workspaceId = registerOutput<String>('workspaceId');
  }
}
