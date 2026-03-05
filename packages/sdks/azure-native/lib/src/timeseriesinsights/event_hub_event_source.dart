import 'package:pulumi/pulumi.dart' as pulumi;
import 'event_hub_event_source_args.dart';
import 'local_timestamp_response.dart';

/// An event source that receives its data from an Azure EventHub.
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
///     var eventHubEventSource = new AzureNative.TimeSeriesInsights.EventHubEventSource("eventHubEventSource", new()
///     {
///         ConsumerGroupName = "cgn",
///         EnvironmentName = "env1",
///         EventHubName = "ehn",
///         EventSourceName = "es1",
///         EventSourceResourceId = "somePathInArm",
///         KeyName = "managementKey",
///         Kind = "Microsoft.EventHub",
///         Location = "West US",
///         ResourceGroupName = "rg1",
///         ServiceBusNamespace = "sbn",
///         SharedAccessKey = "someSecretvalue",
///         TimestampPropertyName = "someTimestampProperty",
///         Type = AzureNative.TimeSeriesInsights.IngressStartAtType.EarliestAvailable,
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
/// 		_, err := timeseriesinsights.NewEventHubEventSource(ctx, "eventHubEventSource", &timeseriesinsights.EventHubEventSourceArgs{
/// 			ConsumerGroupName:     pulumi.String("cgn"),
/// 			EnvironmentName:       pulumi.String("env1"),
/// 			EventHubName:          pulumi.String("ehn"),
/// 			EventSourceName:       pulumi.String("es1"),
/// 			EventSourceResourceId: pulumi.String("somePathInArm"),
/// 			KeyName:               pulumi.String("managementKey"),
/// 			Kind:                  pulumi.String("Microsoft.EventHub"),
/// 			Location:              pulumi.String("West US"),
/// 			ResourceGroupName:     pulumi.String("rg1"),
/// 			ServiceBusNamespace:   pulumi.String("sbn"),
/// 			SharedAccessKey:       pulumi.String("someSecretvalue"),
/// 			TimestampPropertyName: pulumi.String("someTimestampProperty"),
/// 			Type:                  pulumi.String(timeseriesinsights.IngressStartAtTypeEarliestAvailable),
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
/// import com.pulumi.azurenative.timeseriesinsights.EventHubEventSource;
/// import com.pulumi.azurenative.timeseriesinsights.EventHubEventSourceArgs;
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
///         var eventHubEventSource = new EventHubEventSource("eventHubEventSource", EventHubEventSourceArgs.builder()
///             .consumerGroupName("cgn")
///             .environmentName("env1")
///             .eventHubName("ehn")
///             .eventSourceName("es1")
///             .eventSourceResourceId("somePathInArm")
///             .keyName("managementKey")
///             .kind("Microsoft.EventHub")
///             .location("West US")
///             .resourceGroupName("rg1")
///             .serviceBusNamespace("sbn")
///             .sharedAccessKey("someSecretvalue")
///             .timestampPropertyName("someTimestampProperty")
///             .type("EarliestAvailable")
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
/// const eventHubEventSource = new azure_native.timeseriesinsights.EventHubEventSource("eventHubEventSource", {
///     consumerGroupName: "cgn",
///     environmentName: "env1",
///     eventHubName: "ehn",
///     eventSourceName: "es1",
///     eventSourceResourceId: "somePathInArm",
///     keyName: "managementKey",
///     kind: "Microsoft.EventHub",
///     location: "West US",
///     resourceGroupName: "rg1",
///     serviceBusNamespace: "sbn",
///     sharedAccessKey: "someSecretvalue",
///     timestampPropertyName: "someTimestampProperty",
///     type: azure_native.timeseriesinsights.IngressStartAtType.EarliestAvailable,
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// event_hub_event_source = azure_native.timeseriesinsights.EventHubEventSource("eventHubEventSource",
///     consumer_group_name="cgn",
///     environment_name="env1",
///     event_hub_name="ehn",
///     event_source_name="es1",
///     event_source_resource_id="somePathInArm",
///     key_name="managementKey",
///     kind="Microsoft.EventHub",
///     location="West US",
///     resource_group_name="rg1",
///     service_bus_namespace="sbn",
///     shared_access_key="someSecretvalue",
///     timestamp_property_name="someTimestampProperty",
///     type=azure_native.timeseriesinsights.IngressStartAtType.EARLIEST_AVAILABLE)
///
/// ```
///
/// ```yaml
/// resources:
///   eventHubEventSource:
///     type: azure-native:timeseriesinsights:EventHubEventSource
///     properties:
///       consumerGroupName: cgn
///       environmentName: env1
///       eventHubName: ehn
///       eventSourceName: es1
///       eventSourceResourceId: somePathInArm
///       keyName: managementKey
///       kind: Microsoft.EventHub
///       location: West US
///       resourceGroupName: rg1
///       serviceBusNamespace: sbn
///       sharedAccessKey: someSecretvalue
///       timestampPropertyName: someTimestampProperty
///       type: EarliestAvailable
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
///     var eventHubEventSource = new AzureNative.TimeSeriesInsights.EventHubEventSource("eventHubEventSource", new()
///     {
///         ConsumerGroupName = "cgn",
///         EnvironmentName = "env1",
///         EventHubName = "ehn",
///         EventSourceName = "es1",
///         EventSourceResourceId = "somePathInArm",
///         KeyName = "managementKey",
///         Kind = "Microsoft.EventHub",
///         Location = "West US",
///         ResourceGroupName = "rg1",
///         ServiceBusNamespace = "sbn",
///         SharedAccessKey = "someSecretvalue",
///         Time = "2017-04-01T19:20:33.2288820Z",
///         TimestampPropertyName = "someTimestampProperty",
///         Type = AzureNative.TimeSeriesInsights.IngressStartAtType.CustomEnqueuedTime,
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
/// 		_, err := timeseriesinsights.NewEventHubEventSource(ctx, "eventHubEventSource", &timeseriesinsights.EventHubEventSourceArgs{
/// 			ConsumerGroupName:     pulumi.String("cgn"),
/// 			EnvironmentName:       pulumi.String("env1"),
/// 			EventHubName:          pulumi.String("ehn"),
/// 			EventSourceName:       pulumi.String("es1"),
/// 			EventSourceResourceId: pulumi.String("somePathInArm"),
/// 			KeyName:               pulumi.String("managementKey"),
/// 			Kind:                  pulumi.String("Microsoft.EventHub"),
/// 			Location:              pulumi.String("West US"),
/// 			ResourceGroupName:     pulumi.String("rg1"),
/// 			ServiceBusNamespace:   pulumi.String("sbn"),
/// 			SharedAccessKey:       pulumi.String("someSecretvalue"),
/// 			Time:                  pulumi.String("2017-04-01T19:20:33.2288820Z"),
/// 			TimestampPropertyName: pulumi.String("someTimestampProperty"),
/// 			Type:                  pulumi.String(timeseriesinsights.IngressStartAtTypeCustomEnqueuedTime),
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
/// import com.pulumi.azurenative.timeseriesinsights.EventHubEventSource;
/// import com.pulumi.azurenative.timeseriesinsights.EventHubEventSourceArgs;
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
///         var eventHubEventSource = new EventHubEventSource("eventHubEventSource", EventHubEventSourceArgs.builder()
///             .consumerGroupName("cgn")
///             .environmentName("env1")
///             .eventHubName("ehn")
///             .eventSourceName("es1")
///             .eventSourceResourceId("somePathInArm")
///             .keyName("managementKey")
///             .kind("Microsoft.EventHub")
///             .location("West US")
///             .resourceGroupName("rg1")
///             .serviceBusNamespace("sbn")
///             .sharedAccessKey("someSecretvalue")
///             .time("2017-04-01T19:20:33.2288820Z")
///             .timestampPropertyName("someTimestampProperty")
///             .type("CustomEnqueuedTime")
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
/// const eventHubEventSource = new azure_native.timeseriesinsights.EventHubEventSource("eventHubEventSource", {
///     consumerGroupName: "cgn",
///     environmentName: "env1",
///     eventHubName: "ehn",
///     eventSourceName: "es1",
///     eventSourceResourceId: "somePathInArm",
///     keyName: "managementKey",
///     kind: "Microsoft.EventHub",
///     location: "West US",
///     resourceGroupName: "rg1",
///     serviceBusNamespace: "sbn",
///     sharedAccessKey: "someSecretvalue",
///     time: "2017-04-01T19:20:33.2288820Z",
///     timestampPropertyName: "someTimestampProperty",
///     type: azure_native.timeseriesinsights.IngressStartAtType.CustomEnqueuedTime,
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// event_hub_event_source = azure_native.timeseriesinsights.EventHubEventSource("eventHubEventSource",
///     consumer_group_name="cgn",
///     environment_name="env1",
///     event_hub_name="ehn",
///     event_source_name="es1",
///     event_source_resource_id="somePathInArm",
///     key_name="managementKey",
///     kind="Microsoft.EventHub",
///     location="West US",
///     resource_group_name="rg1",
///     service_bus_namespace="sbn",
///     shared_access_key="someSecretvalue",
///     time="2017-04-01T19:20:33.2288820Z",
///     timestamp_property_name="someTimestampProperty",
///     type=azure_native.timeseriesinsights.IngressStartAtType.CUSTOM_ENQUEUED_TIME)
///
/// ```
///
/// ```yaml
/// resources:
///   eventHubEventSource:
///     type: azure-native:timeseriesinsights:EventHubEventSource
///     properties:
///       consumerGroupName: cgn
///       environmentName: env1
///       eventHubName: ehn
///       eventSourceName: es1
///       eventSourceResourceId: somePathInArm
///       keyName: managementKey
///       kind: Microsoft.EventHub
///       location: West US
///       resourceGroupName: rg1
///       serviceBusNamespace: sbn
///       sharedAccessKey: someSecretvalue
///       time: 2017-04-01T19:20:33.2288820Z
///       timestampPropertyName: someTimestampProperty
///       type: CustomEnqueuedTime
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
/// $ pulumi import azure-native:timeseriesinsights:EventHubEventSource es1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.TimeSeriesInsights/environments/{environmentName}/eventSources/{eventSourceName}
/// ```
class EventHubEventSource extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// The name of the event hub's consumer group that holds the partitions from which events will be read.
  late final pulumi.Output<String> consumerGroupName;

  /// The time the resource was created.
  late final pulumi.Output<String> creationTime;

  /// The name of the event hub.
  late final pulumi.Output<String> eventHubName;

  /// The resource id of the event source in Azure Resource Manager.
  late final pulumi.Output<String> eventSourceResourceId;

  /// The name of the SAS key that grants the Time Series Insights service access to the event hub. The shared access policies for this key must grant 'Listen' permissions to the event hub.
  late final pulumi.Output<String> keyName;

  /// The kind of the event source.
  /// Expected value is 'Microsoft.EventHub'.
  late final pulumi.Output<String> kind;

  /// An object that represents the local timestamp property. It contains the format of local timestamp that needs to be used and the corresponding timezone offset information. If a value isn't specified for localTimestamp, or if null, then the local timestamp will not be ingressed with the events.
  late final pulumi.Output<LocalTimestampResponse?> localTimestamp;

  /// Resource location
  late final pulumi.Output<String> location;

  /// Resource name
  late final pulumi.Output<String> name;

  /// Provisioning state of the resource.
  late final pulumi.Output<String> provisioningState;

  /// The name of the service bus that contains the event hub.
  late final pulumi.Output<String> serviceBusNamespace;

  /// Resource tags
  late final pulumi.Output<Map<String, String>?> tags;

  /// ISO8601 UTC datetime with seconds precision (milliseconds are optional), specifying the date and time that will be the starting point for Events to be consumed.
  late final pulumi.Output<String?> time;

  /// The event property that will be used as the event source's timestamp. If a value isn't specified for timestampPropertyName, or if null or empty-string is specified, the event creation time will be used.
  late final pulumi.Output<String?> timestampPropertyName;

  /// Resource type
  late final pulumi.Output<String> type;

  /// Creates a new [EventHubEventSource].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [EventHubEventSource]. {@macro pulumi_timeseriesinsights_event_hub_event_source_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  EventHubEventSource(
    String name, {
    EventHubEventSourceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:timeseriesinsights:EventHubEventSource',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    consumerGroupName = registerOutput<String>('consumerGroupName');
    creationTime = registerOutput<String>('creationTime');
    eventHubName = registerOutput<String>('eventHubName');
    eventSourceResourceId = registerOutput<String>('eventSourceResourceId');
    keyName = registerOutput<String>('keyName');
    kind = registerOutput<String>('kind');
    localTimestamp = registerOutput<LocalTimestampResponse?>(
      'localTimestamp',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return LocalTimestampResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    serviceBusNamespace = registerOutput<String>('serviceBusNamespace');
    tags = registerOutput<Map<String, String>?>('tags');
    time = registerOutput<String?>('time');
    timestampPropertyName = registerOutput<String?>('timestampPropertyName');
    type = registerOutput<String>('type');
  }
}
