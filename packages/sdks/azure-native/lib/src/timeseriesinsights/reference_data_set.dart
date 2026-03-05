import 'package:pulumi/pulumi.dart' as pulumi;
import 'reference_data_set_args.dart';

/// A reference data set provides metadata about the events in an environment. Metadata in the reference data set will be joined with events as they are read from event sources. The metadata that makes up the reference data set is uploaded or modified through the Time Series Insights data plane APIs.
///
/// Uses Azure REST API version 2020-05-15. In version 2.x of the Azure Native provider, it used API version 2020-05-15.
///
/// Other available API versions: 2021-03-31-preview, 2021-06-30-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native timeseriesinsights [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### ReferenceDataSetsCreate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var referenceDataSet = new AzureNative.TimeSeriesInsights.ReferenceDataSet("referenceDataSet", new()
///     {
///         EnvironmentName = "env1",
///         KeyProperties = new[]
///         {
///             new AzureNative.TimeSeriesInsights.Inputs.ReferenceDataSetKeyPropertyArgs
///             {
///                 Name = "DeviceId1",
///                 Type = AzureNative.TimeSeriesInsights.ReferenceDataKeyPropertyType.String,
///             },
///             new AzureNative.TimeSeriesInsights.Inputs.ReferenceDataSetKeyPropertyArgs
///             {
///                 Name = "DeviceFloor",
///                 Type = AzureNative.TimeSeriesInsights.ReferenceDataKeyPropertyType.Double,
///             },
///         },
///         Location = "West US",
///         ReferenceDataSetName = "rds1",
///         ResourceGroupName = "rg1",
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
/// 	timeseriesinsights "github.com/pulumi/pulumi-azure-native-sdk/timeseriesinsights/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := timeseriesinsights.NewReferenceDataSet(ctx, "referenceDataSet", &timeseriesinsights.ReferenceDataSetArgs{
/// 			EnvironmentName: pulumi.String("env1"),
/// 			KeyProperties: timeseriesinsights.ReferenceDataSetKeyPropertyArray{
/// 				&timeseriesinsights.ReferenceDataSetKeyPropertyArgs{
/// 					Name: pulumi.String("DeviceId1"),
/// 					Type: pulumi.String(timeseriesinsights.ReferenceDataKeyPropertyTypeString),
/// 				},
/// 				&timeseriesinsights.ReferenceDataSetKeyPropertyArgs{
/// 					Name: pulumi.String("DeviceFloor"),
/// 					Type: pulumi.String(timeseriesinsights.ReferenceDataKeyPropertyTypeDouble),
/// 				},
/// 			},
/// 			Location:             pulumi.String("West US"),
/// 			ReferenceDataSetName: pulumi.String("rds1"),
/// 			ResourceGroupName:    pulumi.String("rg1"),
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
/// import com.pulumi.azurenative.timeseriesinsights.ReferenceDataSet;
/// import com.pulumi.azurenative.timeseriesinsights.ReferenceDataSetArgs;
/// import com.pulumi.azurenative.timeseriesinsights.inputs.ReferenceDataSetKeyPropertyArgs;
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
///         var referenceDataSet = new ReferenceDataSet("referenceDataSet", ReferenceDataSetArgs.builder()
///             .environmentName("env1")
///             .keyProperties(
///                 ReferenceDataSetKeyPropertyArgs.builder()
///                     .name("DeviceId1")
///                     .type("String")
///                     .build(),
///                 ReferenceDataSetKeyPropertyArgs.builder()
///                     .name("DeviceFloor")
///                     .type("Double")
///                     .build())
///             .location("West US")
///             .referenceDataSetName("rds1")
///             .resourceGroupName("rg1")
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
/// const referenceDataSet = new azure_native.timeseriesinsights.ReferenceDataSet("referenceDataSet", {
///     environmentName: "env1",
///     keyProperties: [
///         {
///             name: "DeviceId1",
///             type: azure_native.timeseriesinsights.ReferenceDataKeyPropertyType.String,
///         },
///         {
///             name: "DeviceFloor",
///             type: azure_native.timeseriesinsights.ReferenceDataKeyPropertyType.Double,
///         },
///     ],
///     location: "West US",
///     referenceDataSetName: "rds1",
///     resourceGroupName: "rg1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// reference_data_set = azure_native.timeseriesinsights.ReferenceDataSet("referenceDataSet",
///     environment_name="env1",
///     key_properties=[
///         {
///             "name": "DeviceId1",
///             "type": azure_native.timeseriesinsights.ReferenceDataKeyPropertyType.STRING,
///         },
///         {
///             "name": "DeviceFloor",
///             "type": azure_native.timeseriesinsights.ReferenceDataKeyPropertyType.DOUBLE,
///         },
///     ],
///     location="West US",
///     reference_data_set_name="rds1",
///     resource_group_name="rg1")
///
/// ```
///
/// ```yaml
/// resources:
///   referenceDataSet:
///     type: azure-native:timeseriesinsights:ReferenceDataSet
///     properties:
///       environmentName: env1
///       keyProperties:
///         - name: DeviceId1
///           type: String
///         - name: DeviceFloor
///           type: Double
///       location: West US
///       referenceDataSetName: rds1
///       resourceGroupName: rg1
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
/// $ pulumi import azure-native:timeseriesinsights:ReferenceDataSet rds1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.TimeSeriesInsights/environments/{environmentName}/referenceDataSets/{referenceDataSetName}
/// ```
class ReferenceDataSet extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The time the resource was created.
  late final pulumi.Output<String> creationTime;
  /// The reference data set key comparison behavior can be set using this property. By default, the value is 'Ordinal' - which means case sensitive key comparison will be performed while joining reference data with events or while adding new reference data. When 'OrdinalIgnoreCase' is set, case insensitive comparison will be used.
  late final pulumi.Output<String?> dataStringComparisonBehavior;
  /// The list of key properties for the reference data set.
  late final pulumi.Output<List<Map<String, dynamic>>> keyProperties;
  /// Resource location
  late final pulumi.Output<String> location;
  /// Resource name
  late final pulumi.Output<String> name;
  /// Provisioning state of the resource.
  late final pulumi.Output<String> provisioningState;
  /// Resource tags
  late final pulumi.Output<Map<String, String>?> tags;
  /// Resource type
  late final pulumi.Output<String> type;

  /// Creates a new [ReferenceDataSet].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ReferenceDataSet]. {@macro pulumi_timeseriesinsights_reference_data_set_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ReferenceDataSet(
    String name, {
    ReferenceDataSetArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:timeseriesinsights:ReferenceDataSet',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    creationTime = registerOutput<String>('creationTime');
    dataStringComparisonBehavior = registerOutput<String?>('dataStringComparisonBehavior');
    keyProperties = registerOutput<List<Map<String, dynamic>>>('keyProperties');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
