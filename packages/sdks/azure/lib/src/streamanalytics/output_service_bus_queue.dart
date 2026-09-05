import 'package:pulumi/pulumi.dart' as pulumi;
import 'output_service_bus_queue_args.dart';
import 'output_service_bus_queue_serialization.dart';
import 'output_service_bus_queue_state.dart';

/// Manages a Stream Analytics Output to a ServiceBus Queue.
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
/// const exampleNamespace = new azure.servicebus.Namespace("example", {
///     name: "example-namespace",
///     location: exampleResourceGroup.location,
///     resourceGroupName: exampleResourceGroup.name,
///     sku: "Standard",
/// });
/// const exampleQueue = new azure.servicebus.Queue("example", {
///     name: "example-queue",
///     namespaceId: exampleNamespace.id,
///     enablePartitioning: true,
/// });
/// const exampleOutputServiceBusQueue = new azure.streamanalytics.OutputServiceBusQueue("example", {
///     name: "blob-storage-output",
///     streamAnalyticsJobName: example.name,
///     resourceGroupName: example.resourceGroupName,
///     queueName: exampleQueue.name,
///     servicebusNamespace: exampleNamespace.name,
///     sharedAccessPolicyKey: exampleNamespace.defaultPrimaryKey,
///     sharedAccessPolicyName: "RootManageSharedAccessKey",
///     serialization: {
///         type: "Csv",
///         format: "Array",
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
/// example_namespace = azure.servicebus.Namespace("example",
///     name="example-namespace",
///     location=example_resource_group.location,
///     resource_group_name=example_resource_group.name,
///     sku="Standard")
/// example_queue = azure.servicebus.Queue("example",
///     name="example-queue",
///     namespace_id=example_namespace.id,
///     enable_partitioning=True)
/// example_output_service_bus_queue = azure.streamanalytics.OutputServiceBusQueue("example",
///     name="blob-storage-output",
///     stream_analytics_job_name=example.name,
///     resource_group_name=example.resource_group_name,
///     queue_name=example_queue.name,
///     servicebus_namespace=example_namespace.name,
///     shared_access_policy_key=example_namespace.default_primary_key,
///     shared_access_policy_name="RootManageSharedAccessKey",
///     serialization={
///         "type": "Csv",
///         "format": "Array",
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
///     var exampleNamespace = new Azure.ServiceBus.Namespace("example", new()
///     {
///         Name = "example-namespace",
///         Location = exampleResourceGroup.Location,
///         ResourceGroupName = exampleResourceGroup.Name,
///         Sku = "Standard",
///     });
///
///     var exampleQueue = new Azure.ServiceBus.Queue("example", new()
///     {
///         Name = "example-queue",
///         NamespaceId = exampleNamespace.Id,
///         EnablePartitioning = true,
///     });
///
///     var exampleOutputServiceBusQueue = new Azure.StreamAnalytics.OutputServiceBusQueue("example", new()
///     {
///         Name = "blob-storage-output",
///         StreamAnalyticsJobName = example.Apply(getJobResult => getJobResult.Name),
///         ResourceGroupName = example.Apply(getJobResult => getJobResult.ResourceGroupName),
///         QueueName = exampleQueue.Name,
///         ServicebusNamespace = exampleNamespace.Name,
///         SharedAccessPolicyKey = exampleNamespace.DefaultPrimaryKey,
///         SharedAccessPolicyName = "RootManageSharedAccessKey",
///         Serialization = new Azure.StreamAnalytics.Inputs.OutputServiceBusQueueSerializationArgs
///         {
///             Type = "Csv",
///             Format = "Array",
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
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/servicebus"
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
/// 		exampleNamespace, err := servicebus.NewNamespace(ctx, "example", &servicebus.NamespaceArgs{
/// 			Name:              pulumi.String("example-namespace"),
/// 			Location:          exampleResourceGroup.Location,
/// 			ResourceGroupName: exampleResourceGroup.Name,
/// 			Sku:               pulumi.String("Standard"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleQueue, err := servicebus.NewQueue(ctx, "example", &servicebus.QueueArgs{
/// 			Name:               pulumi.String("example-queue"),
/// 			NamespaceId:        exampleNamespace.ID().ToIDOutput().ToStringOutput(),
/// 			EnablePartitioning: true,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = streamanalytics.NewOutputServiceBusQueue(ctx, "example", &streamanalytics.OutputServiceBusQueueArgs{
/// 			Name:                   pulumi.String("blob-storage-output"),
/// 			StreamAnalyticsJobName: example.Name(),
/// 			ResourceGroupName:      example.ResourceGroupName(),
/// 			QueueName:              exampleQueue.Name,
/// 			ServicebusNamespace:    exampleNamespace.Name,
/// 			SharedAccessPolicyKey:  exampleNamespace.DefaultPrimaryKey,
/// 			SharedAccessPolicyName: pulumi.String("RootManageSharedAccessKey"),
/// 			Serialization: &streamanalytics.OutputServiceBusQueueSerializationArgs{
/// 				Type:   pulumi.String("Csv"),
/// 				Format: pulumi.String("Array"),
/// 			},
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
/// data "azure_streamanalytics_getjob" "example" {
///   name                = "example-job"
///   resource_group_name = azure_core_resourcegroup.example.name
/// }
///
/// resource "azure_core_resourcegroup" "example" {
///   name     = "rg-example"
///   location = "West Europe"
/// }
/// resource "azure_servicebus_namespace" "example" {
///   name                = "example-namespace"
///   location            = azure_core_resourcegroup.example.location
///   resource_group_name = azure_core_resourcegroup.example.name
///   sku                 = "Standard"
/// }
/// resource "azure_servicebus_queue" "example" {
///   name                = "example-queue"
///   namespace_id        = azure_servicebus_namespace.example.id
///   enable_partitioning = true
/// }
/// resource "azure_streamanalytics_outputservicebusqueue" "example" {
///   name                      = "blob-storage-output"
///   stream_analytics_job_name = data.azure_streamanalytics_getjob.example.name
///   resource_group_name       = data.azure_streamanalytics_getjob.example.resource_group_name
///   queue_name                = azure_servicebus_queue.example.name
///   servicebus_namespace      = azure_servicebus_namespace.example.name
///   shared_access_policy_key  = azure_servicebus_namespace.example.default_primary_key
///   shared_access_policy_name = "RootManageSharedAccessKey"
///   serialization = {
///     type   = "Csv"
///     format = "Array"
///   }
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
/// import com.pulumi.azure.servicebus.Namespace;
/// import com.pulumi.azure.servicebus.NamespaceArgs;
/// import com.pulumi.azure.servicebus.Queue;
/// import com.pulumi.azure.servicebus.QueueArgs;
/// import com.pulumi.azure.streamanalytics.OutputServiceBusQueue;
/// import com.pulumi.azure.streamanalytics.OutputServiceBusQueueArgs;
/// import com.pulumi.azure.streamanalytics.inputs.OutputServiceBusQueueSerializationArgs;
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
///         var exampleNamespace = new Namespace("exampleNamespace", NamespaceArgs.builder()
///             .name("example-namespace")
///             .location(exampleResourceGroup.location())
///             .resourceGroupName(exampleResourceGroup.name())
///             .sku("Standard")
///             .build());
///
///         var exampleQueue = new Queue("exampleQueue", QueueArgs.builder()
///             .name("example-queue")
///             .namespaceId(exampleNamespace.id())
///             .enablePartitioning(true)
///             .build());
///
///         var exampleOutputServiceBusQueue = new OutputServiceBusQueue("exampleOutputServiceBusQueue", OutputServiceBusQueueArgs.builder()
///             .name("blob-storage-output")
///             .streamAnalyticsJobName(example.applyValue(_example -> _example.name()))
///             .resourceGroupName(example.applyValue(_example -> _example.resourceGroupName()))
///             .queueName(exampleQueue.name())
///             .servicebusNamespace(exampleNamespace.name())
///             .sharedAccessPolicyKey(exampleNamespace.defaultPrimaryKey())
///             .sharedAccessPolicyName("RootManageSharedAccessKey")
///             .serialization(OutputServiceBusQueueSerializationArgs.builder()
///                 .type("Csv")
///                 .format("Array")
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
///   exampleNamespace:
///     type: azure:servicebus:Namespace
///     name: example
///     properties:
///       name: example-namespace
///       location: ${exampleResourceGroup.location}
///       resourceGroupName: ${exampleResourceGroup.name}
///       sku: Standard
///   exampleQueue:
///     type: azure:servicebus:Queue
///     name: example
///     properties:
///       name: example-queue
///       namespaceId: ${exampleNamespace.id}
///       enablePartitioning: true
///   exampleOutputServiceBusQueue:
///     type: azure:streamanalytics:OutputServiceBusQueue
///     name: example
///     properties:
///       name: blob-storage-output
///       streamAnalyticsJobName: ${example.name}
///       resourceGroupName: ${example.resourceGroupName}
///       queueName: ${exampleQueue.name}
///       servicebusNamespace: ${exampleNamespace.name}
///       sharedAccessPolicyKey: ${exampleNamespace.defaultPrimaryKey}
///       sharedAccessPolicyName: RootManageSharedAccessKey
///       serialization:
///         type: Csv
///         format: Array
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
/// * `Microsoft.StreamAnalytics` - 2021-10-01-preview
///
/// ## Import
///
/// Stream Analytics Output ServiceBus Queue's can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:streamanalytics/outputServiceBusQueue:OutputServiceBusQueue example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.StreamAnalytics/streamingJobs/job1/outputs/output1
/// ```
class OutputServiceBusQueue extends pulumi.CustomResource {
  /// The authentication mode for the Stream Output. Possible values are `Msi` and `ConnectionString`. Defaults to `ConnectionString`.
  late final pulumi.Output<String?> authenticationMode;
  /// The name of the Stream Output. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// A list of property columns to add to the Service Bus Queue output.
  late final pulumi.Output<List<String>?> propertyColumns;
  /// The name of the Service Bus Queue.
  late final pulumi.Output<String> queueName;
  /// The name of the Resource Group where the Stream Analytics Job exists. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// A `serialization` block as defined below.
  late final pulumi.Output<OutputServiceBusQueueSerialization> serialization;
  /// The namespace that is associated with the desired Event Hub, Service Bus Queue, Service Bus Topic, etc.
  late final pulumi.Output<String> servicebusNamespace;
  /// The shared access policy key for the specified shared access policy. Required if `authenticationMode` is `ConnectionString`.
  late final pulumi.Output<String?> sharedAccessPolicyKey;
  /// The shared access policy name for the Event Hub, Service Bus Queue, Service Bus Topic, etc. Required if `authenticationMode` is `ConnectionString`.
  late final pulumi.Output<String?> sharedAccessPolicyName;
  /// The name of the Stream Analytics Job. Changing this forces a new resource to be created.
  late final pulumi.Output<String> streamAnalyticsJobName;
  /// A key-value pair of system property columns that will be attached to the outgoing messages for the Service Bus Queue Output.
  ///
  /// &gt; **Note:** The acceptable keys are `ContentType`, `CorrelationId`, `Label`, `MessageId`, `PartitionKey`, `ReplyTo`, `ReplyToSessionId`, `ScheduledEnqueueTimeUtc`, `SessionId`, `TimeToLive` and `To`.
  late final pulumi.Output<Map<String, String>?> systemPropertyColumns;

