import 'package:pulumi/pulumi.dart' as pulumi;
import 'queue_args.dart';
import 'queue_state.dart';

/// Manages a ServiceBus Queue.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "my-servicebus",
///     location: "West Europe",
/// });
/// const exampleNamespace = new azure.servicebus.Namespace("example", {
///     name: "tfex-servicebus-namespace",
///     location: example.location,
///     resourceGroupName: example.name,
///     sku: "Standard",
///     tags: {
///         source: "example",
///     },
/// });
/// const exampleQueue = new azure.servicebus.Queue("example", {
///     name: "tfex_servicebus_queue",
///     namespaceId: exampleNamespace.id,
///     partitioningEnabled: true,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="my-servicebus",
///     location="West Europe")
/// example_namespace = azure.servicebus.Namespace("example",
///     name="tfex-servicebus-namespace",
///     location=example.location,
///     resource_group_name=example.name,
///     sku="Standard",
///     tags={
///         "source": "example",
///     })
/// example_queue = azure.servicebus.Queue("example",
///     name="tfex_servicebus_queue",
///     namespace_id=example_namespace.id,
///     partitioning_enabled=True)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Azure.Core.ResourceGroup("example", new()
///     {
///         Name = "my-servicebus",
///         Location = "West Europe",
///     });
///
///     var exampleNamespace = new Azure.ServiceBus.Namespace("example", new()
///     {
///         Name = "tfex-servicebus-namespace",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         Sku = "Standard",
///         Tags =
///         {
///             { "source", "example" },
///         },
///     });
///
///     var exampleQueue = new Azure.ServiceBus.Queue("example", new()
///     {
///         Name = "tfex_servicebus_queue",
///         NamespaceId = exampleNamespace.Id,
///         PartitioningEnabled = true,
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
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("my-servicebus"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleNamespace, err := servicebus.NewNamespace(ctx, "example", &servicebus.NamespaceArgs{
/// 			Name:              pulumi.String("tfex-servicebus-namespace"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			Sku:               pulumi.String("Standard"),
/// 			Tags: pulumi.StringMap{
/// 				"source": pulumi.String("example"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = servicebus.NewQueue(ctx, "example", &servicebus.QueueArgs{
/// 			Name:                pulumi.String("tfex_servicebus_queue"),
/// 			NamespaceId:         exampleNamespace.ID().ToIDOutput().ToStringOutput(),
/// 			PartitioningEnabled: pulumi.Bool(true),
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
/// resource "azure_core_resourcegroup" "example" {
///   name     = "my-servicebus"
///   location = "West Europe"
/// }
/// resource "azure_servicebus_namespace" "example" {
///   name                = "tfex-servicebus-namespace"
///   location            = azure_core_resourcegroup.example.location
///   resource_group_name = azure_core_resourcegroup.example.name
///   sku                 = "Standard"
///   tags = {
///     "source" = "example"
///   }
/// }
/// resource "azure_servicebus_queue" "example" {
///   name                 = "tfex_servicebus_queue"
///   namespace_id         = azure_servicebus_namespace.example.id
///   partitioning_enabled = true
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
/// import com.pulumi.azure.servicebus.Namespace;
/// import com.pulumi.azure.servicebus.NamespaceArgs;
/// import com.pulumi.azure.servicebus.Queue;
/// import com.pulumi.azure.servicebus.QueueArgs;
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
///         var example = new ResourceGroup("example", ResourceGroupArgs.builder()
///             .name("my-servicebus")
///             .location("West Europe")
///             .build());
///
///         var exampleNamespace = new Namespace("exampleNamespace", NamespaceArgs.builder()
///             .name("tfex-servicebus-namespace")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .sku("Standard")
///             .tags(Map.of("source", "example"))
///             .build());
///
///         var exampleQueue = new Queue("exampleQueue", QueueArgs.builder()
///             .name("tfex_servicebus_queue")
///             .namespaceId(exampleNamespace.id())
///             .partitioningEnabled(true)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: azure:core:ResourceGroup
///     properties:
///       name: my-servicebus
///       location: West Europe
///   exampleNamespace:
///     type: azure:servicebus:Namespace
///     name: example
///     properties:
///       name: tfex-servicebus-namespace
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       sku: Standard
///       tags:
///         source: example
///   exampleQueue:
///     type: azure:servicebus:Queue
///     name: example
///     properties:
///       name: tfex_servicebus_queue
///       namespaceId: ${exampleNamespace.id}
///       partitioningEnabled: true
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.ServiceBus` - 2024-01-01
///
/// ## Import
///
/// Service Bus Queue can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:eventhub/queue:Queue example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/mygroup1/providers/Microsoft.ServiceBus/namespaces/sbns1/queues/snqueue1
/// ```
class Queue extends pulumi.CustomResource {
  /// The ISO 8601 timespan duration of the idle interval after which the Queue is automatically deleted, minimum of 5 minutes.
  late final pulumi.Output<String> autoDeleteOnIdle;
  /// Boolean flag which controls whether server-side batched operations are enabled. Defaults to `true`.
  late final pulumi.Output<bool?> batchedOperationsEnabled;
  /// Boolean flag which controls whether the Queue has dead letter support when a message expires. Defaults to `false`.
  late final pulumi.Output<bool?> deadLetteringOnMessageExpiration;
  /// The ISO 8601 timespan duration of the TTL of messages sent to this queue. This is the default value used when TTL is not set on message itself.
  late final pulumi.Output<String> defaultMessageTtl;
  /// The ISO 8601 timespan duration during which duplicates can be detected. Defaults to `PT10M` (10 Minutes).
  late final pulumi.Output<String?> duplicateDetectionHistoryTimeWindow;
  /// Boolean flag which controls whether Express Entities are enabled. An express queue holds a message in memory temporarily before writing it to persistent storage. Defaults to `false` for Basic and Standard. For Premium, it MUST be set to `false`.
  ///
  /// &gt; **Note:** Service Bus Premium namespaces do not support Express Entities, so `expressEnabled` MUST be set to `false`.
  late final pulumi.Output<bool?> expressEnabled;
  /// The name of a Queue or Topic to automatically forward dead lettered messages to.
  late final pulumi.Output<String?> forwardDeadLetteredMessagesTo;
  /// The name of a Queue or Topic to automatically forward messages to. Please [see the documentation](https://docs.microsoft.com/azure/service-bus-messaging/service-bus-auto-forwarding) for more information.
  late final pulumi.Output<String?> forwardTo;
  /// The ISO 8601 timespan duration of a peek-lock; that is, the amount of time that the message is locked for other receivers. Maximum value is 5 minutes. Defaults to `PT1M` (1 Minute).
  late final pulumi.Output<String?> lockDuration;
  /// Integer value which controls when a message is automatically dead lettered. Defaults to `10`.
  late final pulumi.Output<int?> maxDeliveryCount;
  /// Integer value which controls the maximum size of a message allowed on the queue for Premium SKU. For supported values see the "Large messages support" section of [this document](https://docs.microsoft.com/azure/service-bus-messaging/service-bus-premium-messaging#large-messages-support-preview).
  late final pulumi.Output<int> maxMessageSizeInKilobytes;
  /// Integer value which controls the size of memory allocated for the queue. For supported values see the "Queue or topic size" section of [Service Bus Quotas](https://docs.microsoft.com/azure/service-bus-messaging/service-bus-quotas).
  late final pulumi.Output<int> maxSizeInMegabytes;
  /// Specifies the name of the ServiceBus Queue resource. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// The ID of the ServiceBus Namespace to create this queue in. Changing this forces a new resource to be created.
  late final pulumi.Output<String> namespaceId;
  late final pulumi.Output<String> namespaceName;
  /// Boolean flag which controls whether to enable the queue to be partitioned across multiple message brokers. Changing this forces a new resource to be created. Defaults to `false` for Basic and Standard.
  ///
  /// &gt; **Note:** Partitioning is available at entity creation for all queues and topics in Basic or Standard SKUs. For premium namespace, partitioning is available at namespace creation, and all queues and topics in the partitioned namespace will be partitioned, for the premium namespace that has `premiumMessagingPartitions` sets to `1`, the namespace is not partitioned.
  late final pulumi.Output<bool?> partitioningEnabled;
  /// Boolean flag which controls whether the Queue requires duplicate detection. Changing this forces a new resource to be created. Defaults to `false`.
  late final pulumi.Output<bool?> requiresDuplicateDetection;
  /// Boolean flag which controls whether the Queue requires sessions. This will allow ordered handling of unbounded sequences of related messages. With sessions enabled a queue can guarantee first-in-first-out delivery of messages. Changing this forces a new resource to be created. Defaults to `false`.
  late final pulumi.Output<bool?> requiresSession;
  late final pulumi.Output<String> resourceGroupName;
  /// The status of the Queue. Possible values are `Active`, `Creating`, `Deleting`, `Disabled`, `ReceiveDisabled`, `Renaming`, `SendDisabled`, `Unknown`. Note that `Restoring` is not accepted. Defaults to `Active`.
  late final pulumi.Output<String?> status;

  /// Creates a new [Queue].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Queue]. {@macro pulumi_eventhub_queue_queue_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Queue(
    String name, {
    QueueArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:eventhub/queue:Queue',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.40.0').merge(options),
        ) {
    autoDeleteOnIdle = registerOutput<String>('autoDeleteOnIdle');
    batchedOperationsEnabled = registerOutput<bool?>('batchedOperationsEnabled');
    deadLetteringOnMessageExpiration = registerOutput<bool?>('deadLetteringOnMessageExpiration');
    defaultMessageTtl = registerOutput<String>('defaultMessageTtl');
    duplicateDetectionHistoryTimeWindow = registerOutput<String?>('duplicateDetectionHistoryTimeWindow');
    expressEnabled = registerOutput<bool?>('expressEnabled');
    forwardDeadLetteredMessagesTo = registerOutput<String?>('forwardDeadLetteredMessagesTo');
    forwardTo = registerOutput<String?>('forwardTo');
    lockDuration = registerOutput<String?>('lockDuration');
    maxDeliveryCount = registerOutput<int?>('maxDeliveryCount');
    maxMessageSizeInKilobytes = registerOutput<int>('maxMessageSizeInKilobytes');
    maxSizeInMegabytes = registerOutput<int>('maxSizeInMegabytes');
    this.name = registerOutput<String>('name');
    namespaceId = registerOutput<String>('namespaceId');
    namespaceName = registerOutput<String>('namespaceName');
    partitioningEnabled = registerOutput<bool?>('partitioningEnabled');
    requiresDuplicateDetection = registerOutput<bool?>('requiresDuplicateDetection');
    requiresSession = registerOutput<bool?>('requiresSession');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    status = registerOutput<String?>('status');
  }

  /// Gets an existing [Queue] resource's state with the given [name] and [id].
  static Queue get(
    String name,
    pulumi.Input<String> id, {
    QueueState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return Queue._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  Queue._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:eventhub/queue:Queue',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    autoDeleteOnIdle = registerOutput<String>('autoDeleteOnIdle');
    batchedOperationsEnabled = registerOutput<bool?>('batchedOperationsEnabled');
    deadLetteringOnMessageExpiration = registerOutput<bool?>('deadLetteringOnMessageExpiration');
    defaultMessageTtl = registerOutput<String>('defaultMessageTtl');
    duplicateDetectionHistoryTimeWindow = registerOutput<String?>('duplicateDetectionHistoryTimeWindow');
    expressEnabled = registerOutput<bool?>('expressEnabled');
    forwardDeadLetteredMessagesTo = registerOutput<String?>('forwardDeadLetteredMessagesTo');
    forwardTo = registerOutput<String?>('forwardTo');
    lockDuration = registerOutput<String?>('lockDuration');
    maxDeliveryCount = registerOutput<int?>('maxDeliveryCount');
    maxMessageSizeInKilobytes = registerOutput<int>('maxMessageSizeInKilobytes');
    maxSizeInMegabytes = registerOutput<int>('maxSizeInMegabytes');
    this.name = registerOutput<String>('name');
    namespaceId = registerOutput<String>('namespaceId');
    namespaceName = registerOutput<String>('namespaceName');
    partitioningEnabled = registerOutput<bool?>('partitioningEnabled');
    requiresDuplicateDetection = registerOutput<bool?>('requiresDuplicateDetection');
    requiresSession = registerOutput<bool?>('requiresSession');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    status = registerOutput<String?>('status');
  }

  /// Creates a typed reference to an existing [Queue] resource.
  Queue.reference(String urn)
    : super(
        'azure:eventhub/queue:Queue',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    autoDeleteOnIdle = registerOutput<String>('autoDeleteOnIdle');
    batchedOperationsEnabled = registerOutput<bool?>('batchedOperationsEnabled');
    deadLetteringOnMessageExpiration = registerOutput<bool?>('deadLetteringOnMessageExpiration');
    defaultMessageTtl = registerOutput<String>('defaultMessageTtl');
    duplicateDetectionHistoryTimeWindow = registerOutput<String?>('duplicateDetectionHistoryTimeWindow');
    expressEnabled = registerOutput<bool?>('expressEnabled');
    forwardDeadLetteredMessagesTo = registerOutput<String?>('forwardDeadLetteredMessagesTo');
    forwardTo = registerOutput<String?>('forwardTo');
    lockDuration = registerOutput<String?>('lockDuration');
    maxDeliveryCount = registerOutput<int?>('maxDeliveryCount');
    maxMessageSizeInKilobytes = registerOutput<int>('maxMessageSizeInKilobytes');
    maxSizeInMegabytes = registerOutput<int>('maxSizeInMegabytes');
    this.name = registerOutput<String>('name');
    namespaceId = registerOutput<String>('namespaceId');
    namespaceName = registerOutput<String>('namespaceName');
    partitioningEnabled = registerOutput<bool?>('partitioningEnabled');
    requiresDuplicateDetection = registerOutput<bool?>('requiresDuplicateDetection');
    requiresSession = registerOutput<bool?>('requiresSession');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    status = registerOutput<String?>('status');
  }
}
