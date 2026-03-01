import 'package:pulumi/pulumi.dart' as pulumi;
import 'stream_input_event_hub_v2_args.dart';
import 'stream_input_event_hub_v2_serialization.dart';
import 'stream_input_event_hub_v2_state.dart';

/// > **Note:** This resource creates a Stream Input of type `Microsoft.EventHub/EventHub`, to create a Stream Input of type `Microsoft.ServiceBus/EventHub` please use the resource azurerm_stream_analytics_stream_input_eventhub.
///
/// Manages a Stream Analytics Stream Input EventHub V2.
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
/// const exampleEventHubNamespace = new azure.eventhub.EventHubNamespace("example", {
///     name: "example-namespace",
///     location: exampleResourceGroup.location,
///     resourceGroupName: exampleResourceGroup.name,
///     sku: "Standard",
///     capacity: 1,
/// });
/// const exampleEventHub = new azure.eventhub.EventHub("example", {
///     name: "example-eventhub",
///     namespaceName: exampleEventHubNamespace.name,
///     resourceGroupName: exampleResourceGroup.name,
///     partitionCount: 2,
///     messageRetention: 1,
/// });
/// const exampleConsumerGroup = new azure.eventhub.ConsumerGroup("example", {
///     name: "example-consumergroup",
///     namespaceName: exampleEventHubNamespace.name,
///     eventhubName: exampleEventHub.name,
///     resourceGroupName: exampleResourceGroup.name,
/// });
/// const exampleStreamInputEventHubV2 = new azure.streamanalytics.StreamInputEventHubV2("example", {
///     name: "eventhub-stream-input",
///     streamAnalyticsJobId: example.apply(example => example.id),
///     eventhubConsumerGroupName: exampleConsumerGroup.name,
///     eventhubName: exampleEventHub.name,
///     servicebusNamespace: exampleEventHubNamespace.name,
///     sharedAccessPolicyKey: exampleEventHubNamespace.defaultPrimaryKey,
///     sharedAccessPolicyName: "RootManageSharedAccessKey",
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
/// example_event_hub_namespace = azure.eventhub.EventHubNamespace("example",
///     name="example-namespace",
///     location=example_resource_group.location,
///     resource_group_name=example_resource_group.name,
///     sku="Standard",
///     capacity=1)
/// example_event_hub = azure.eventhub.EventHub("example",
///     name="example-eventhub",
///     namespace_name=example_event_hub_namespace.name,
///     resource_group_name=example_resource_group.name,
///     partition_count=2,
///     message_retention=1)
/// example_consumer_group = azure.eventhub.ConsumerGroup("example",
///     name="example-consumergroup",
///     namespace_name=example_event_hub_namespace.name,
///     eventhub_name=example_event_hub.name,
///     resource_group_name=example_resource_group.name)
/// example_stream_input_event_hub_v2 = azure.streamanalytics.StreamInputEventHubV2("example",
///     name="eventhub-stream-input",
///     stream_analytics_job_id=example.id,
///     eventhub_consumer_group_name=example_consumer_group.name,
///     eventhub_name=example_event_hub.name,
///     servicebus_namespace=example_event_hub_namespace.name,
///     shared_access_policy_key=example_event_hub_namespace.default_primary_key,
///     shared_access_policy_name="RootManageSharedAccessKey",
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
///     var exampleEventHubNamespace = new Azure.EventHub.EventHubNamespace("example", new()
///     {
///         Name = "example-namespace",
///         Location = exampleResourceGroup.Location,
///         ResourceGroupName = exampleResourceGroup.Name,
///         Sku = "Standard",
///         Capacity = 1,
///     });
///
///     var exampleEventHub = new Azure.EventHub.EventHub("example", new()
///     {
///         Name = "example-eventhub",
///         NamespaceName = exampleEventHubNamespace.Name,
///         ResourceGroupName = exampleResourceGroup.Name,
///         PartitionCount = 2,
///         MessageRetention = 1,
///     });
///
///     var exampleConsumerGroup = new Azure.EventHub.ConsumerGroup("example", new()
///     {
///         Name = "example-consumergroup",
///         NamespaceName = exampleEventHubNamespace.Name,
///         EventhubName = exampleEventHub.Name,
///         ResourceGroupName = exampleResourceGroup.Name,
///     });
///
///     var exampleStreamInputEventHubV2 = new Azure.StreamAnalytics.StreamInputEventHubV2("example", new()
///     {
///         Name = "eventhub-stream-input",
///         StreamAnalyticsJobId = example.Apply(getJobResult => getJobResult.Id),
///         EventhubConsumerGroupName = exampleConsumerGroup.Name,
///         EventhubName = exampleEventHub.Name,
///         ServicebusNamespace = exampleEventHubNamespace.Name,
///         SharedAccessPolicyKey = exampleEventHubNamespace.DefaultPrimaryKey,
///         SharedAccessPolicyName = "RootManageSharedAccessKey",
///         Serialization = new Azure.StreamAnalytics.Inputs.StreamInputEventHubV2SerializationArgs
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
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/eventhub"
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
/// 		exampleEventHubNamespace, err := eventhub.NewEventHubNamespace(ctx, "example", &eventhub.EventHubNamespaceArgs{
/// 			Name:              pulumi.String("example-namespace"),
/// 			Location:          exampleResourceGroup.Location,
/// 			ResourceGroupName: exampleResourceGroup.Name,
/// 			Sku:               pulumi.String("Standard"),
/// 			Capacity:          pulumi.Int(1),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleEventHub, err := eventhub.NewEventHub(ctx, "example", &eventhub.EventHubArgs{
/// 			Name:              pulumi.String("example-eventhub"),
/// 			NamespaceName:     exampleEventHubNamespace.Name,
/// 			ResourceGroupName: exampleResourceGroup.Name,
/// 			PartitionCount:    pulumi.Int(2),
/// 			MessageRetention:  pulumi.Int(1),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleConsumerGroup, err := eventhub.NewConsumerGroup(ctx, "example", &eventhub.ConsumerGroupArgs{
/// 			Name:              pulumi.String("example-consumergroup"),
/// 			NamespaceName:     exampleEventHubNamespace.Name,
/// 			EventhubName:      exampleEventHub.Name,
/// 			ResourceGroupName: exampleResourceGroup.Name,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = streamanalytics.NewStreamInputEventHubV2(ctx, "example", &streamanalytics.StreamInputEventHubV2Args{
/// 			Name: pulumi.String("eventhub-stream-input"),
/// 			StreamAnalyticsJobId: pulumi.String(example.ApplyT(func(example streamanalytics.GetJobResult) (*string, error) {
/// 				return &example.Id, nil
/// 			}).(pulumi.StringPtrOutput)),
/// 			EventhubConsumerGroupName: exampleConsumerGroup.Name,
/// 			EventhubName:              exampleEventHub.Name,
/// 			ServicebusNamespace:       exampleEventHubNamespace.Name,
/// 			SharedAccessPolicyKey:     exampleEventHubNamespace.DefaultPrimaryKey,
/// 			SharedAccessPolicyName:    pulumi.String("RootManageSharedAccessKey"),
/// 			Serialization: &streamanalytics.StreamInputEventHubV2SerializationArgs{
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
/// import com.pulumi.azure.eventhub.EventHubNamespace;
/// import com.pulumi.azure.eventhub.EventHubNamespaceArgs;
/// import com.pulumi.azure.eventhub.EventHub;
/// import com.pulumi.azure.eventhub.EventHubArgs;
/// import com.pulumi.azure.eventhub.ConsumerGroup;
/// import com.pulumi.azure.eventhub.ConsumerGroupArgs;
/// import com.pulumi.azure.streamanalytics.StreamInputEventHubV2;
/// import com.pulumi.azure.streamanalytics.StreamInputEventHubV2Args;
/// import com.pulumi.azure.streamanalytics.inputs.StreamInputEventHubV2SerializationArgs;
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
///         var exampleEventHubNamespace = new EventHubNamespace("exampleEventHubNamespace", EventHubNamespaceArgs.builder()
///             .name("example-namespace")
///             .location(exampleResourceGroup.location())
///             .resourceGroupName(exampleResourceGroup.name())
///             .sku("Standard")
///             .capacity(1)
///             .build());
///
///         var exampleEventHub = new EventHub("exampleEventHub", EventHubArgs.builder()
///             .name("example-eventhub")
///             .namespaceName(exampleEventHubNamespace.name())
///             .resourceGroupName(exampleResourceGroup.name())
///             .partitionCount(2)
///             .messageRetention(1)
///             .build());
///
///         var exampleConsumerGroup = new ConsumerGroup("exampleConsumerGroup", ConsumerGroupArgs.builder()
///             .name("example-consumergroup")
///             .namespaceName(exampleEventHubNamespace.name())
///             .eventhubName(exampleEventHub.name())
///             .resourceGroupName(exampleResourceGroup.name())
///             .build());
///
///         var exampleStreamInputEventHubV2 = new StreamInputEventHubV2("exampleStreamInputEventHubV2", StreamInputEventHubV2Args.builder()
///             .name("eventhub-stream-input")
///             .streamAnalyticsJobId(example.applyValue(_example -> _example.id()))
///             .eventhubConsumerGroupName(exampleConsumerGroup.name())
///             .eventhubName(exampleEventHub.name())
///             .servicebusNamespace(exampleEventHubNamespace.name())
///             .sharedAccessPolicyKey(exampleEventHubNamespace.defaultPrimaryKey())
///             .sharedAccessPolicyName("RootManageSharedAccessKey")
///             .serialization(StreamInputEventHubV2SerializationArgs.builder()
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
///   exampleEventHubNamespace:
///     type: azure:eventhub:EventHubNamespace
///     name: example
///     properties:
///       name: example-namespace
///       location: ${exampleResourceGroup.location}
///       resourceGroupName: ${exampleResourceGroup.name}
///       sku: Standard
///       capacity: 1
///   exampleEventHub:
///     type: azure:eventhub:EventHub
///     name: example
///     properties:
///       name: example-eventhub
///       namespaceName: ${exampleEventHubNamespace.name}
///       resourceGroupName: ${exampleResourceGroup.name}
///       partitionCount: 2
///       messageRetention: 1
///   exampleConsumerGroup:
///     type: azure:eventhub:ConsumerGroup
///     name: example
///     properties:
///       name: example-consumergroup
///       namespaceName: ${exampleEventHubNamespace.name}
///       eventhubName: ${exampleEventHub.name}
///       resourceGroupName: ${exampleResourceGroup.name}
///   exampleStreamInputEventHubV2:
///     type: azure:streamanalytics:StreamInputEventHubV2
///     name: example
///     properties:
///       name: eventhub-stream-input
///       streamAnalyticsJobId: ${example.id}
///       eventhubConsumerGroupName: ${exampleConsumerGroup.name}
///       eventhubName: ${exampleEventHub.name}
///       servicebusNamespace: ${exampleEventHubNamespace.name}
///       sharedAccessPolicyKey: ${exampleEventHubNamespace.defaultPrimaryKey}
///       sharedAccessPolicyName: RootManageSharedAccessKey
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
/// <!-- This section is generated, changes will be overwritten -->
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.StreamAnalytics` - 2020-03-01
///
/// ## Import
///
/// Stream Analytics Stream Input EventHub's can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:streamanalytics/streamInputEventHubV2:StreamInputEventHubV2 example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.StreamAnalytics/streamingJobs/job1/inputs/input1
/// ```
class StreamInputEventHubV2 extends pulumi.CustomResource {
  /// The authentication mode for the Stream Output. Possible values are `Msi` and `ConnectionString`. Defaults to `ConnectionString`.
  late final pulumi.Output<String?> authenticationMode;
  /// The name of an Event Hub Consumer Group that should be used to read events from the Event Hub. Specifying distinct consumer group names for multiple inputs allows each of those inputs to receive the same events from the Event Hub. If not set the input will use the Event Hub's default consumer group.
  late final pulumi.Output<String?> eventhubConsumerGroupName;
  /// The name of the Event Hub.
  late final pulumi.Output<String> eventhubName;
  /// The name of the Stream Input EventHub V2. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// The property the input Event Hub has been partitioned by.
  late final pulumi.Output<String?> partitionKey;
  /// A `serialization` block as defined below.
  late final pulumi.Output<StreamInputEventHubV2Serialization> serialization;
  /// The namespace that is associated with the desired Event Hub, Service Bus Queue, Service Bus Topic, etc.
  late final pulumi.Output<String> servicebusNamespace;
  /// The shared access policy key for the specified shared access policy.
  late final pulumi.Output<String?> sharedAccessPolicyKey;
  /// The shared access policy name for the Event Hub, Service Bus Queue, Service Bus Topic, etc.
  late final pulumi.Output<String?> sharedAccessPolicyName;
  /// The name of the Stream Analytics Job. Changing this forces a new resource to be created.
  late final pulumi.Output<String> streamAnalyticsJobId;

