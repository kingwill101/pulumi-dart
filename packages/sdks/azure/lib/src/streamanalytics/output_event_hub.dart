import 'package:pulumi/pulumi.dart' as pulumi;
import 'output_event_hub_args.dart';
import 'output_event_hub_serialization.dart';
import 'output_event_hub_state.dart';

/// Manages a Stream Analytics Output to an EventHub.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const exampleResourceGroup = new azure.core.ResourceGroup("example", {
///     name: "rg-example",
///     location: "West Europe",
/// });
/// const example = azure.streamanalytics.getJobOutput({
///     name: "example-job",
///     resourceGroupName: exampleResourceGroup.name,
/// });
/// const exampleEventHubNamespace = new azure.eventhub.EventHubNamespace("example", {
///     name: "example-ehnamespace",
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
/// const exampleOutputEventHub = new azure.streamanalytics.OutputEventHub("example", {
///     name: "output-to-eventhub",
///     streamAnalyticsJobName: example.apply(example => example.name),
///     resourceGroupName: example.apply(example => example.resourceGroupName),
///     eventhubName: exampleEventHub.name,
///     servicebusNamespace: exampleEventHubNamespace.name,
///     sharedAccessPolicyKey: exampleEventHubNamespace.defaultPrimaryKey,
///     sharedAccessPolicyName: "RootManageSharedAccessKey",
///     serialization: {
///         type: "Avro",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example_resource_group = azure.core.ResourceGroup("example",
///     name="rg-example",
///     location="West Europe")
/// example = azure.streamanalytics.get_job_output(name="example-job",
///     resource_group_name=example_resource_group.name)
/// example_event_hub_namespace = azure.eventhub.EventHubNamespace("example",
///     name="example-ehnamespace",
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
/// example_output_event_hub = azure.streamanalytics.OutputEventHub("example",
///     name="output-to-eventhub",
///     stream_analytics_job_name=example.name,
///     resource_group_name=example.resource_group_name,
///     eventhub_name=example_event_hub.name,
///     servicebus_namespace=example_event_hub_namespace.name,
///     shared_access_policy_key=example_event_hub_namespace.default_primary_key,
///     shared_access_policy_name="RootManageSharedAccessKey",
///     serialization={
///         "type": "Avro",
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
///         Name = "rg-example",
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
///         Name = "example-ehnamespace",
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
///     var exampleOutputEventHub = new Azure.StreamAnalytics.OutputEventHub("example", new()
///     {
///         Name = "output-to-eventhub",
///         StreamAnalyticsJobName = example.Apply(getJobResult => getJobResult.Name),
///         ResourceGroupName = example.Apply(getJobResult => getJobResult.ResourceGroupName),
///         EventhubName = exampleEventHub.Name,
///         ServicebusNamespace = exampleEventHubNamespace.Name,
///         SharedAccessPolicyKey = exampleEventHubNamespace.DefaultPrimaryKey,
///         SharedAccessPolicyName = "RootManageSharedAccessKey",
///         Serialization = new Azure.StreamAnalytics.Inputs.OutputEventHubSerializationArgs
///         {
///             Type = "Avro",
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
/// 			Name:     pulumi.String("rg-example"),
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
/// 			Name:              pulumi.String("example-ehnamespace"),
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
/// 		_, err = streamanalytics.NewOutputEventHub(ctx, "example", &streamanalytics.OutputEventHubArgs{
/// 			Name: pulumi.String("output-to-eventhub"),
/// 			StreamAnalyticsJobName: pulumi.String(example.ApplyT(func(example streamanalytics.GetJobResult) (*string, error) {
/// 				return &example.Name, nil
/// 			}).(pulumi.StringPtrOutput)),
/// 			ResourceGroupName: pulumi.String(example.ApplyT(func(example streamanalytics.GetJobResult) (*string, error) {
/// 				return &example.ResourceGroupName, nil
/// 			}).(pulumi.StringPtrOutput)),
/// 			EventhubName:           exampleEventHub.Name,
/// 			ServicebusNamespace:    exampleEventHubNamespace.Name,
/// 			SharedAccessPolicyKey:  exampleEventHubNamespace.DefaultPrimaryKey,
/// 			SharedAccessPolicyName: pulumi.String("RootManageSharedAccessKey"),
/// 			Serialization: &streamanalytics.OutputEventHubSerializationArgs{
/// 				Type: pulumi.String("Avro"),
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
/// import com.pulumi.azure.streamanalytics.OutputEventHub;
/// import com.pulumi.azure.streamanalytics.OutputEventHubArgs;
/// import com.pulumi.azure.streamanalytics.inputs.OutputEventHubSerializationArgs;
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
///             .name("rg-example")
///             .location("West Europe")
///             .build());
///
///         final var example = StreamanalyticsFunctions.getJob(GetJobArgs.builder()
///             .name("example-job")
///             .resourceGroupName(exampleResourceGroup.name())
///             .build());
///
///         var exampleEventHubNamespace = new EventHubNamespace("exampleEventHubNamespace", EventHubNamespaceArgs.builder()
///             .name("example-ehnamespace")
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
///         var exampleOutputEventHub = new OutputEventHub("exampleOutputEventHub", OutputEventHubArgs.builder()
///             .name("output-to-eventhub")
///             .streamAnalyticsJobName(example.applyValue(_example -> _example.name()))
///             .resourceGroupName(example.applyValue(_example -> _example.resourceGroupName()))
///             .eventhubName(exampleEventHub.name())
///             .servicebusNamespace(exampleEventHubNamespace.name())
///             .sharedAccessPolicyKey(exampleEventHubNamespace.defaultPrimaryKey())
///             .sharedAccessPolicyName("RootManageSharedAccessKey")
///             .serialization(OutputEventHubSerializationArgs.builder()
///                 .type("Avro")
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
///       name: rg-example
///       location: West Europe
///   exampleEventHubNamespace:
///     type: azure:eventhub:EventHubNamespace
///     name: example
///     properties:
///       name: example-ehnamespace
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
///   exampleOutputEventHub:
///     type: azure:streamanalytics:OutputEventHub
///     name: example
///     properties:
///       name: output-to-eventhub
///       streamAnalyticsJobName: ${example.name}
///       resourceGroupName: ${example.resourceGroupName}
///       eventhubName: ${exampleEventHub.name}
///       servicebusNamespace: ${exampleEventHubNamespace.name}
///       sharedAccessPolicyKey: ${exampleEventHubNamespace.defaultPrimaryKey}
///       sharedAccessPolicyName: RootManageSharedAccessKey
///       serialization:
///         type: Avro
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
/// * `Microsoft.StreamAnalytics` - 2021-10-01-preview
///
/// ## Import
///
/// Stream Analytics Outputs to an EventHub can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:streamanalytics/outputEventHub:OutputEventHub example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.StreamAnalytics/streamingJobs/job1/outputs/output1
/// ```
class OutputEventHub extends pulumi.CustomResource {
  /// The authentication mode for the Stream Output. Possible values are `Msi` and `ConnectionString`. Defaults to `ConnectionString`.
  late final pulumi.Output<String?> authenticationMode;
  /// The name of the Event Hub.
  late final pulumi.Output<String> eventhubName;
  /// The name of the Stream Output. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// The column that is used for the Event Hub partition key.
  late final pulumi.Output<String?> partitionKey;
  /// A list of property columns to add to the Event Hub output.
  late final pulumi.Output<List<String>?> propertyColumns;
  /// The name of the Resource Group where the Stream Analytics Job exists. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// A `serialization` block as defined below.
  late final pulumi.Output<OutputEventHubSerialization> serialization;
  /// The namespace that is associated with the desired Event Hub, Service Bus Queue, Service Bus Topic, etc.
  late final pulumi.Output<String> servicebusNamespace;
  /// The shared access policy key for the specified shared access policy. Required when `authentication_mode` is set to `ConnectionString`.
  late final pulumi.Output<String?> sharedAccessPolicyKey;
  /// The shared access policy name for the Event Hub, Service Bus Queue, Service Bus Topic, etc. Required when `authentication_mode` is set to `ConnectionString`.
  late final pulumi.Output<String?> sharedAccessPolicyName;
  /// The name of the Stream Analytics Job. Changing this forces a new resource to be created.
  late final pulumi.Output<String> streamAnalyticsJobName;

