import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_source_windows_performance_counter_args.dart';
import 'data_source_windows_performance_counter_state.dart';

/// Manages a Log Analytics (formally Operational Insights) Windows Performance Counter DataSource.
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
/// const exampleDataSourceWindowsPerformanceCounter = new azure.loganalytics.DataSourceWindowsPerformanceCounter("example", {
///     name: "example-lad-wpc",
///     resourceGroupName: example.name,
///     workspaceName: exampleAnalyticsWorkspace.name,
///     objectName: "CPU",
///     instanceName: "*",
///     counterName: "CPU",
///     intervalSeconds: 10,
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
/// example_data_source_windows_performance_counter = azure.loganalytics.DataSourceWindowsPerformanceCounter("example",
///     name="example-lad-wpc",
///     resource_group_name=example.name,
///     workspace_name=example_analytics_workspace.name,
///     object_name="CPU",
///     instance_name="*",
///     counter_name="CPU",
///     interval_seconds=10)
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
///     var exampleDataSourceWindowsPerformanceCounter = new Azure.LogAnalytics.DataSourceWindowsPerformanceCounter("example", new()
///     {
///         Name = "example-lad-wpc",
///         ResourceGroupName = example.Name,
///         WorkspaceName = exampleAnalyticsWorkspace.Name,
///         ObjectName = "CPU",
///         InstanceName = "*",
///         CounterName = "CPU",
///         IntervalSeconds = 10,
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
/// 		_, err = loganalytics.NewDataSourceWindowsPerformanceCounter(ctx, "example", &loganalytics.DataSourceWindowsPerformanceCounterArgs{
/// 			Name:              pulumi.String("example-lad-wpc"),
/// 			ResourceGroupName: example.Name,
/// 			WorkspaceName:     exampleAnalyticsWorkspace.Name,
/// 			ObjectName:        pulumi.String("CPU"),
/// 			InstanceName:      pulumi.String("*"),
/// 			CounterName:       pulumi.String("CPU"),
/// 			IntervalSeconds:   pulumi.Int(10),
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
/// resource "azure_loganalytics_datasourcewindowsperformancecounter" "example" {
///   name                = "example-lad-wpc"
///   resource_group_name = azure_core_resourcegroup.example.name
///   workspace_name      = azure_operationalinsights_analyticsworkspace.example.name
///   object_name         = "CPU"
///   instance_name       = "*"
///   counter_name        = "CPU"
///   interval_seconds    = 10
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
/// import com.pulumi.azure.loganalytics.DataSourceWindowsPerformanceCounter;
/// import com.pulumi.azure.loganalytics.DataSourceWindowsPerformanceCounterArgs;
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
///         var exampleDataSourceWindowsPerformanceCounter = new DataSourceWindowsPerformanceCounter("exampleDataSourceWindowsPerformanceCounter", DataSourceWindowsPerformanceCounterArgs.builder()
///             .name("example-lad-wpc")
///             .resourceGroupName(example.name())
///             .workspaceName(exampleAnalyticsWorkspace.name())
///             .objectName("CPU")
///             .instanceName("*")
///             .counterName("CPU")
///             .intervalSeconds(10)
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
///   exampleDataSourceWindowsPerformanceCounter:
///     type: azure:loganalytics:DataSourceWindowsPerformanceCounter
///     name: example
///     properties:
///       name: example-lad-wpc
///       resourceGroupName: ${example.name}
///       workspaceName: ${exampleAnalyticsWorkspace.name}
///       objectName: CPU
///       instanceName: '*'
///       counterName: CPU
///       intervalSeconds: 10
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
/// Log Analytics Windows Performance Counter DataSources can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:loganalytics/dataSourceWindowsPerformanceCounter:DataSourceWindowsPerformanceCounter example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.OperationalInsights/workspaces/workspace1/dataSources/datasource1
/// ```
class DataSourceWindowsPerformanceCounter extends pulumi.CustomResource {
  /// The friendly name of the performance counter.
  late final pulumi.Output<String> counterName;
  /// The name of the virtual machine instance to which the Windows Performance Counter DataSource be applied. Specify a `*` will apply to all instances.
  late final pulumi.Output<String> instanceName;
  /// The time of sample interval in seconds. Supports values between 10 and 2147483647.
  late final pulumi.Output<int> intervalSeconds;
  /// The Name which should be used for this Log Analytics Windows Performance Counter DataSource. Changing this forces a new Log Analytics Windows Performance Counter DataSource to be created.
  late final pulumi.Output<String> name;
  /// The object name of the Log Analytics Windows Performance Counter DataSource.
  late final pulumi.Output<String> objectName;
  /// The name of the Resource Group where the Log Analytics Windows Performance Counter DataSource should exist. Changing this forces a new Log Analytics Windows Performance Counter DataSource to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// The name of the Log Analytics Workspace where the Log Analytics Windows Performance Counter DataSource should exist. Changing this forces a new Log Analytics Windows Performance Counter DataSource to be created.
  late final pulumi.Output<String> workspaceName;

  /// Creates a new [DataSourceWindowsPerformanceCounter].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DataSourceWindowsPerformanceCounter]. {@macro pulumi_loganalytics_data_source_windows_performance_counter_data_source_windows_performance_counter_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DataSourceWindowsPerformanceCounter(
    String name, {
    DataSourceWindowsPerformanceCounterArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:loganalytics/dataSourceWindowsPerformanceCounter:DataSourceWindowsPerformanceCounter',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    counterName = registerOutput<String>('counterName');
    instanceName = registerOutput<String>('instanceName');
    intervalSeconds = registerOutput<int>('intervalSeconds');
    this.name = registerOutput<String>('name');
    objectName = registerOutput<String>('objectName');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    workspaceName = registerOutput<String>('workspaceName');
  }

  /// Gets an existing [DataSourceWindowsPerformanceCounter] resource's state with the given [name] and [id].
  static DataSourceWindowsPerformanceCounter get(
    String name,
    pulumi.Input<String> id, {
    DataSourceWindowsPerformanceCounterState? state,
  }) {
    return DataSourceWindowsPerformanceCounter._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  DataSourceWindowsPerformanceCounter._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:loganalytics/dataSourceWindowsPerformanceCounter:DataSourceWindowsPerformanceCounter',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    counterName = registerOutput<String>('counterName');
    instanceName = registerOutput<String>('instanceName');
    intervalSeconds = registerOutput<int>('intervalSeconds');
    this.name = registerOutput<String>('name');
    objectName = registerOutput<String>('objectName');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    workspaceName = registerOutput<String>('workspaceName');
  }
}
