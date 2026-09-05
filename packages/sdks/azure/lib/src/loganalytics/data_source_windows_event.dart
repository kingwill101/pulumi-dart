import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_source_windows_event_args.dart';
import 'data_source_windows_event_state.dart';

/// Manages a Log Analytics Windows Event DataSource.
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
///     name: "example-law",
///     location: example.location,
///     resourceGroupName: example.name,
///     sku: "PerGB2018",
/// });
/// const exampleDataSourceWindowsEvent = new azure.loganalytics.DataSourceWindowsEvent("example", {
///     name: "example-lad-wpc",
///     resourceGroupName: example.name,
///     workspaceName: exampleAnalyticsWorkspace.name,
///     eventLogName: "Application",
///     eventTypes: ["Error"],
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
///     name="example-law",
///     location=example.location,
///     resource_group_name=example.name,
///     sku="PerGB2018")
/// example_data_source_windows_event = azure.loganalytics.DataSourceWindowsEvent("example",
///     name="example-lad-wpc",
///     resource_group_name=example.name,
///     workspace_name=example_analytics_workspace.name,
///     event_log_name="Application",
///     event_types=["Error"])
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
///         Name = "example-law",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         Sku = "PerGB2018",
///     });
///
///     var exampleDataSourceWindowsEvent = new Azure.LogAnalytics.DataSourceWindowsEvent("example", new()
///     {
///         Name = "example-lad-wpc",
///         ResourceGroupName = example.Name,
///         WorkspaceName = exampleAnalyticsWorkspace.Name,
///         EventLogName = "Application",
///         EventTypes = new[]
///         {
///             "Error",
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
/// 			Name:              pulumi.String("example-law"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			Sku:               pulumi.String("PerGB2018"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = loganalytics.NewDataSourceWindowsEvent(ctx, "example", &loganalytics.DataSourceWindowsEventArgs{
/// 			Name:              pulumi.String("example-lad-wpc"),
/// 			ResourceGroupName: example.Name,
/// 			WorkspaceName:     exampleAnalyticsWorkspace.Name,
/// 			EventLogName:      pulumi.String("Application"),
/// 			EventTypes: pulumi.StringArray{
/// 				pulumi.String("Error"),
/// 			},
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
///   name                = "example-law"
///   location            = azure_core_resourcegroup.example.location
///   resource_group_name = azure_core_resourcegroup.example.name
///   sku                 = "PerGB2018"
/// }
/// resource "azure_loganalytics_datasourcewindowsevent" "example" {
///   name                = "example-lad-wpc"
///   resource_group_name = azure_core_resourcegroup.example.name
///   workspace_name      = azure_operationalinsights_analyticsworkspace.example.name
///   event_log_name      = "Application"
///   event_types         = ["Error"]
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
/// import com.pulumi.azure.loganalytics.DataSourceWindowsEvent;
/// import com.pulumi.azure.loganalytics.DataSourceWindowsEventArgs;
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
///             .name("example-law")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .sku("PerGB2018")
///             .build());
///
///         var exampleDataSourceWindowsEvent = new DataSourceWindowsEvent("exampleDataSourceWindowsEvent", DataSourceWindowsEventArgs.builder()
///             .name("example-lad-wpc")
///             .resourceGroupName(example.name())
///             .workspaceName(exampleAnalyticsWorkspace.name())
///             .eventLogName("Application")
///             .eventTypes("Error")
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
///       name: example-law
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       sku: PerGB2018
///   exampleDataSourceWindowsEvent:
///     type: azure:loganalytics:DataSourceWindowsEvent
///     name: example
///     properties:
///       name: example-lad-wpc
///       resourceGroupName: ${example.name}
///       workspaceName: ${exampleAnalyticsWorkspace.name}
///       eventLogName: Application
///       eventTypes:
///         - Error
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.OperationalInsights` - 2020-08-01
///
/// ## Import
///
/// Log Analytics Windows Event DataSources can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:loganalytics/dataSourceWindowsEvent:DataSourceWindowsEvent example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.OperationalInsights/workspaces/workspace1/dataSources/datasource1
/// ```
class DataSourceWindowsEvent extends pulumi.CustomResource {
  /// Specifies the name of the Windows Event Log to collect events from.
  late final pulumi.Output<String> eventLogName;
  /// Specifies an array of event types applied to the specified event log. Possible values include `Error`, `Warning` and `Information`.
  late final pulumi.Output<List<String>> eventTypes;
  /// The name which should be used for this Log Analytics Windows Event DataSource. Changing this forces a new Log Analytics Windows Event DataSource to be created.
  late final pulumi.Output<String> name;
  /// The name of the Resource Group where the Log Analytics Windows Event DataSource should exist. Changing this forces a new Log Analytics Windows Event DataSource to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// The name of the Log Analytics Workspace where the Log Analytics Windows Event DataSource should exist. Changing this forces a new Log Analytics Windows Event DataSource to be created.
  late final pulumi.Output<String> workspaceName;

  /// Creates a new [DataSourceWindowsEvent].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DataSourceWindowsEvent]. {@macro pulumi_loganalytics_data_source_windows_event_data_source_windows_event_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DataSourceWindowsEvent(
    String name, {
    DataSourceWindowsEventArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:loganalytics/dataSourceWindowsEvent:DataSourceWindowsEvent',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.40.0').merge(options),
        ) {
    eventLogName = registerOutput<String>('eventLogName');
    eventTypes = registerOutput<List<String>>('eventTypes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    this.name = registerOutput<String>('name');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    workspaceName = registerOutput<String>('workspaceName');
  }

  /// Gets an existing [DataSourceWindowsEvent] resource's state with the given [name] and [id].
  static DataSourceWindowsEvent get(
    String name,
    pulumi.Input<String> id, {
    DataSourceWindowsEventState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return DataSourceWindowsEvent._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  DataSourceWindowsEvent._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:loganalytics/dataSourceWindowsEvent:DataSourceWindowsEvent',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    eventLogName = registerOutput<String>('eventLogName');
    eventTypes = registerOutput<List<String>>('eventTypes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    this.name = registerOutput<String>('name');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    workspaceName = registerOutput<String>('workspaceName');
  }

  /// Creates a typed reference to an existing [DataSourceWindowsEvent] resource.
  DataSourceWindowsEvent.reference(String urn)
    : super(
        'azure:loganalytics/dataSourceWindowsEvent:DataSourceWindowsEvent',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    eventLogName = registerOutput<String>('eventLogName');
    eventTypes = registerOutput<List<String>>('eventTypes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    this.name = registerOutput<String>('name');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    workspaceName = registerOutput<String>('workspaceName');
  }
}
