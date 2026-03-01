import 'package:pulumi/pulumi.dart' as pulumi;
import 'system_topic_event_subscription_advanced_filter.dart';
import 'system_topic_event_subscription_args.dart';
import 'system_topic_event_subscription_azure_function_endpoint.dart';
import 'system_topic_event_subscription_dead_letter_identity.dart';
import 'system_topic_event_subscription_delivery_identity.dart';
import 'system_topic_event_subscription_delivery_property.dart';
import 'system_topic_event_subscription_retry_policy.dart';
import 'system_topic_event_subscription_state.dart';
import 'system_topic_event_subscription_storage_blob_dead_letter_destination.dart';
import 'system_topic_event_subscription_storage_queue_endpoint.dart';
import 'system_topic_event_subscription_subject_filter.dart';
import 'system_topic_event_subscription_webhook_endpoint.dart';

/// Manages an EventGrid System Topic Event Subscription.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "example-rg",
///     location: "West Europe",
/// });
/// const exampleAccount = new azure.storage.Account("example", {
///     name: "examplestorageaccount",
///     resourceGroupName: example.name,
///     location: example.location,
///     accountTier: "Standard",
///     accountReplicationType: "LRS",
///     tags: {
///         environment: "staging",
///     },
/// });
/// const exampleQueue = new azure.storage.Queue("example", {
///     name: "examplestoragequeue",
///     storageAccountName: exampleAccount.name,
/// });
/// const exampleSystemTopic = new azure.eventgrid.SystemTopic("example", {
///     name: "example-system-topic",
///     location: "Global",
///     resourceGroupName: example.name,
///     sourceResourceId: example.id,
///     topicType: "Microsoft.Resources.ResourceGroups",
/// });
/// const exampleSystemTopicEventSubscription = new azure.eventgrid.SystemTopicEventSubscription("example", {
///     name: "example-event-subscription",
///     systemTopic: exampleSystemTopic.name,
///     resourceGroupName: example.name,
///     storageQueueEndpoint: {
///         storageAccountId: exampleAccount.id,
///         queueName: exampleQueue.name,
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-rg",
///     location="West Europe")
/// example_account = azure.storage.Account("example",
///     name="examplestorageaccount",
///     resource_group_name=example.name,
///     location=example.location,
///     account_tier="Standard",
///     account_replication_type="LRS",
///     tags={
///         "environment": "staging",
///     })
/// example_queue = azure.storage.Queue("example",
///     name="examplestoragequeue",
///     storage_account_name=example_account.name)
/// example_system_topic = azure.eventgrid.SystemTopic("example",
///     name="example-system-topic",
///     location="Global",
///     resource_group_name=example.name,
///     source_resource_id=example.id,
///     topic_type="Microsoft.Resources.ResourceGroups")
/// example_system_topic_event_subscription = azure.eventgrid.SystemTopicEventSubscription("example",
///     name="example-event-subscription",
///     system_topic=example_system_topic.name,
///     resource_group_name=example.name,
///     storage_queue_endpoint={
///         "storage_account_id": example_account.id,
///         "queue_name": example_queue.name,
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
///     var example = new Azure.Core.ResourceGroup("example", new()
///     {
///         Name = "example-rg",
///         Location = "West Europe",
///     });
///
///     var exampleAccount = new Azure.Storage.Account("example", new()
///     {
///         Name = "examplestorageaccount",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         AccountTier = "Standard",
///         AccountReplicationType = "LRS",
///         Tags =
///         {
///             { "environment", "staging" },
///         },
///     });
///
///     var exampleQueue = new Azure.Storage.Queue("example", new()
///     {
///         Name = "examplestoragequeue",
///         StorageAccountName = exampleAccount.Name,
///     });
///
///     var exampleSystemTopic = new Azure.EventGrid.SystemTopic("example", new()
///     {
///         Name = "example-system-topic",
///         Location = "Global",
///         ResourceGroupName = example.Name,
///         SourceResourceId = example.Id,
///         TopicType = "Microsoft.Resources.ResourceGroups",
///     });
///
///     var exampleSystemTopicEventSubscription = new Azure.EventGrid.SystemTopicEventSubscription("example", new()
///     {
///         Name = "example-event-subscription",
///         SystemTopic = exampleSystemTopic.Name,
///         ResourceGroupName = example.Name,
///         StorageQueueEndpoint = new Azure.EventGrid.Inputs.SystemTopicEventSubscriptionStorageQueueEndpointArgs
///         {
///             StorageAccountId = exampleAccount.Id,
///             QueueName = exampleQueue.Name,
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
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/eventgrid"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/storage"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("example-rg"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleAccount, err := storage.NewAccount(ctx, "example", &storage.AccountArgs{
/// 			Name:                   pulumi.String("examplestorageaccount"),
/// 			ResourceGroupName:      example.Name,
/// 			Location:               example.Location,
/// 			AccountTier:            pulumi.String("Standard"),
/// 			AccountReplicationType: pulumi.String("LRS"),
/// 			Tags: pulumi.StringMap{
/// 				"environment": pulumi.String("staging"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleQueue, err := storage.NewQueue(ctx, "example", &storage.QueueArgs{
/// 			Name:               pulumi.String("examplestoragequeue"),
/// 			StorageAccountName: exampleAccount.Name,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleSystemTopic, err := eventgrid.NewSystemTopic(ctx, "example", &eventgrid.SystemTopicArgs{
/// 			Name:              pulumi.String("example-system-topic"),
/// 			Location:          pulumi.String("Global"),
/// 			ResourceGroupName: example.Name,
/// 			SourceResourceId:  example.ID(),
/// 			TopicType:         pulumi.String("Microsoft.Resources.ResourceGroups"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = eventgrid.NewSystemTopicEventSubscription(ctx, "example", &eventgrid.SystemTopicEventSubscriptionArgs{
/// 			Name:              pulumi.String("example-event-subscription"),
/// 			SystemTopic:       exampleSystemTopic.Name,
/// 			ResourceGroupName: example.Name,
/// 			StorageQueueEndpoint: &eventgrid.SystemTopicEventSubscriptionStorageQueueEndpointArgs{
/// 				StorageAccountId: exampleAccount.ID(),
/// 				QueueName:        exampleQueue.Name,
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
/// import com.pulumi.azure.storage.Account;
/// import com.pulumi.azure.storage.AccountArgs;
/// import com.pulumi.azure.storage.Queue;
/// import com.pulumi.azure.storage.QueueArgs;
/// import com.pulumi.azure.eventgrid.SystemTopic;
/// import com.pulumi.azure.eventgrid.SystemTopicArgs;
/// import com.pulumi.azure.eventgrid.SystemTopicEventSubscription;
/// import com.pulumi.azure.eventgrid.SystemTopicEventSubscriptionArgs;
/// import com.pulumi.azure.eventgrid.inputs.SystemTopicEventSubscriptionStorageQueueEndpointArgs;
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
///         var example = new ResourceGroup("example", ResourceGroupArgs.builder()
///             .name("example-rg")
///             .location("West Europe")
///             .build());
///
///         var exampleAccount = new Account("exampleAccount", AccountArgs.builder()
///             .name("examplestorageaccount")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .accountTier("Standard")
///             .accountReplicationType("LRS")
///             .tags(Map.of("environment", "staging"))
///             .build());
///
///         var exampleQueue = new Queue("exampleQueue", QueueArgs.builder()
///             .name("examplestoragequeue")
///             .storageAccountName(exampleAccount.name())
///             .build());
///
///         var exampleSystemTopic = new SystemTopic("exampleSystemTopic", SystemTopicArgs.builder()
///             .name("example-system-topic")
///             .location("Global")
///             .resourceGroupName(example.name())
///             .sourceResourceId(example.id())
///             .topicType("Microsoft.Resources.ResourceGroups")
///             .build());
///
///         var exampleSystemTopicEventSubscription = new SystemTopicEventSubscription("exampleSystemTopicEventSubscription", SystemTopicEventSubscriptionArgs.builder()
///             .name("example-event-subscription")
///             .systemTopic(exampleSystemTopic.name())
///             .resourceGroupName(example.name())
///             .storageQueueEndpoint(SystemTopicEventSubscriptionStorageQueueEndpointArgs.builder()
///                 .storageAccountId(exampleAccount.id())
///                 .queueName(exampleQueue.name())
///                 .build())
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
///       name: example-rg
///       location: West Europe
///   exampleAccount:
///     type: azure:storage:Account
///     name: example
///     properties:
///       name: examplestorageaccount
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       accountTier: Standard
///       accountReplicationType: LRS
///       tags:
///         environment: staging
///   exampleQueue:
///     type: azure:storage:Queue
///     name: example
///     properties:
///       name: examplestoragequeue
///       storageAccountName: ${exampleAccount.name}
///   exampleSystemTopic:
///     type: azure:eventgrid:SystemTopic
///     name: example
///     properties:
///       name: example-system-topic
///       location: Global
///       resourceGroupName: ${example.name}
///       sourceResourceId: ${example.id}
///       topicType: Microsoft.Resources.ResourceGroups
///   exampleSystemTopicEventSubscription:
///     type: azure:eventgrid:SystemTopicEventSubscription
///     name: example
///     properties:
///       name: example-event-subscription
///       systemTopic: ${exampleSystemTopic.name}
///       resourceGroupName: ${example.name}
///       storageQueueEndpoint:
///         storageAccountId: ${exampleAccount.id}
///         queueName: ${exampleQueue.name}
/// ```
///
///
/// ## API Providers
///
/// <!-- This section is generated, changes will be overwritten -->
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.EventGrid` - 2025-02-15
///
/// ## Import
///
/// EventGrid System Topic Event Subscriptions can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:eventgrid/systemTopicEventSubscription:SystemTopicEventSubscription example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.EventGrid/systemTopics/topic1/eventSubscriptions/subscription1
/// ```
class SystemTopicEventSubscription extends pulumi.CustomResource {
  /// A `advanced_filter` block as defined below.
  late final pulumi.Output<SystemTopicEventSubscriptionAdvancedFilter?> advancedFilter;
  /// Specifies whether advanced filters should be evaluated against an array of values instead of expecting a singular value. Defaults to `false`.
  late final pulumi.Output<bool?> advancedFilteringOnArraysEnabled;
  /// An `azure_function_endpoint` block as defined below.
  late final pulumi.Output<SystemTopicEventSubscriptionAzureFunctionEndpoint?> azureFunctionEndpoint;
  /// A `dead_letter_identity` block as defined below.
  ///
  /// > **Note:** `storage_blob_dead_letter_destination` must be specified when a `dead_letter_identity` is specified
  late final pulumi.Output<SystemTopicEventSubscriptionDeadLetterIdentity?> deadLetterIdentity;
  /// A `delivery_identity` block as defined below.
  late final pulumi.Output<SystemTopicEventSubscriptionDeliveryIdentity?> deliveryIdentity;
  /// One or more `delivery_property` blocks as defined below.
  late final pulumi.Output<List<SystemTopicEventSubscriptionDeliveryProperty>?> deliveryProperties;
  /// Specifies the event delivery schema for the event subscription. Possible values include: `EventGridSchema`, `CloudEventSchemaV1_0`, `CustomInputSchema`. Defaults to `EventGridSchema`. Changing this forces a new resource to be created.
  late final pulumi.Output<String?> eventDeliverySchema;
  /// Specifies the id where the Event Hub is located.
  late final pulumi.Output<String> eventhubEndpointId;
  /// Specifies the expiration time of the event subscription (Datetime Format `RFC 3339`).
  late final pulumi.Output<String?> expirationTimeUtc;
  /// Specifies the id where the Hybrid Connection is located.
  late final pulumi.Output<String> hybridConnectionEndpointId;
  /// A list of applicable event types that need to be part of the event subscription.
  late final pulumi.Output<List<String>> includedEventTypes;
  /// A list of labels to assign to the event subscription.
  late final pulumi.Output<List<String>?> labels;
  /// The name which should be used for this Event Subscription. Changing this forces a new Event Subscription to be created.
  late final pulumi.Output<String> name;
  /// The name of the Resource Group where the System Topic exists. Changing this forces a new Event Subscription to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// A `retry_policy` block as defined below.
  late final pulumi.Output<SystemTopicEventSubscriptionRetryPolicy> retryPolicy;
  /// Specifies the id where the Service Bus Queue is located.
  late final pulumi.Output<String?> serviceBusQueueEndpointId;
  /// Specifies the id where the Service Bus Topic is located.
  late final pulumi.Output<String?> serviceBusTopicEndpointId;
  /// A `storage_blob_dead_letter_destination` block as defined below.
  late final pulumi.Output<SystemTopicEventSubscriptionStorageBlobDeadLetterDestination?> storageBlobDeadLetterDestination;
  /// A `storage_queue_endpoint` block as defined below.
  late final pulumi.Output<SystemTopicEventSubscriptionStorageQueueEndpoint?> storageQueueEndpoint;
  /// A `subject_filter` block as defined below.
  late final pulumi.Output<SystemTopicEventSubscriptionSubjectFilter?> subjectFilter;
  /// The System Topic where the Event Subscription should be created in. Changing this forces a new Event Subscription to be created.
  late final pulumi.Output<String> systemTopic;
  /// A `webhook_endpoint` block as defined below.
  ///
  /// > **Note:** One of `azure_function_endpoint`, `eventhub_endpoint_id`, `hybrid_connection_endpoint`, `hybrid_connection_endpoint_id`, `service_bus_queue_endpoint_id`, `service_bus_topic_endpoint_id`, `storage_queue_endpoint` or `webhook_endpoint` must be specified.
  late final pulumi.Output<SystemTopicEventSubscriptionWebhookEndpoint?> webhookEndpoint;

  /// Creates a new [SystemTopicEventSubscription].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SystemTopicEventSubscription]. {@macro pulumi_eventgrid_system_topic_event_subscription_system_topic_event_subscription_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SystemTopicEventSubscription(
    String name, {
    SystemTopicEventSubscriptionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:eventgrid/systemTopicEventSubscription:SystemTopicEventSubscription',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.advancedFilter = registerOutput<SystemTopicEventSubscriptionAdvancedFilter?>('advancedFilter');
    this.advancedFilteringOnArraysEnabled = registerOutput<bool?>('advancedFilteringOnArraysEnabled');
    this.azureFunctionEndpoint = registerOutput<SystemTopicEventSubscriptionAzureFunctionEndpoint?>('azureFunctionEndpoint');
    this.deadLetterIdentity = registerOutput<SystemTopicEventSubscriptionDeadLetterIdentity?>('deadLetterIdentity');
    this.deliveryIdentity = registerOutput<SystemTopicEventSubscriptionDeliveryIdentity?>('deliveryIdentity');
    this.deliveryProperties = registerOutput<List<SystemTopicEventSubscriptionDeliveryProperty>?>('deliveryProperties');
    this.eventDeliverySchema = registerOutput<String?>('eventDeliverySchema');
    this.eventhubEndpointId = registerOutput<String>('eventhubEndpointId');
    this.expirationTimeUtc = registerOutput<String?>('expirationTimeUtc');
    this.hybridConnectionEndpointId = registerOutput<String>('hybridConnectionEndpointId');
    this.includedEventTypes = registerOutput<List<String>>('includedEventTypes');
    this.labels = registerOutput<List<String>?>('labels');
    this.name = registerOutput<String>('name');
    this.resourceGroupName = registerOutput<String>('resourceGroupName');
    this.retryPolicy = registerOutput<SystemTopicEventSubscriptionRetryPolicy>('retryPolicy');
    this.serviceBusQueueEndpointId = registerOutput<String?>('serviceBusQueueEndpointId');
    this.serviceBusTopicEndpointId = registerOutput<String?>('serviceBusTopicEndpointId');
    this.storageBlobDeadLetterDestination = registerOutput<SystemTopicEventSubscriptionStorageBlobDeadLetterDestination?>('storageBlobDeadLetterDestination');
    this.storageQueueEndpoint = registerOutput<SystemTopicEventSubscriptionStorageQueueEndpoint?>('storageQueueEndpoint');
    this.subjectFilter = registerOutput<SystemTopicEventSubscriptionSubjectFilter?>('subjectFilter');
    this.systemTopic = registerOutput<String>('systemTopic');
    this.webhookEndpoint = registerOutput<SystemTopicEventSubscriptionWebhookEndpoint?>('webhookEndpoint');
  }

  /// Gets an existing [SystemTopicEventSubscription] resource's state with the given [name] and [id].
  static SystemTopicEventSubscription get(
    String name,
    pulumi.Input<String> id, {
    SystemTopicEventSubscriptionState? state,
  }) {
    return SystemTopicEventSubscription._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  SystemTopicEventSubscription._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:eventgrid/systemTopicEventSubscription:SystemTopicEventSubscription',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.advancedFilter = registerOutput<SystemTopicEventSubscriptionAdvancedFilter?>('advancedFilter');
    this.advancedFilteringOnArraysEnabled = registerOutput<bool?>('advancedFilteringOnArraysEnabled');
    this.azureFunctionEndpoint = registerOutput<SystemTopicEventSubscriptionAzureFunctionEndpoint?>('azureFunctionEndpoint');
    this.deadLetterIdentity = registerOutput<SystemTopicEventSubscriptionDeadLetterIdentity?>('deadLetterIdentity');
    this.deliveryIdentity = registerOutput<SystemTopicEventSubscriptionDeliveryIdentity?>('deliveryIdentity');
    this.deliveryProperties = registerOutput<List<SystemTopicEventSubscriptionDeliveryProperty>?>('deliveryProperties');
    this.eventDeliverySchema = registerOutput<String?>('eventDeliverySchema');
    this.eventhubEndpointId = registerOutput<String>('eventhubEndpointId');
    this.expirationTimeUtc = registerOutput<String?>('expirationTimeUtc');
    this.hybridConnectionEndpointId = registerOutput<String>('hybridConnectionEndpointId');
    this.includedEventTypes = registerOutput<List<String>>('includedEventTypes');
    this.labels = registerOutput<List<String>?>('labels');
    this.name = registerOutput<String>('name');
    this.resourceGroupName = registerOutput<String>('resourceGroupName');
    this.retryPolicy = registerOutput<SystemTopicEventSubscriptionRetryPolicy>('retryPolicy');
    this.serviceBusQueueEndpointId = registerOutput<String?>('serviceBusQueueEndpointId');
    this.serviceBusTopicEndpointId = registerOutput<String?>('serviceBusTopicEndpointId');
    this.storageBlobDeadLetterDestination = registerOutput<SystemTopicEventSubscriptionStorageBlobDeadLetterDestination?>('storageBlobDeadLetterDestination');
    this.storageQueueEndpoint = registerOutput<SystemTopicEventSubscriptionStorageQueueEndpoint?>('storageQueueEndpoint');
    this.subjectFilter = registerOutput<SystemTopicEventSubscriptionSubjectFilter?>('subjectFilter');
    this.systemTopic = registerOutput<String>('systemTopic');
    this.webhookEndpoint = registerOutput<SystemTopicEventSubscriptionWebhookEndpoint?>('webhookEndpoint');
  }
}