  /// Creates a new [OutputEventHub].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [OutputEventHub]. {@macro pulumi_streamanalytics_output_event_hub_output_event_hub_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  OutputEventHub(
    String name, {
    OutputEventHubArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:streamanalytics/outputEventHub:OutputEventHub',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.authenticationMode = registerOutput<String?>('authenticationMode');
    this.eventhubName = registerOutput<String>('eventhubName');
    this.name = registerOutput<String>('name');
    this.partitionKey = registerOutput<String?>('partitionKey');
    this.propertyColumns = registerOutput<List<String>?>('propertyColumns');
    this.resourceGroupName = registerOutput<String>('resourceGroupName');
    this.serialization = registerOutput<OutputEventHubSerialization>('serialization');
    this.servicebusNamespace = registerOutput<String>('servicebusNamespace');
    this.sharedAccessPolicyKey = registerOutput<String?>('sharedAccessPolicyKey');
    this.sharedAccessPolicyName = registerOutput<String?>('sharedAccessPolicyName');
    this.streamAnalyticsJobName = registerOutput<String>('streamAnalyticsJobName');
  }

  /// Gets an existing [OutputEventHub] resource's state with the given [name] and [id].
  static OutputEventHub get(
    String name,
    pulumi.Input<String> id, {
    OutputEventHubState? state,
  }) {
    return OutputEventHub._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  OutputEventHub._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:streamanalytics/outputEventHub:OutputEventHub',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.authenticationMode = registerOutput<String?>('authenticationMode');
    this.eventhubName = registerOutput<String>('eventhubName');
    this.name = registerOutput<String>('name');
    this.partitionKey = registerOutput<String?>('partitionKey');
    this.propertyColumns = registerOutput<List<String>?>('propertyColumns');
    this.resourceGroupName = registerOutput<String>('resourceGroupName');
    this.serialization = registerOutput<OutputEventHubSerialization>('serialization');
    this.servicebusNamespace = registerOutput<String>('servicebusNamespace');
    this.sharedAccessPolicyKey = registerOutput<String?>('sharedAccessPolicyKey');
    this.sharedAccessPolicyName = registerOutput<String?>('sharedAccessPolicyName');
    this.streamAnalyticsJobName = registerOutput<String>('streamAnalyticsJobName');
  }
}
