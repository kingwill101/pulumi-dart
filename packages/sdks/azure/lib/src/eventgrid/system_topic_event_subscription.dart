import 'package:pulumi/pulumi.dart' as pulumi;
import 'system_topic_event_subscription_advanced_filter.dart';
import 'system_topic_event_subscription_args.dart';
import 'system_topic_event_subscription_azure_function_endpoint.dart';
import 'system_topic_event_subscription_dead_letter_identity.dart';
import 'system_topic_event_subscription_delivery_identity.dart';
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
///   name     = "example-rg"
///   location = "West Europe"
/// }
/// resource "azure_storage_account" "example" {
///   name                     = "examplestorageaccount"
///   resource_group_name      = azure_core_resourcegroup.example.name
///   location                 = azure_core_resourcegroup.example.location
///   account_tier             = "Standard"
///   account_replication_type = "LRS"
///   tags = {
///     "environment" = "staging"
///   }
/// }
/// resource "azure_storage_queue" "example" {
///   name                 = "examplestoragequeue"
///   storage_account_name = azure_storage_account.example.name
/// }
/// resource "azure_eventgrid_systemtopic" "example" {
///   name                = "example-system-topic"
///   location            = "Global"
///   resource_group_name = azure_core_resourcegroup.example.name
///   source_resource_id  = azure_core_resourcegroup.example.id
///   topic_type          = "Microsoft.Resources.ResourceGroups"
/// }
/// resource "azure_eventgrid_systemtopiceventsubscription" "example" {
///   name                = "example-event-subscription"
///   system_topic        = azure_eventgrid_systemtopic.example.name
///   resource_group_name = azure_core_resourcegroup.example.name
///   storage_queue_endpoint = {
///     storage_account_id = azure_storage_account.example.id
///     queue_name         = azure_storage_queue.example.name
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
/// import com.pulumi.azure.storage.Account;
/// import com.pulumi.azure.storage.AccountArgs;
/// import com.pulumi.azure.storage.Queue;
/// import com.pulumi.azure.storage.QueueArgs;
/// import com.pulumi.azure.eventgrid.SystemTopic;
/// import com.pulumi.azure.eventgrid.SystemTopicArgs;
/// import com.pulumi.azure.eventgrid.SystemTopicEventSubscription;
/// import com.pulumi.azure.eventgrid.SystemTopicEventSubscriptionArgs;
/// import com.pulumi.azure.eventgrid.inputs.SystemTopicEventSubscriptionStorageQueueEndpointArgs;
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
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
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
  /// A `advancedFilter` block as defined below.
  late final pulumi.Output<SystemTopicEventSubscriptionAdvancedFilter?> advancedFilter;
  /// Specifies whether advanced filters should be evaluated against an array of values instead of expecting a singular value. Defaults to `false`.
  late final pulumi.Output<bool?> advancedFilteringOnArraysEnabled;
  /// An `azureFunctionEndpoint` block as defined below.
  late final pulumi.Output<SystemTopicEventSubscriptionAzureFunctionEndpoint?> azureFunctionEndpoint;
  /// A `deadLetterIdentity` block as defined below.
  ///
  /// &gt; **Note:** `storageBlobDeadLetterDestination` must be specified when a `deadLetterIdentity` is specified
  late final pulumi.Output<SystemTopicEventSubscriptionDeadLetterIdentity?> deadLetterIdentity;
  /// A `deliveryIdentity` block as defined below.
  late final pulumi.Output<SystemTopicEventSubscriptionDeliveryIdentity?> deliveryIdentity;
  /// One or more `deliveryProperty` blocks as defined below.
  late final pulumi.Output<List<Map<String, dynamic>>?> deliveryProperties;
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
  /// A `retryPolicy` block as defined below.
  late final pulumi.Output<SystemTopicEventSubscriptionRetryPolicy> retryPolicy;
  /// Specifies the id where the Service Bus Queue is located.
  late final pulumi.Output<String?> serviceBusQueueEndpointId;
  /// Specifies the id where the Service Bus Topic is located.
  late final pulumi.Output<String?> serviceBusTopicEndpointId;
  /// A `storageBlobDeadLetterDestination` block as defined below.
  late final pulumi.Output<SystemTopicEventSubscriptionStorageBlobDeadLetterDestination?> storageBlobDeadLetterDestination;
  /// A `storageQueueEndpoint` block as defined below.
  late final pulumi.Output<SystemTopicEventSubscriptionStorageQueueEndpoint?> storageQueueEndpoint;
  /// A `subjectFilter` block as defined below.
  late final pulumi.Output<SystemTopicEventSubscriptionSubjectFilter?> subjectFilter;
  /// The System Topic where the Event Subscription should be created in. Changing this forces a new Event Subscription to be created.
  late final pulumi.Output<String> systemTopic;
  /// A `webhookEndpoint` block as defined below.
  ///
  /// &gt; **Note:** One of `azureFunctionEndpoint`, `eventhubEndpointId`, `hybridConnectionEndpoint`, `hybridConnectionEndpointId`, `serviceBusQueueEndpointId`, `serviceBusTopicEndpointId`, `storageQueueEndpoint` or `webhookEndpoint` must be specified.
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
    advancedFilter = registerOutput<SystemTopicEventSubscriptionAdvancedFilter?>('advancedFilter', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemTopicEventSubscriptionAdvancedFilter.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    advancedFilteringOnArraysEnabled = registerOutput<bool?>('advancedFilteringOnArraysEnabled');
    azureFunctionEndpoint = registerOutput<SystemTopicEventSubscriptionAzureFunctionEndpoint?>('azureFunctionEndpoint', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemTopicEventSubscriptionAzureFunctionEndpoint.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    deadLetterIdentity = registerOutput<SystemTopicEventSubscriptionDeadLetterIdentity?>('deadLetterIdentity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemTopicEventSubscriptionDeadLetterIdentity.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    deliveryIdentity = registerOutput<SystemTopicEventSubscriptionDeliveryIdentity?>('deliveryIdentity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemTopicEventSubscriptionDeliveryIdentity.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    deliveryProperties = registerOutput<List<Map<String, dynamic>>?>('deliveryProperties');
    eventDeliverySchema = registerOutput<String?>('eventDeliverySchema');
    eventhubEndpointId = registerOutput<String>('eventhubEndpointId');
    expirationTimeUtc = registerOutput<String?>('expirationTimeUtc');
    hybridConnectionEndpointId = registerOutput<String>('hybridConnectionEndpointId');
    includedEventTypes = registerOutput<List<String>>('includedEventTypes');
    labels = registerOutput<List<String>?>('labels');
    this.name = registerOutput<String>('name');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    retryPolicy = registerOutput<SystemTopicEventSubscriptionRetryPolicy>('retryPolicy', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemTopicEventSubscriptionRetryPolicy.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    serviceBusQueueEndpointId = registerOutput<String?>('serviceBusQueueEndpointId');
    serviceBusTopicEndpointId = registerOutput<String?>('serviceBusTopicEndpointId');
    storageBlobDeadLetterDestination = registerOutput<SystemTopicEventSubscriptionStorageBlobDeadLetterDestination?>('storageBlobDeadLetterDestination', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemTopicEventSubscriptionStorageBlobDeadLetterDestination.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    storageQueueEndpoint = registerOutput<SystemTopicEventSubscriptionStorageQueueEndpoint?>('storageQueueEndpoint', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemTopicEventSubscriptionStorageQueueEndpoint.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    subjectFilter = registerOutput<SystemTopicEventSubscriptionSubjectFilter?>('subjectFilter', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemTopicEventSubscriptionSubjectFilter.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemTopic = registerOutput<String>('systemTopic');
    webhookEndpoint = registerOutput<SystemTopicEventSubscriptionWebhookEndpoint?>('webhookEndpoint', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemTopicEventSubscriptionWebhookEndpoint.fromMap((guardedValue as Map).cast<String, dynamic>()); });
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
    advancedFilter = registerOutput<SystemTopicEventSubscriptionAdvancedFilter?>('advancedFilter', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemTopicEventSubscriptionAdvancedFilter.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    advancedFilteringOnArraysEnabled = registerOutput<bool?>('advancedFilteringOnArraysEnabled');
    azureFunctionEndpoint = registerOutput<SystemTopicEventSubscriptionAzureFunctionEndpoint?>('azureFunctionEndpoint', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemTopicEventSubscriptionAzureFunctionEndpoint.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    deadLetterIdentity = registerOutput<SystemTopicEventSubscriptionDeadLetterIdentity?>('deadLetterIdentity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemTopicEventSubscriptionDeadLetterIdentity.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    deliveryIdentity = registerOutput<SystemTopicEventSubscriptionDeliveryIdentity?>('deliveryIdentity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemTopicEventSubscriptionDeliveryIdentity.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    deliveryProperties = registerOutput<List<Map<String, dynamic>>?>('deliveryProperties');
    eventDeliverySchema = registerOutput<String?>('eventDeliverySchema');
    eventhubEndpointId = registerOutput<String>('eventhubEndpointId');
    expirationTimeUtc = registerOutput<String?>('expirationTimeUtc');
    hybridConnectionEndpointId = registerOutput<String>('hybridConnectionEndpointId');
    includedEventTypes = registerOutput<List<String>>('includedEventTypes');
    labels = registerOutput<List<String>?>('labels');
    this.name = registerOutput<String>('name');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    retryPolicy = registerOutput<SystemTopicEventSubscriptionRetryPolicy>('retryPolicy', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemTopicEventSubscriptionRetryPolicy.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    serviceBusQueueEndpointId = registerOutput<String?>('serviceBusQueueEndpointId');
    serviceBusTopicEndpointId = registerOutput<String?>('serviceBusTopicEndpointId');
    storageBlobDeadLetterDestination = registerOutput<SystemTopicEventSubscriptionStorageBlobDeadLetterDestination?>('storageBlobDeadLetterDestination', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemTopicEventSubscriptionStorageBlobDeadLetterDestination.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    storageQueueEndpoint = registerOutput<SystemTopicEventSubscriptionStorageQueueEndpoint?>('storageQueueEndpoint', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemTopicEventSubscriptionStorageQueueEndpoint.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    subjectFilter = registerOutput<SystemTopicEventSubscriptionSubjectFilter?>('subjectFilter', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemTopicEventSubscriptionSubjectFilter.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemTopic = registerOutput<String>('systemTopic');
    webhookEndpoint = registerOutput<SystemTopicEventSubscriptionWebhookEndpoint?>('webhookEndpoint', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemTopicEventSubscriptionWebhookEndpoint.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
