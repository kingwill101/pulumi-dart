import 'package:pulumi/pulumi.dart' as pulumi;
import 'dashboard_args.dart';
import 'dashboard_properties_with_provisioning_state_response.dart';
import 'system_data_response.dart';

/// The shared dashboard resource definition.
///
/// Uses Azure REST API version 2022-12-01-preview. In version 2.x of the Azure Native provider, it used API version 2020-09-01-preview.
///
/// Other available API versions: 2019-01-01-preview, 2020-09-01-preview, 2025-04-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native portal [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create or update a Dashboard
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var dashboard = new AzureNative.Portal.Dashboard("dashboard", new()
///     {
///         DashboardName = "testDashboard",
///         Location = "eastus",
///         Properties = new AzureNative.Portal.Inputs.DashboardPropertiesWithProvisioningStateArgs
///         {
///             Lenses = new[]
///             {
///                 new AzureNative.Portal.Inputs.DashboardLensArgs
///                 {
///                     Order = 1,
///                     Parts = new[]
///                     {
///                         new AzureNative.Portal.Inputs.DashboardPartsArgs
///                         {
///                             Position = new AzureNative.Portal.Inputs.DashboardPartsPositionArgs
///                             {
///                                 ColSpan = 3,
///                                 RowSpan = 4,
///                                 X = 1,
///                                 Y = 2,
///                             },
///                         },
///                         new AzureNative.Portal.Inputs.DashboardPartsArgs
///                         {
///                             Position = new AzureNative.Portal.Inputs.DashboardPartsPositionArgs
///                             {
///                                 ColSpan = 6,
///                                 RowSpan = 6,
///                                 X = 5,
///                                 Y = 5,
///                             },
///                         },
///                     },
///                 },
///                 new AzureNative.Portal.Inputs.DashboardLensArgs
///                 {
///                     Order = 2,
///                     Parts = new() { },
///                 },
///             },
///             Metadata = new Dictionary<string, object?>
///             {
///                 ["metadata"] = new Dictionary<string, object?>
///                 {
///                     ["ColSpan"] = 2,
///                     ["RowSpan"] = 1,
///                     ["X"] = 4,
///                     ["Y"] = 3,
///                 },
///             },
///         },
///         ResourceGroupName = "testRG",
///         Tags =
///         {
///             { "aKey", "aValue" },
///             { "anotherKey", "anotherValue" },
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
/// 	portal "github.com/pulumi/pulumi-azure-native-sdk/portal/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := portal.NewDashboard(ctx, "dashboard", &portal.DashboardArgs{
/// 			DashboardName: pulumi.String("testDashboard"),
/// 			Location:      pulumi.String("eastus"),
/// 			Properties: &portal.DashboardPropertiesWithProvisioningStateArgs{
/// 				Lenses: portal.DashboardLensArray{
/// 					&portal.DashboardLensArgs{
/// 						Order: pulumi.Int(1),
/// 						Parts: portal.DashboardPartsArray{
/// 							&portal.DashboardPartsArgs{
/// 								Position: &portal.DashboardPartsPositionArgs{
/// 									ColSpan: pulumi.Int(3),
/// 									RowSpan: pulumi.Int(4),
/// 									X:       pulumi.Int(1),
/// 									Y:       pulumi.Int(2),
/// 								},
/// 							},
/// 							&portal.DashboardPartsArgs{
/// 								Position: &portal.DashboardPartsPositionArgs{
/// 									ColSpan: pulumi.Int(6),
/// 									RowSpan: pulumi.Int(6),
/// 									X:       pulumi.Int(5),
/// 									Y:       pulumi.Int(5),
/// 								},
/// 							},
/// 						},
/// 					},
/// 					&portal.DashboardLensArgs{
/// 						Order: pulumi.Int(2),
/// 						Parts: portal.DashboardPartsArray{},
/// 					},
/// 				},
/// 				Metadata: pulumi.Any(map[string]interface{}{
/// 					"metadata": map[string]interface{}{
/// 						"ColSpan": 2,
/// 						"RowSpan": 1,
/// 						"X":       4,
/// 						"Y":       3,
/// 					},
/// 				}),
/// 			},
/// 			ResourceGroupName: pulumi.String("testRG"),
/// 			Tags: pulumi.StringMap{
/// 				"aKey":       pulumi.String("aValue"),
/// 				"anotherKey": pulumi.String("anotherValue"),
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
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.portal.Dashboard;
/// import com.pulumi.azurenative.portal.DashboardArgs;
/// import com.pulumi.azurenative.portal.inputs.DashboardPropertiesWithProvisioningStateArgs;
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
///         var dashboard = new Dashboard("dashboard", DashboardArgs.builder()
///             .dashboardName("testDashboard")
///             .location("eastus")
///             .properties(DashboardPropertiesWithProvisioningStateArgs.builder()
///                 .lenses(
///                     DashboardLensArgs.builder()
///                         .order(1)
///                         .parts(
///                             DashboardPartsArgs.builder()
///                                 .position(DashboardPartsPositionArgs.builder()
///                                     .colSpan(3)
///                                     .rowSpan(4)
///                                     .x(1)
///                                     .y(2)
///                                     .build())
///                                 .build(),
///                             DashboardPartsArgs.builder()
///                                 .position(DashboardPartsPositionArgs.builder()
///                                     .colSpan(6)
///                                     .rowSpan(6)
///                                     .x(5)
///                                     .y(5)
///                                     .build())
///                                 .build())
///                         .build(),
///                     DashboardLensArgs.builder()
///                         .order(2)
///                         .parts()
///                         .build())
///                 .metadata(Map.of("metadata", Map.ofEntries(
///                     Map.entry("ColSpan", 2),
///                     Map.entry("RowSpan", 1),
///                     Map.entry("X", 4),
///                     Map.entry("Y", 3)
///                 )))
///                 .build())
///             .resourceGroupName("testRG")
///             .tags(Map.ofEntries(
///                 Map.entry("aKey", "aValue"),
///                 Map.entry("anotherKey", "anotherValue")
///             ))
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
/// const dashboard = new azure_native.portal.Dashboard("dashboard", {
///     dashboardName: "testDashboard",
///     location: "eastus",
///     properties: {
///         lenses: [
///             {
///                 order: 1,
///                 parts: [
///                     {
///                         position: {
///                             colSpan: 3,
///                             rowSpan: 4,
///                             x: 1,
///                             y: 2,
///                         },
///                     },
///                     {
///                         position: {
///                             colSpan: 6,
///                             rowSpan: 6,
///                             x: 5,
///                             y: 5,
///                         },
///                     },
///                 ],
///             },
///             {
///                 order: 2,
///                 parts: [],
///             },
///         ],
///         metadata: {
///             metadata: {
///                 ColSpan: 2,
///                 RowSpan: 1,
///                 X: 4,
///                 Y: 3,
///             },
///         },
///     },
///     resourceGroupName: "testRG",
///     tags: {
///         aKey: "aValue",
///         anotherKey: "anotherValue",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// dashboard = azure_native.portal.Dashboard("dashboard",
///     dashboard_name="testDashboard",
///     location="eastus",
///     properties={
///         "lenses": [
///             {
///                 "order": 1,
///                 "parts": [
///                     {
///                         "position": {
///                             "col_span": 3,
///                             "row_span": 4,
///                             "x": 1,
///                             "y": 2,
///                         },
///                     },
///                     {
///                         "position": {
///                             "col_span": 6,
///                             "row_span": 6,
///                             "x": 5,
///                             "y": 5,
///                         },
///                     },
///                 ],
///             },
///             {
///                 "order": 2,
///                 "parts": [],
///             },
///         ],
///         "metadata": {
///             "metadata": {
///                 "ColSpan": 2,
///                 "RowSpan": 1,
///                 "X": 4,
///                 "Y": 3,
///             },
///         },
///     },
///     resource_group_name="testRG",
///     tags={
///         "aKey": "aValue",
///         "anotherKey": "anotherValue",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   dashboard:
///     type: azure-native:portal:Dashboard
///     properties:
///       dashboardName: testDashboard
///       location: eastus
///       properties:
///         lenses:
///           - order: 1
///             parts:
///               - position:
///                   colSpan: 3
///                   rowSpan: 4
///                   x: 1
///                   y: 2
///               - position:
///                   colSpan: 6
///                   rowSpan: 6
///                   x: 5
///                   y: 5
///           - order: 2
///             parts: []
///         metadata:
///           metadata:
///             ColSpan: 2
///             RowSpan: 1
///             X: 4
///             Y: 3
///       resourceGroupName: testRG
///       tags:
///         aKey: aValue
///         anotherKey: anotherValue
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
/// $ pulumi import azure-native:portal:Dashboard testDashboard /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Portal/dashboards/{dashboardName}
/// ```
class Dashboard extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The resource-specific properties for this resource.
  late final pulumi.Output<DashboardPropertiesWithProvisioningStateResponse> properties;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [Dashboard].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Dashboard]. {@macro pulumi_portal_dashboard_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Dashboard(
    String name, {
    DashboardArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:portal:Dashboard',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<DashboardPropertiesWithProvisioningStateResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DashboardPropertiesWithProvisioningStateResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
