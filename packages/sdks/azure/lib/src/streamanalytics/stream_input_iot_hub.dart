import 'package:pulumi/pulumi.dart' as pulumi;
import 'stream_input_iot_hub_args.dart';
import 'stream_input_iot_hub_serialization.dart';
import 'stream_input_iot_hub_state.dart';

/// Manages a Stream Analytics Stream Input IoTHub.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const exampleResourceGroup = new azure.core.ResourceGroup("example", {
///     name: "example-resources",
///     location: "West Europe",
/// });
/// const example = azure.streamanalytics.getJobOutput({
///     name: "example-job",
///     resourceGroupName: exampleResourceGroup.name,
/// });
/// const exampleIoTHub = new azure.iot.IoTHub("example", {
///     name: "example-iothub",
///     resourceGroupName: exampleResourceGroup.name,
///     location: exampleResourceGroup.location,
///     sku: {
///         name: "S1",
///         capacity: 1,
///     },
/// });
/// const exampleStreamInputIotHub = new azure.streamanalytics.StreamInputIotHub("example", {
///     name: "example-iothub-input",
///     streamAnalyticsJobName: example.apply(example => example.name),
///     resourceGroupName: example.apply(example => example.resourceGroupName),
///     endpoint: "messages/events",
///     eventhubConsumerGroupName: "$Default",
///     iothubNamespace: exampleIoTHub.name,
///     sharedAccessPolicyKey: exampleIoTHub.sharedAccessPolicies.apply(sharedAccessPolicies => sharedAccessPolicies[0].primaryKey),
///     sharedAccessPolicyName: "iothubowner",
///     serialization: {
///         type: "Json",
///         encoding: "UTF8",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example_resource_group = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// example = azure.streamanalytics.get_job_output(name="example-job",
///     resource_group_name=example_resource_group.name)
/// example_io_t_hub = azure.iot.IoTHub("example",
///     name="example-iothub",
///     resource_group_name=example_resource_group.name,
///     location=example_resource_group.location,
///     sku={
///         "name": "S1",
///         "capacity": 1,
///     })
/// example_stream_input_iot_hub = azure.streamanalytics.StreamInputIotHub("example",
///     name="example-iothub-input",
///     stream_analytics_job_name=example.name,
///     resource_group_name=example.resource_group_name,
///     endpoint="messages/events",
///     eventhub_consumer_group_name="$Default",
///     iothub_namespace=example_io_t_hub.name,
///     shared_access_policy_key=example_io_t_hub.shared_access_policies[0].primary_key,
///     shared_access_policy_name="iothubowner",
///     serialization={
///         "type": "Json",
///         "encoding": "UTF8",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleResourceGroup = new Azure.Core.ResourceGroup("example", new()
///     {
///         Name = "example-resources",
///         Location = "West Europe",
///     });
///
///     var example = Azure.StreamAnalytics.GetJob.Invoke(new()
///     {
///         Name = "example-job",
///         ResourceGroupName = exampleResourceGroup.Name,
///     });
///
///     var exampleIoTHub = new Azure.Iot.IoTHub("example", new()
///     {
///         Name = "example-iothub",
///         ResourceGroupName = exampleResourceGroup.Name,
///         Location = exampleResourceGroup.Location,
///         Sku = new Azure.Iot.Inputs.IoTHubSkuArgs
///         {
///             Name = "S1",
///             Capacity = 1,
///         },
///     });
///
///     var exampleStreamInputIotHub = new Azure.StreamAnalytics.StreamInputIotHub("example", new()
///     {
///         Name = "example-iothub-input",
///         StreamAnalyticsJobName = example.Apply(getJobResult => getJobResult.Name),
///         ResourceGroupName = example.Apply(getJobResult => getJobResult.ResourceGroupName),
///         Endpoint = "messages/events",
///         EventhubConsumerGroupName = "$Default",
///         IothubNamespace = exampleIoTHub.Name,
///         SharedAccessPolicyKey = exampleIoTHub.SharedAccessPolicies.Apply(sharedAccessPolicies => sharedAccessPolicies[0].PrimaryKey),
///         SharedAccessPolicyName = "iothubowner",
///         Serialization = new Azure.StreamAnalytics.Inputs.StreamInputIotHubSerializationArgs
///         {
///             Type = "Json",
///             Encoding = "UTF8",
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
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/iot"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/streamanalytics"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		exampleResourceGroup, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("example-resources"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		example := streamanalytics.LookupJobOutput(ctx, streamanalytics.GetJobOutputArgs{
/// 			Name:              pulumi.String("example-job"),
/// 			ResourceGroupName: exampleResourceGroup.Name,
/// 		}, nil)
/// 		exampleIoTHub, err := iot.NewIoTHub(ctx, "example", &iot.IoTHubArgs{
/// 			Name:              pulumi.String("example-iothub"),
/// 			ResourceGroupName: exampleResourceGroup.Name,
/// 			Location:          exampleResourceGroup.Location,
/// 			Sku: &iot.IoTHubSkuArgs{
/// 				Name:     pulumi.String("S1"),
/// 				Capacity: pulumi.Int(1),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = streamanalytics.NewStreamInputIotHub(ctx, "example", &streamanalytics.StreamInputIotHubArgs{
/// 			Name: pulumi.String("example-iothub-input"),
/// 			StreamAnalyticsJobName: pulumi.String(example.ApplyT(func(example streamanalytics.GetJobResult) (*string, error) {
/// 				return &example.Name, nil
/// 			}).(pulumi.StringPtrOutput)),
/// 			ResourceGroupName: pulumi.String(example.ApplyT(func(example streamanalytics.GetJobResult) (*string, error) {
/// 				return &example.ResourceGroupName, nil
/// 			}).(pulumi.StringPtrOutput)),
/// 			Endpoint:                  pulumi.String("messages/events"),
/// 			EventhubConsumerGroupName: pulumi.String("$Default"),
/// 			IothubNamespace:           exampleIoTHub.Name,
/// 			SharedAccessPolicyKey: pulumi.String(exampleIoTHub.SharedAccessPolicies.ApplyT(func(sharedAccessPolicies []iot.IoTHubSharedAccessPolicy) (*string, error) {
/// 				return &sharedAccessPolicies[0].PrimaryKey, nil
/// 			}).(pulumi.StringPtrOutput)),
/// 			SharedAccessPolicyName: pulumi.String("iothubowner"),
/// 			Serialization: &streamanalytics.StreamInputIotHubSerializationArgs{
/// 				Type:     pulumi.String("Json"),
/// 				Encoding: pulumi.String("UTF8"),
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
/// import com.pulumi.azure.streamanalytics.StreamanalyticsFunctions;
/// import com.pulumi.azure.streamanalytics.inputs.GetJobArgs;
/// import com.pulumi.azure.iot.IoTHub;
/// import com.pulumi.azure.iot.IoTHubArgs;
/// import com.pulumi.azure.iot.inputs.IoTHubSkuArgs;
/// import com.pulumi.azure.streamanalytics.StreamInputIotHub;
/// import com.pulumi.azure.streamanalytics.StreamInputIotHubArgs;
/// import com.pulumi.azure.streamanalytics.inputs.StreamInputIotHubSerializationArgs;
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
///         var exampleResourceGroup = new ResourceGroup("exampleResourceGroup", ResourceGroupArgs.builder()
///             .name("example-resources")
///             .location("West Europe")
///             .build());
///
///         final var example = StreamanalyticsFunctions.getJob(GetJobArgs.builder()
///             .name("example-job")
///             .resourceGroupName(exampleResourceGroup.name())
///             .build());
///
///         var exampleIoTHub = new IoTHub("exampleIoTHub", IoTHubArgs.builder()
///             .name("example-iothub")
///             .resourceGroupName(exampleResourceGroup.name())
///             .location(exampleResourceGroup.location())
///             .sku(IoTHubSkuArgs.builder()
///                 .name("S1")
///                 .capacity(1)
///                 .build())
///             .build());
///
///         var exampleStreamInputIotHub = new StreamInputIotHub("exampleStreamInputIotHub", StreamInputIotHubArgs.builder()
///             .name("example-iothub-input")
///             .streamAnalyticsJobName(example.applyValue(_example -> _example.name()))
///             .resourceGroupName(example.applyValue(_example -> _example.resourceGroupName()))
///             .endpoint("messages/events")
///             .eventhubConsumerGroupName("$Default")
///             .iothubNamespace(exampleIoTHub.name())
///             .sharedAccessPolicyKey(exampleIoTHub.sharedAccessPolicies().applyValue(_sharedAccessPolicies -> _sharedAccessPolicies[0].primaryKey()))
///             .sharedAccessPolicyName("iothubowner")
///             .serialization(StreamInputIotHubSerializationArgs.builder()
///                 .type("Json")
///                 .encoding("UTF8")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleResourceGroup:
///     type: azure:core:ResourceGroup
///     name: example
///     properties:
///       name: example-resources
///       location: West Europe
///   exampleIoTHub:
///     type: azure:iot:IoTHub
///     name: example
///     properties:
///       name: example-iothub
///       resourceGroupName: ${exampleResourceGroup.name}
///       location: ${exampleResourceGroup.location}
///       sku:
///         name: S1
///         capacity: '1'
///   exampleStreamInputIotHub:
///     type: azure:streamanalytics:StreamInputIotHub
///     name: example
///     properties:
///       name: example-iothub-input
///       streamAnalyticsJobName: ${example.name}
///       resourceGroupName: ${example.resourceGroupName}
///       endpoint: messages/events
///       eventhubConsumerGroupName: $Default
///       iothubNamespace: ${exampleIoTHub.name}
///       sharedAccessPolicyKey: ${exampleIoTHub.sharedAccessPolicies[0].primaryKey}
///       sharedAccessPolicyName: iothubowner
///       serialization:
///         type: Json
///         encoding: UTF8
/// variables:
///   example:
///     fn::invoke:
///       function: azure:streamanalytics:getJob
///       arguments:
///         name: example-job
///         resourceGroupName: ${exampleResourceGroup.name}
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.StreamAnalytics` - 2020-03-01
///
/// ## Import
///
/// Stream Analytics Stream Input IoTHub's can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:streamanalytics/streamInputIotHub:StreamInputIotHub example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.StreamAnalytics/streamingJobs/job1/inputs/input1
/// ```
class StreamInputIotHub extends pulumi.CustomResource {
  /// The IoT Hub endpoint to connect to (ie. messages/events, messages/operationsMonitoringEvents, etc.).
  late final pulumi.Output<String> endpoint;

  /// The name of an Event Hub Consumer Group that should be used to read events from the Event Hub. Specifying distinct consumer group names for multiple inputs allows each of those inputs to receive the same events from the Event Hub.
  late final pulumi.Output<String> eventhubConsumerGroupName;

  /// The name or the URI of the IoT Hub.
  late final pulumi.Output<String> iothubNamespace;

  /// The name of the Stream Input IoTHub. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;

  /// The name of the Resource Group where the Stream Analytics Job exists. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;

  /// A `serialization` block as defined below.
  late final pulumi.Output<StreamInputIotHubSerialization> serialization;

  /// The shared access policy key for the specified shared access policy. Changing this forces a new resource to be created.
  late final pulumi.Output<String> sharedAccessPolicyKey;

  /// The shared access policy name for the Event Hub, Service Bus Queue, Service Bus Topic, etc.
  late final pulumi.Output<String> sharedAccessPolicyName;

  /// The name of the Stream Analytics Job. Changing this forces a new resource to be created.
  late final pulumi.Output<String> streamAnalyticsJobName;

  /// Creates a new [StreamInputIotHub].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [StreamInputIotHub]. {@macro pulumi_streamanalytics_stream_input_iot_hub_stream_input_iot_hub_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  StreamInputIotHub(
    String name, {
    StreamInputIotHubArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:streamanalytics/streamInputIotHub:StreamInputIotHub',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    endpoint = registerOutput<String>('endpoint');
    eventhubConsumerGroupName = registerOutput<String>(
      'eventhubConsumerGroupName',
    );
    iothubNamespace = registerOutput<String>('iothubNamespace');
    this.name = registerOutput<String>('name');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    serialization = registerOutput<StreamInputIotHubSerialization>(
      'serialization',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return StreamInputIotHubSerialization.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    sharedAccessPolicyKey = registerOutput<String>('sharedAccessPolicyKey');
    sharedAccessPolicyName = registerOutput<String>('sharedAccessPolicyName');
    streamAnalyticsJobName = registerOutput<String>('streamAnalyticsJobName');
  }

  /// Gets an existing [StreamInputIotHub] resource's state with the given [name] and [id].
  static StreamInputIotHub get(
    String name,
    pulumi.Input<String> id, {
    StreamInputIotHubState? state,
  }) {
    return StreamInputIotHub._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  StreamInputIotHub._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:streamanalytics/streamInputIotHub:StreamInputIotHub',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    endpoint = registerOutput<String>('endpoint');
    eventhubConsumerGroupName = registerOutput<String>(
      'eventhubConsumerGroupName',
    );
    iothubNamespace = registerOutput<String>('iothubNamespace');
    this.name = registerOutput<String>('name');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    serialization = registerOutput<StreamInputIotHubSerialization>(
      'serialization',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return StreamInputIotHubSerialization.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    sharedAccessPolicyKey = registerOutput<String>('sharedAccessPolicyKey');
    sharedAccessPolicyName = registerOutput<String>('sharedAccessPolicyName');
    streamAnalyticsJobName = registerOutput<String>('streamAnalyticsJobName');
  }
}
