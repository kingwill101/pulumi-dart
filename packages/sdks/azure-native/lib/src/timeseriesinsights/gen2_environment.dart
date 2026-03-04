import 'package:pulumi/pulumi.dart' as pulumi;
import 'environment_status_response.dart';
import 'gen2_environment_args.dart';
import 'gen2_storage_configuration_output_response.dart';
import 'sku_response.dart';
import 'warm_store_configuration_properties_response.dart';

/// An environment is a set of time-series data available for query, and is the top level Azure Time Series Insights resource. Gen2 environments do not have set data retention limits.
///
/// Uses Azure REST API version 2020-05-15. In version 2.x of the Azure Native provider, it used API version 2020-05-15.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### EnvironmentsCreate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var gen2Environment = new AzureNative.TimeSeriesInsights.Gen2Environment("gen2Environment", new()
///     {
///         EnvironmentName = "env1",
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
/// 		_, err := timeseriesinsights.NewGen2Environment(ctx, "gen2Environment", &timeseriesinsights.Gen2EnvironmentArgs{
/// 			EnvironmentName:   pulumi.String("env1"),
/// 			ResourceGroupName: pulumi.String("rg1"),
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
/// import com.pulumi.azurenative.timeseriesinsights.Gen2Environment;
/// import com.pulumi.azurenative.timeseriesinsights.Gen2EnvironmentArgs;
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
///         var gen2Environment = new Gen2Environment("gen2Environment", Gen2EnvironmentArgs.builder()
///             .environmentName("env1")
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
/// const gen2Environment = new azure_native.timeseriesinsights.Gen2Environment("gen2Environment", {
///     environmentName: "env1",
///     resourceGroupName: "rg1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// gen2_environment = azure_native.timeseriesinsights.Gen2Environment("gen2Environment",
///     environment_name="env1",
///     resource_group_name="rg1")
///
/// ```
///
/// ```yaml
/// resources:
///   gen2Environment:
///     type: azure-native:timeseriesinsights:Gen2Environment
///     properties:
///       environmentName: env1
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
/// $ pulumi import azure-native:timeseriesinsights:Gen2Environment env1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.TimeSeriesInsights/environments/{environmentName}
/// ```
class Gen2Environment extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// The time the resource was created.
  late final pulumi.Output<String> creationTime;

  /// The fully qualified domain name used to access the environment data, e.g. to query the environment's events or upload reference data for the environment.
  late final pulumi.Output<String> dataAccessFqdn;

  /// An id used to access the environment data, e.g. to query the environment's events or upload reference data for the environment.
  late final pulumi.Output<String> dataAccessId;

  /// The kind of the environment.
  /// Expected value is 'Gen2'.
  late final pulumi.Output<String> kind;

  /// Resource location
  late final pulumi.Output<String> location;

  /// Resource name
  late final pulumi.Output<String> name;

  /// Provisioning state of the resource.
  late final pulumi.Output<String> provisioningState;

  /// The sku determines the type of environment, either Gen1 (S1 or S2) or Gen2 (L1). For Gen1 environments the sku determines the capacity of the environment, the ingress rate, and the billing rate.
  late final pulumi.Output<SkuResponse> sku;

  /// An object that represents the status of the environment, and its internal state in the Time Series Insights service.
  late final pulumi.Output<EnvironmentStatusResponse> status;

  /// The storage configuration provides the connection details that allows the Time Series Insights service to connect to the customer storage account that is used to store the environment's data.
  late final pulumi.Output<Gen2StorageConfigurationOutputResponse>
  storageConfiguration;

  /// Resource tags
  late final pulumi.Output<Map<String, String>?> tags;

  /// The list of event properties which will be used to define the environment's time series id.
  late final pulumi.Output<List<Map<String, dynamic>>> timeSeriesIdProperties;

  /// Resource type
  late final pulumi.Output<String> type;

  /// The warm store configuration provides the details to create a warm store cache that will retain a copy of the environment's data available for faster query.
  late final pulumi.Output<WarmStoreConfigurationPropertiesResponse?>
  warmStoreConfiguration;

  /// Creates a new [Gen2Environment].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Gen2Environment]. {@macro pulumi_timeseriesinsights_gen2_environment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Gen2Environment(
    String name, {
    Gen2EnvironmentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:timeseriesinsights:Gen2Environment',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    creationTime = registerOutput<String>('creationTime');
    dataAccessFqdn = registerOutput<String>('dataAccessFqdn');
    dataAccessId = registerOutput<String>('dataAccessId');
    kind = registerOutput<String>('kind');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    sku = registerOutput<SkuResponse>('sku');
    status = registerOutput<EnvironmentStatusResponse>('status');
    storageConfiguration =
        registerOutput<Gen2StorageConfigurationOutputResponse>(
          'storageConfiguration',
        );
    tags = registerOutput<Map<String, String>?>('tags');
    timeSeriesIdProperties = registerOutput<List<Map<String, dynamic>>>(
      'timeSeriesIdProperties',
    );
    type = registerOutput<String>('type');
    warmStoreConfiguration =
        registerOutput<WarmStoreConfigurationPropertiesResponse?>(
          'warmStoreConfiguration',
        );
  }
}