  /// Creates a new [OutputServiceBusQueue].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [OutputServiceBusQueue]. {@macro pulumi_streamanalytics_output_service_bus_queue_output_service_bus_queue_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  OutputServiceBusQueue(
    String name, {
    OutputServiceBusQueueArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:streamanalytics/outputServiceBusQueue:OutputServiceBusQueue',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.40.0').merge(options),
          additionalSecretOutputs: const ['sharedAccessPolicyKey'],
        ) {
    authenticationMode = registerOutput<String?>('authenticationMode');
    this.name = registerOutput<String>('name');
    propertyColumns = registerOutput<List<String>?>('propertyColumns', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    queueName = registerOutput<String>('queueName');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    serialization = registerOutput<OutputServiceBusQueueSerialization>('serialization', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return OutputServiceBusQueueSerialization.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    servicebusNamespace = registerOutput<String>('servicebusNamespace');
    sharedAccessPolicyKey = registerOutput<String?>('sharedAccessPolicyKey', isSecret: true);
    sharedAccessPolicyName = registerOutput<String?>('sharedAccessPolicyName');
    streamAnalyticsJobName = registerOutput<String>('streamAnalyticsJobName');
    systemPropertyColumns = registerOutput<Map<String, String>?>('systemPropertyColumns', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }

  /// Gets an existing [OutputServiceBusQueue] resource's state with the given [name] and [id].
  static OutputServiceBusQueue get(
    String name,
    pulumi.Input<String> id, {
    OutputServiceBusQueueState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return OutputServiceBusQueue._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  OutputServiceBusQueue._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:streamanalytics/outputServiceBusQueue:OutputServiceBusQueue',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    authenticationMode = registerOutput<String?>('authenticationMode');
    this.name = registerOutput<String>('name');
    propertyColumns = registerOutput<List<String>?>('propertyColumns', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    queueName = registerOutput<String>('queueName');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    serialization = registerOutput<OutputServiceBusQueueSerialization>('serialization', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return OutputServiceBusQueueSerialization.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    servicebusNamespace = registerOutput<String>('servicebusNamespace');
    sharedAccessPolicyKey = registerOutput<String?>('sharedAccessPolicyKey', isSecret: true);
    sharedAccessPolicyName = registerOutput<String?>('sharedAccessPolicyName');
    streamAnalyticsJobName = registerOutput<String>('streamAnalyticsJobName');
    systemPropertyColumns = registerOutput<Map<String, String>?>('systemPropertyColumns', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }

  /// Creates a typed reference to an existing [OutputServiceBusQueue] resource.
  OutputServiceBusQueue.reference(String urn)
    : super(
        'azure:streamanalytics/outputServiceBusQueue:OutputServiceBusQueue',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
          additionalSecretOutputs: const ['sharedAccessPolicyKey'],
        isResourceReference: true,
      ) {
    authenticationMode = registerOutput<String?>('authenticationMode');
    this.name = registerOutput<String>('name');
    propertyColumns = registerOutput<List<String>?>('propertyColumns', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    queueName = registerOutput<String>('queueName');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    serialization = registerOutput<OutputServiceBusQueueSerialization>('serialization', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return OutputServiceBusQueueSerialization.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    servicebusNamespace = registerOutput<String>('servicebusNamespace');
    sharedAccessPolicyKey = registerOutput<String?>('sharedAccessPolicyKey', isSecret: true);
    sharedAccessPolicyName = registerOutput<String?>('sharedAccessPolicyName');
    streamAnalyticsJobName = registerOutput<String>('streamAnalyticsJobName');
    systemPropertyColumns = registerOutput<Map<String, String>?>('systemPropertyColumns', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }
}
