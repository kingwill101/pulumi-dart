import 'package:pulumi/pulumi.dart' as pulumi;
import 'io_thub_event_source_args.dart';
import 'local_timestamp_response.dart';

/// An event source that receives its data from an Azure IoTHub.
///
/// Uses Azure REST API version 2020-05-15. In version 2.x of the Azure Native provider, it used API version 2020-05-15.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### CreateEventHubEventSource
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var ioTHubEventSource = new AzureNative.TimeSeriesInsights.IoTHubEventSource("ioTHubEventSource", new()
///     {
///         EnvironmentName = "env1",
///         EventSourceName = "es1",
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
/// 		_, err := timeseriesinsights.NewIoTHubEventSource(ctx, "ioTHubEventSource", &timeseriesinsights.IoTHubEventSourceArgs{
/// 			EnvironmentName:   pulumi.String("env1"),
/// 			EventSourceName:   pulumi.String("es1"),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_timeseriesinsights_iothubeventsource" "ioTHubEventSource" {
///   environment_name    = "env1"
///   event_source_name   = "es1"
///   resource_group_name = "rg1"
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
/// import com.pulumi.azurenative.timeseriesinsights.IoTHubEventSource;
/// import com.pulumi.azurenative.timeseriesinsights.IoTHubEventSourceArgs;
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
///         var ioTHubEventSource = new IoTHubEventSource("ioTHubEventSource", IoTHubEventSourceArgs.builder()
///             .environmentName("env1")
///             .eventSourceName("es1")
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
/// const ioTHubEventSource = new azure_native.timeseriesinsights.IoTHubEventSource("ioTHubEventSource", {
///     environmentName: "env1",
///     eventSourceName: "es1",
///     resourceGroupName: "rg1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// io_t_hub_event_source = azure_native.timeseriesinsights.IoTHubEventSource("ioTHubEventSource",
///     environment_name="env1",
///     event_source_name="es1",
///     resource_group_name="rg1")
///
/// ```
///
/// ```yaml
/// resources:
///   ioTHubEventSource:
///     type: azure-native:timeseriesinsights:IoTHubEventSource
///     properties:
///       environmentName: env1
///       eventSourceName: es1
///       resourceGroupName: rg1
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### EventSourcesCreateEventHubWithCustomEnquedTime
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var ioTHubEventSource = new AzureNative.TimeSeriesInsights.IoTHubEventSource("ioTHubEventSource", new()
///     {
///         EnvironmentName = "env1",
///         EventSourceName = "es1",
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
/// 		_, err := timeseriesinsights.NewIoTHubEventSource(ctx, "ioTHubEventSource", &timeseriesinsights.IoTHubEventSourceArgs{
/// 			EnvironmentName:   pulumi.String("env1"),
/// 			EventSourceName:   pulumi.String("es1"),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_timeseriesinsights_iothubeventsource" "ioTHubEventSource" {
///   environment_name    = "env1"
///   event_source_name   = "es1"
///   resource_group_name = "rg1"
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
/// import com.pulumi.azurenative.timeseriesinsights.IoTHubEventSource;
/// import com.pulumi.azurenative.timeseriesinsights.IoTHubEventSourceArgs;
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
///         var ioTHubEventSource = new IoTHubEventSource("ioTHubEventSource", IoTHubEventSourceArgs.builder()
///             .environmentName("env1")
///             .eventSourceName("es1")
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
/// const ioTHubEventSource = new azure_native.timeseriesinsights.IoTHubEventSource("ioTHubEventSource", {
///     environmentName: "env1",
///     eventSourceName: "es1",
///     resourceGroupName: "rg1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// io_t_hub_event_source = azure_native.timeseriesinsights.IoTHubEventSource("ioTHubEventSource",
///     environment_name="env1",
///     event_source_name="es1",
///     resource_group_name="rg1")
///
/// ```
///
/// ```yaml
/// resources:
///   ioTHubEventSource:
///     type: azure-native:timeseriesinsights:IoTHubEventSource
///     properties:
///       environmentName: env1
///       eventSourceName: es1
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
/// $ pulumi import azure-native:timeseriesinsights:IoTHubEventSource es1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.TimeSeriesInsights/environments/{environmentName}/eventSources/{eventSourceName}
/// ```
class IoTHubEventSource extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The name of the iot hub's consumer group that holds the partitions from which events will be read.
  late final pulumi.Output<String> consumerGroupName;
  /// The time the resource was created.
  late final pulumi.Output<String> creationTime;
  /// The resource id of the event source in Azure Resource Manager.
  late final pulumi.Output<String> eventSourceResourceId;
  /// The name of the iot hub.
  late final pulumi.Output<String> iotHubName;
  /// The name of the Shared Access Policy key that grants the Time Series Insights service access to the iot hub. This shared access policy key must grant 'service connect' permissions to the iot hub.
  late final pulumi.Output<String> keyName;
  /// The kind of the event source.
  /// Expected value is 'Microsoft.IoTHub'.
  late final pulumi.Output<String> kind;
  /// An object that represents the local timestamp property. It contains the format of local timestamp that needs to be used and the corresponding timezone offset information. If a value isn't specified for localTimestamp, or if null, then the local timestamp will not be ingressed with the events.
  late final pulumi.Output<LocalTimestampResponse?> localTimestamp;
  /// Resource location
  late final pulumi.Output<String> location;
  /// Resource name
  late final pulumi.Output<String> name;
  /// Provisioning state of the resource.
  late final pulumi.Output<String> provisioningState;
  /// Resource tags
  late final pulumi.Output<Map<String, String>?> tags;
  /// ISO8601 UTC datetime with seconds precision (milliseconds are optional), specifying the date and time that will be the starting point for Events to be consumed.
  late final pulumi.Output<String?> time;
  /// The event property that will be used as the event source's timestamp. If a value isn't specified for timestampPropertyName, or if null or empty-string is specified, the event creation time will be used.
  late final pulumi.Output<String?> timestampPropertyName;
  /// Resource type
  late final pulumi.Output<String> type;

  /// Creates a new [IoTHubEventSource].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [IoTHubEventSource]. {@macro pulumi_timeseriesinsights_io_thub_event_source_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  IoTHubEventSource(
    String name, {
    IoTHubEventSourceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:timeseriesinsights:IoTHubEventSource',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    consumerGroupName = registerOutput<String>('consumerGroupName');
    creationTime = registerOutput<String>('creationTime');
    eventSourceResourceId = registerOutput<String>('eventSourceResourceId');
    iotHubName = registerOutput<String>('iotHubName');
    keyName = registerOutput<String>('keyName');
    kind = registerOutput<String>('kind');
    localTimestamp = registerOutput<LocalTimestampResponse?>('localTimestamp', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return LocalTimestampResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    tags = registerOutput<Map<String, String>?>('tags');
    time = registerOutput<String?>('time');
    timestampPropertyName = registerOutput<String?>('timestampPropertyName');
    type = registerOutput<String>('type');
  }
}
