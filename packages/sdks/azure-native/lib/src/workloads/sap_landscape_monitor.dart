import 'package:pulumi/pulumi.dart' as pulumi;
import 'sap_landscape_monitor_args.dart';
import 'sap_landscape_monitor_metric_thresholds_response.dart';
import 'sap_landscape_monitor_properties_grouping_response.dart';
import 'system_data_response.dart';

/// configuration associated with SAP Landscape Monitor Dashboard.
///
/// Uses Azure REST API version 2024-02-01-preview. In version 2.x of the Azure Native provider, it used API version 2023-04-01.
///
/// Other available API versions: 2023-04-01, 2023-10-01-preview, 2023-12-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native workloads [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create SAP landscape monitor
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var sapLandscapeMonitor = new AzureNative.Workloads.SapLandscapeMonitor("sapLandscapeMonitor", new()
///     {
///         Grouping = new AzureNative.Workloads.Inputs.SapLandscapeMonitorPropertiesGroupingArgs
///         {
///             Landscape = new[]
///             {
///                 new AzureNative.Workloads.Inputs.SapLandscapeMonitorSidMappingArgs
///                 {
///                     Name = "Prod",
///                     TopSid = new[]
///                     {
///                         "SID1",
///                         "SID2",
///                     },
///                 },
///             },
///             SapApplication = new[]
///             {
///                 new AzureNative.Workloads.Inputs.SapLandscapeMonitorSidMappingArgs
///                 {
///                     Name = "ERP1",
///                     TopSid = new[]
///                     {
///                         "SID1",
///                         "SID2",
///                     },
///                 },
///             },
///         },
///         MonitorName = "mySapMonitor",
///         ResourceGroupName = "myResourceGroup",
///         TopMetricsThresholds = new[]
///         {
///             new AzureNative.Workloads.Inputs.SapLandscapeMonitorMetricThresholdsArgs
///             {
///                 Green = 90,
///                 Name = "Instance Availability",
///                 Red = 50,
///                 Yellow = 75,
///             },
///         },
///     });
///
/// });
///
///
/// ```
///
/// ```go
/// package main
///
/// import (
/// 	workloads "github.com/pulumi/pulumi-azure-native-sdk/workloads/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := workloads.NewSapLandscapeMonitor(ctx, "sapLandscapeMonitor", &workloads.SapLandscapeMonitorArgs{
/// 			Grouping: &workloads.SapLandscapeMonitorPropertiesGroupingArgs{
/// 				Landscape: workloads.SapLandscapeMonitorSidMappingArray{
/// 					&workloads.SapLandscapeMonitorSidMappingArgs{
/// 						Name: pulumi.String("Prod"),
/// 						TopSid: pulumi.StringArray{
/// 							pulumi.String("SID1"),
/// 							pulumi.String("SID2"),
/// 						},
/// 					},
/// 				},
/// 				SapApplication: workloads.SapLandscapeMonitorSidMappingArray{
/// 					&workloads.SapLandscapeMonitorSidMappingArgs{
/// 						Name: pulumi.String("ERP1"),
/// 						TopSid: pulumi.StringArray{
/// 							pulumi.String("SID1"),
/// 							pulumi.String("SID2"),
/// 						},
/// 					},
/// 				},
/// 			},
/// 			MonitorName:       pulumi.String("mySapMonitor"),
/// 			ResourceGroupName: pulumi.String("myResourceGroup"),
/// 			TopMetricsThresholds: workloads.SapLandscapeMonitorMetricThresholdsArray{
/// 				&workloads.SapLandscapeMonitorMetricThresholdsArgs{
/// 					Green:  pulumi.Float64(90),
/// 					Name:   pulumi.String("Instance Availability"),
/// 					Red:    pulumi.Float64(50),
/// 					Yellow: pulumi.Float64(75),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
///
/// ```
///
/// ```hcl
/// pulumi {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_workloads_saplandscapemonitor" "sapLandscapeMonitor" {
///   grouping = {
///     landscape = [{
///       "name"   = "Prod"
///       "topSid" = ["SID1", "SID2"]
///     }]
///     sap_application = [{
///       "name"   = "ERP1"
///       "topSid" = ["SID1", "SID2"]
///     }]
///   }
///   monitor_name        = "mySapMonitor"
///   resource_group_name = "myResourceGroup"
///   top_metrics_thresholds {
///     green  = 90
///     name   = "Instance Availability"
///     red    = 50
///     yellow = 75
///   }
/// }
///
/// ```
///
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.workloads.SapLandscapeMonitor;
/// import com.pulumi.azurenative.workloads.SapLandscapeMonitorArgs;
/// import com.pulumi.azurenative.workloads.inputs.SapLandscapeMonitorPropertiesGroupingArgs;
/// import com.pulumi.azurenative.workloads.inputs.SapLandscapeMonitorMetricThresholdsArgs;
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
///         var sapLandscapeMonitor = new SapLandscapeMonitor("sapLandscapeMonitor", SapLandscapeMonitorArgs.builder()
///             .grouping(SapLandscapeMonitorPropertiesGroupingArgs.builder()
///                 .landscape(SapLandscapeMonitorSidMappingArgs.builder()
///                     .name("Prod")
///                     .topSid(
///                         "SID1",
///                         "SID2")
///                     .build())
///                 .sapApplication(SapLandscapeMonitorSidMappingArgs.builder()
///                     .name("ERP1")
///                     .topSid(
///                         "SID1",
///                         "SID2")
///                     .build())
///                 .build())
///             .monitorName("mySapMonitor")
///             .resourceGroupName("myResourceGroup")
///             .topMetricsThresholds(SapLandscapeMonitorMetricThresholdsArgs.builder()
///                 .green(90.0)
///                 .name("Instance Availability")
///                 .red(50.0)
///                 .yellow(75.0)
///                 .build())
///             .build());
///
///     }
/// }
///
/// ```
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure_native from "@pulumi/azure-native";
///
/// const sapLandscapeMonitor = new azure_native.workloads.SapLandscapeMonitor("sapLandscapeMonitor", {
///     grouping: {
///         landscape: [{
///             name: "Prod",
///             topSid: [
///                 "SID1",
///                 "SID2",
///             ],
///         }],
///         sapApplication: [{
///             name: "ERP1",
///             topSid: [
///                 "SID1",
///                 "SID2",
///             ],
///         }],
///     },
///     monitorName: "mySapMonitor",
///     resourceGroupName: "myResourceGroup",
///     topMetricsThresholds: [{
///         green: 90,
///         name: "Instance Availability",
///         red: 50,
///         yellow: 75,
///     }],
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// sap_landscape_monitor = azure_native.workloads.SapLandscapeMonitor("sapLandscapeMonitor",
///     grouping={
///         "landscape": [{
///             "name": "Prod",
///             "top_sid": [
///                 "SID1",
///                 "SID2",
///             ],
///         }],
///         "sap_application": [{
///             "name": "ERP1",
///             "top_sid": [
///                 "SID1",
///                 "SID2",
///             ],
///         }],
///     },
///     monitor_name="mySapMonitor",
///     resource_group_name="myResourceGroup",
///     top_metrics_thresholds=[{
///         "green": float(90),
///         "name": "Instance Availability",
///         "red": float(50),
///         "yellow": float(75),
///     }])
///
/// ```
///
/// ```yaml
/// resources:
///   sapLandscapeMonitor:
///     type: azure-native:workloads:SapLandscapeMonitor
///     properties:
///       grouping:
///         landscape:
///           - name: Prod
///             topSid:
///               - SID1
///               - SID2
///         sapApplication:
///           - name: ERP1
///             topSid:
///               - SID1
///               - SID2
///       monitorName: mySapMonitor
///       resourceGroupName: myResourceGroup
///       topMetricsThresholds:
///         - green: 90
///           name: Instance Availability
///           red: 50
///           yellow: 75
///
/// ```
///
/// {{% /example %}}
/// {{% /examples %}}
///
/// ## Import
///
/// An existing resource can be imported using its type token, name, and identifier, e.g.
///
/// ```sh
/// $ pulumi import azure-native:workloads:SapLandscapeMonitor default /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Workloads/monitors/{monitorName}/sapLandscapeMonitor/default
/// ```
class SapLandscapeMonitor extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Gets or sets the SID groupings by landscape and Environment.
  late final pulumi.Output<SapLandscapeMonitorPropertiesGroupingResponse?> grouping;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// State of provisioning of the SAP monitor.
  late final pulumi.Output<String> provisioningState;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Gets or sets the list Top Metric Thresholds for SAP Landscape Monitor Dashboard
  late final pulumi.Output<List<SapLandscapeMonitorMetricThresholdsResponse>?> topMetricsThresholds;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [SapLandscapeMonitor].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SapLandscapeMonitor]. {@macro pulumi_workloads_sap_landscape_monitor_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SapLandscapeMonitor(
    String name, {
    SapLandscapeMonitorArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:workloads:SapLandscapeMonitor',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    grouping = registerOutput<SapLandscapeMonitorPropertiesGroupingResponse?>('grouping', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SapLandscapeMonitorPropertiesGroupingResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    topMetricsThresholds = registerOutput<List<SapLandscapeMonitorMetricThresholdsResponse>?>('topMetricsThresholds', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<SapLandscapeMonitorMetricThresholdsResponse>(guardedValue, (value) => SapLandscapeMonitorMetricThresholdsResponse.fromMap((value as Map).cast<String, dynamic>())); });
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [SapLandscapeMonitor] resource.
  SapLandscapeMonitor.reference(String urn)
    : super(
        'azure-native:workloads:SapLandscapeMonitor',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    grouping = registerOutput<SapLandscapeMonitorPropertiesGroupingResponse?>('grouping', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SapLandscapeMonitorPropertiesGroupingResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    topMetricsThresholds = registerOutput<List<SapLandscapeMonitorMetricThresholdsResponse>?>('topMetricsThresholds', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<SapLandscapeMonitorMetricThresholdsResponse>(guardedValue, (value) => SapLandscapeMonitorMetricThresholdsResponse.fromMap((value as Map).cast<String, dynamic>())); });
    type = registerOutput<String>('type');
  }
}