  /// Creates a new [StreamInputEventHubV2].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [StreamInputEventHubV2]. {@macro pulumi_streamanalytics_stream_input_event_hub_v2_stream_input_event_hub_v2_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  StreamInputEventHubV2(
    String name, {
    StreamInputEventHubV2Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:streamanalytics/streamInputEventHubV2:StreamInputEventHubV2',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.authenticationMode = registerOutput<String?>('authenticationMode');
    this.eventhubConsumerGroupName = registerOutput<String?>('eventhubConsumerGroupName');
    this.eventhubName = registerOutput<String>('eventhubName');
    this.name = registerOutput<String>('name');
    this.partitionKey = registerOutput<String?>('partitionKey');
    this.serialization = registerOutput<StreamInputEventHubV2Serialization>('serialization');
    this.servicebusNamespace = registerOutput<String>('servicebusNamespace');
    this.sharedAccessPolicyKey = registerOutput<String?>('sharedAccessPolicyKey');
    this.sharedAccessPolicyName = registerOutput<String?>('sharedAccessPolicyName');
    this.streamAnalyticsJobId = registerOutput<String>('streamAnalyticsJobId');
  }

  /// Gets an existing [StreamInputEventHubV2] resource's state with the given [name] and [id].
  static StreamInputEventHubV2 get(
    String name,
    pulumi.Input<String> id, {
    StreamInputEventHubV2State? state,
  }) {
    return StreamInputEventHubV2._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  StreamInputEventHubV2._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:streamanalytics/streamInputEventHubV2:StreamInputEventHubV2',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.authenticationMode = registerOutput<String?>('authenticationMode');
    this.eventhubConsumerGroupName = registerOutput<String?>('eventhubConsumerGroupName');
    this.eventhubName = registerOutput<String>('eventhubName');
    this.name = registerOutput<String>('name');
    this.partitionKey = registerOutput<String?>('partitionKey');
    this.serialization = registerOutput<StreamInputEventHubV2Serialization>('serialization');
    this.servicebusNamespace = registerOutput<String>('servicebusNamespace');
    this.sharedAccessPolicyKey = registerOutput<String?>('sharedAccessPolicyKey');
    this.sharedAccessPolicyName = registerOutput<String?>('sharedAccessPolicyName');
    this.streamAnalyticsJobId = registerOutput<String>('streamAnalyticsJobId');
  }
}
