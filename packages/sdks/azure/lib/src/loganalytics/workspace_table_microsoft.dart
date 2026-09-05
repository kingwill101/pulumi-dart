import 'package:pulumi/pulumi.dart' as pulumi;
import 'workspace_table_microsoft_args.dart';
import 'workspace_table_microsoft_column.dart';
import 'workspace_table_microsoft_standard_column.dart';
import 'workspace_table_microsoft_state.dart';

/// Manages a Microsoft Table in a Log Analytics (formally Operational Insights) Workspace.
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
///     retentionInDays: 30,
/// });
/// const exampleWorkspaceTableMicrosoft = new azure.loganalytics.WorkspaceTableMicrosoft("example", {
///     name: "AppCenterError",
///     workspaceId: exampleAnalyticsWorkspace.id,
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
///     retention_in_days=30)
/// example_workspace_table_microsoft = azure.loganalytics.WorkspaceTableMicrosoft("example",
///     name="AppCenterError",
///     workspace_id=example_analytics_workspace.id)
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
///         RetentionInDays = 30,
///     });
///
///     var exampleWorkspaceTableMicrosoft = new Azure.LogAnalytics.WorkspaceTableMicrosoft("example", new()
///     {
///         Name = "AppCenterError",
///         WorkspaceId = exampleAnalyticsWorkspace.Id,
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
/// 			RetentionInDays:   pulumi.Int(30),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = loganalytics.NewWorkspaceTableMicrosoft(ctx, "example", &loganalytics.WorkspaceTableMicrosoftArgs{
/// 			Name:        pulumi.String("AppCenterError"),
/// 			WorkspaceId: exampleAnalyticsWorkspace.ID().ToIDOutput().ToStringOutput(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
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
/// resource "azure_core_resourcegroup" "example" {
///   name     = "example-resources"
///   location = "West Europe"
/// }
/// resource "azure_operationalinsights_analyticsworkspace" "example" {
///   name                = "example"
///   location            = azure_core_resourcegroup.example.location
///   resource_group_name = azure_core_resourcegroup.example.name
///   retention_in_days   = 30
/// }
/// resource "azure_loganalytics_workspacetablemicrosoft" "example" {
///   name         = "AppCenterError"
///   workspace_id = azure_operationalinsights_analyticsworkspace.example.id
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
/// import com.pulumi.azure.loganalytics.WorkspaceTableMicrosoft;
/// import com.pulumi.azure.loganalytics.WorkspaceTableMicrosoftArgs;
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
///         var example = new ResourceGroup("example", ResourceGroupArgs.builder()
///             .name("example-resources")
///             .location("West Europe")
///             .build());
///
///         var exampleAnalyticsWorkspace = new AnalyticsWorkspace("exampleAnalyticsWorkspace", AnalyticsWorkspaceArgs.builder()
///             .name("example")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .retentionInDays(30)
///             .build());
///
///         var exampleWorkspaceTableMicrosoft = new WorkspaceTableMicrosoft("exampleWorkspaceTableMicrosoft", WorkspaceTableMicrosoftArgs.builder()
///             .name("AppCenterError")
///             .workspaceId(exampleAnalyticsWorkspace.id())
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
///       retentionInDays: 30
///   exampleWorkspaceTableMicrosoft:
///     type: azure:loganalytics:WorkspaceTableMicrosoft
///     name: example
///     properties:
///       name: AppCenterError
///       workspaceId: ${exampleAnalyticsWorkspace.id}
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
/// Log Analytics Workspace Table Microsofts can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:loganalytics/workspaceTableMicrosoft:WorkspaceTableMicrosoft example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/mygroup1/providers/Microsoft.OperationalInsights/workspaces/workspace1/tables/table1
/// ```
class WorkspaceTableMicrosoft extends pulumi.CustomResource {
  /// One or more `column` blocks as defined below.
  late final pulumi.Output<List<WorkspaceTableMicrosoftColumn>?> columns;
  /// A description of the table.
  late final pulumi.Output<String?> description;
  /// The display name of the table.
  late final pulumi.Output<String?> displayName;
  /// Specifies a list of table labels.
  late final pulumi.Output<List<String>?> labels;
  /// The name which should be used for this Log Analytics Workspace Table Microsoft. Possible values are `Alert`, `AppCenterError`, `ComputerGroup`, `InsightsMetrics`, `Operation` and `Usage`. Changing this forces a new Log Analytics Workspace Table Microsoft to be created.
  late final pulumi.Output<String> name;
  /// The table retention in days, between `4` and `730`.
  ///
  /// &gt; **Note:** `retentionInDays` must be less than or equal to `totalRetentionInDays`.
  late final pulumi.Output<int?> retentionInDays;
  /// The list of solutions associated with this table.
  late final pulumi.Output<List<String>> solutions;
  /// A `standardColumn` block as defined below.
  late final pulumi.Output<List<WorkspaceTableMicrosoftStandardColumn>> standardColumns;
  /// The table total retention in days, between `4` and `4383`.
  late final pulumi.Output<int?> totalRetentionInDays;
  /// The ID of the Log Analytics Workspace. Changing this forces a new Log Analytics Workspace Table Microsoft to be created.
  late final pulumi.Output<String> workspaceId;

  /// Creates a new [WorkspaceTableMicrosoft].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [WorkspaceTableMicrosoft]. {@macro pulumi_loganalytics_workspace_table_microsoft_workspace_table_microsoft_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  WorkspaceTableMicrosoft(
    String name, {
    WorkspaceTableMicrosoftArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:loganalytics/workspaceTableMicrosoft:WorkspaceTableMicrosoft',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.40.0').merge(options),
        ) {
    columns = registerOutput<List<WorkspaceTableMicrosoftColumn>?>('columns', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<WorkspaceTableMicrosoftColumn>(guardedValue, (value) => WorkspaceTableMicrosoftColumn.fromMap((value as Map).cast<String, dynamic>())); });
    description = registerOutput<String?>('description');
    displayName = registerOutput<String?>('displayName');
    labels = registerOutput<List<String>?>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    this.name = registerOutput<String>('name');
    retentionInDays = registerOutput<int?>('retentionInDays');
    solutions = registerOutput<List<String>>('solutions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    standardColumns = registerOutput<List<WorkspaceTableMicrosoftStandardColumn>>('standardColumns', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<WorkspaceTableMicrosoftStandardColumn>(guardedValue, (value) => WorkspaceTableMicrosoftStandardColumn.fromMap((value as Map).cast<String, dynamic>())); });
    totalRetentionInDays = registerOutput<int?>('totalRetentionInDays');
    workspaceId = registerOutput<String>('workspaceId');
  }

  /// Gets an existing [WorkspaceTableMicrosoft] resource's state with the given [name] and [id].
  static WorkspaceTableMicrosoft get(
    String name,
    pulumi.Input<String> id, {
    WorkspaceTableMicrosoftState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return WorkspaceTableMicrosoft._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  WorkspaceTableMicrosoft._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:loganalytics/workspaceTableMicrosoft:WorkspaceTableMicrosoft',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    columns = registerOutput<List<WorkspaceTableMicrosoftColumn>?>('columns', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<WorkspaceTableMicrosoftColumn>(guardedValue, (value) => WorkspaceTableMicrosoftColumn.fromMap((value as Map).cast<String, dynamic>())); });
    description = registerOutput<String?>('description');
    displayName = registerOutput<String?>('displayName');
    labels = registerOutput<List<String>?>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    this.name = registerOutput<String>('name');
    retentionInDays = registerOutput<int?>('retentionInDays');
    solutions = registerOutput<List<String>>('solutions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    standardColumns = registerOutput<List<WorkspaceTableMicrosoftStandardColumn>>('standardColumns', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<WorkspaceTableMicrosoftStandardColumn>(guardedValue, (value) => WorkspaceTableMicrosoftStandardColumn.fromMap((value as Map).cast<String, dynamic>())); });
    totalRetentionInDays = registerOutput<int?>('totalRetentionInDays');
    workspaceId = registerOutput<String>('workspaceId');
  }

  /// Creates a typed reference to an existing [WorkspaceTableMicrosoft] resource.
  WorkspaceTableMicrosoft.reference(String urn)
    : super(
        'azure:loganalytics/workspaceTableMicrosoft:WorkspaceTableMicrosoft',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    columns = registerOutput<List<WorkspaceTableMicrosoftColumn>?>('columns', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<WorkspaceTableMicrosoftColumn>(guardedValue, (value) => WorkspaceTableMicrosoftColumn.fromMap((value as Map).cast<String, dynamic>())); });
    description = registerOutput<String?>('description');
    displayName = registerOutput<String?>('displayName');
    labels = registerOutput<List<String>?>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    this.name = registerOutput<String>('name');
    retentionInDays = registerOutput<int?>('retentionInDays');
    solutions = registerOutput<List<String>>('solutions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    standardColumns = registerOutput<List<WorkspaceTableMicrosoftStandardColumn>>('standardColumns', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<WorkspaceTableMicrosoftStandardColumn>(guardedValue, (value) => WorkspaceTableMicrosoftStandardColumn.fromMap((value as Map).cast<String, dynamic>())); });
    totalRetentionInDays = registerOutput<int?>('totalRetentionInDays');
    workspaceId = registerOutput<String>('workspaceId');
  }
}
