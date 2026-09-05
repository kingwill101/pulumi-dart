import 'package:pulumi/pulumi.dart' as pulumi;
import 'event_subscription_advanced_filter.dart';
import 'event_subscription_args.dart';
import 'event_subscription_azure_function_endpoint.dart';
import 'event_subscription_dead_letter_identity.dart';
import 'event_subscription_delivery_identity.dart';
import 'event_subscription_delivery_property.dart';
import 'event_subscription_retry_policy.dart';
import 'event_subscription_state.dart';
import 'event_subscription_storage_blob_dead_letter_destination.dart';
import 'event_subscription_storage_queue_endpoint.dart';
import 'event_subscription_subject_filter.dart';
import 'event_subscription_webhook_endpoint.dart';

/// Manages an EventGrid Event Subscription
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "example-resources",
///     location: "West Europe",
/// });
/// const exampleAccount = new azure.storage.Account("example", {
///     name: "exampleasa",
///     resourceGroupName: example.name,
///     location: example.location,
///     accountTier: "Standard",
///     accountReplicationType: "LRS",
///     tags: {
///         environment: "staging",
///     },
/// });
/// const exampleQueue = new azure.storage.Queue("example", {
///     name: "example-astq",
///     storageAccountName: exampleAccount.name,
/// });
/// const exampleEventSubscription = new azure.eventgrid.EventSubscription("example", {
///     name: "example-aees",
///     scope: example.id,
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
///     name="example-resources",
///     location="West Europe")
/// example_account = azure.storage.Account("example",
///     name="exampleasa",
///     resource_group_name=example.name,
///     location=example.location,
///     account_tier="Standard",
///     account_replication_type="LRS",
///     tags={
///         "environment": "staging",
///     })
/// example_queue = azure.storage.Queue("example",
///     name="example-astq",
///     storage_account_name=example_account.name)
/// example_event_subscription = azure.eventgrid.EventSubscription("example",
///     name="example-aees",
///     scope=example.id,
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
///         Name = "example-resources",
///         Location = "West Europe",
///     });
///
///     var exampleAccount = new Azure.Storage.Account("example", new()
///     {
///         Name = "exampleasa",
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
///         Name = "example-astq",
///         StorageAccountName = exampleAccount.Name,
///     });
///
///     var exampleEventSubscription = new Azure.EventGrid.EventSubscription("example", new()
///     {
///         Name = "example-aees",
///         Scope = example.Id,
///         StorageQueueEndpoint = new Azure.EventGrid.Inputs.EventSubscriptionStorageQueueEndpointArgs
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
/// 			Name:     pulumi.String("example-resources"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleAccount, err := storage.NewAccount(ctx, "example", &storage.AccountArgs{
/// 			Name:                   pulumi.String("exampleasa"),
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
/// 			Name:               pulumi.String("example-astq"),
/// 			StorageAccountName: exampleAccount.Name,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = eventgrid.NewEventSubscription(ctx, "example", &eventgrid.EventSubscriptionArgs{
/// 			Name:  pulumi.String("example-aees"),
/// 			Scope: example.ID().ToIDOutput().ToStringOutput(),
/// 			StorageQueueEndpoint: &eventgrid.EventSubscriptionStorageQueueEndpointArgs{
/// 				StorageAccountId: exampleAccount.ID().ToIDOutput().ToStringOutput(),
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
///   name     = "example-resources"
///   location = "West Europe"
/// }
/// resource "azure_storage_account" "example" {
///   name                     = "exampleasa"
///   resource_group_name      = azure_core_resourcegroup.example.name
///   location                 = azure_core_resourcegroup.example.location
///   account_tier             = "Standard"
///   account_replication_type = "LRS"
///   tags = {
///     "environment" = "staging"
///   }
/// }
/// resource "azure_storage_queue" "example" {
///   name                 = "example-astq"
///   storage_account_name = azure_storage_account.example.name
/// }
/// resource "azure_eventgrid_eventsubscription" "example" {
///   name  = "example-aees"
///   scope = azure_core_resourcegroup.example.id
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
/// import com.pulumi.azure.eventgrid.EventSubscription;
/// import com.pulumi.azure.eventgrid.EventSubscriptionArgs;
/// import com.pulumi.azure.eventgrid.inputs.EventSubscriptionStorageQueueEndpointArgs;
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
///             .name("example-resources")
///             .location("West Europe")
///             .build());
///
///         var exampleAccount = new Account("exampleAccount", AccountArgs.builder()
///             .name("exampleasa")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .accountTier("Standard")
///             .accountReplicationType("LRS")
///             .tags(Map.of("environment", "staging"))
///             .build());
///
///         var exampleQueue = new Queue("exampleQueue", QueueArgs.builder()
///             .name("example-astq")
///             .storageAccountName(exampleAccount.name())
///             .build());
///
///         var exampleEventSubscription = new EventSubscription("exampleEventSubscription", EventSubscriptionArgs.builder()
///             .name("example-aees")
///             .scope(example.id())
///             .storageQueueEndpoint(EventSubscriptionStorageQueueEndpointArgs.builder()
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
///       name: example-resources
///       location: West Europe
///   exampleAccount:
///     type: azure:storage:Account
///     name: example
///     properties:
///       name: exampleasa
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
///       name: example-astq
///       storageAccountName: ${exampleAccount.name}
///   exampleEventSubscription:
///     type: azure:eventgrid:EventSubscription
///     name: example
///     properties:
///       name: example-aees
///       scope: ${example.id}
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
/// EventGrid Event Subscription's can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:eventhub/eventSubscription:EventSubscription eventSubscription1 /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.EventGrid/topics/topic1/providers/Microsoft.EventGrid/eventSubscriptions/eventSubscription1
/// ```
class EventSubscription extends pulumi.CustomResource {
  /// A `advancedFilter` block as defined below.
  late final pulumi.Output<EventSubscriptionAdvancedFilter?> advancedFilter;
  /// Specifies whether advanced filters should be evaluated against an array of values instead of expecting a singular value. Defaults to `false`.
  late final pulumi.Output<bool?> advancedFilteringOnArraysEnabled;
  /// An `azureFunctionEndpoint` block as defined below.
  late final pulumi.Output<EventSubscriptionAzureFunctionEndpoint?> azureFunctionEndpoint;
  /// A `deadLetterIdentity` block as defined below.
  ///
  /// &gt; **Note:** `storageBlobDeadLetterDestination` must be specified when a `deadLetterIdentity` is specified
  late final pulumi.Output<EventSubscriptionDeadLetterIdentity?> deadLetterIdentity;
  /// A `deliveryIdentity` block as defined below.
  late final pulumi.Output<EventSubscriptionDeliveryIdentity?> deliveryIdentity;
  /// One or more `deliveryProperty` blocks as defined below.
  late final pulumi.Output<List<EventSubscriptionDeliveryProperty>?> deliveryProperties;
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
  /// Specifies the name of the EventGrid Event Subscription resource. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// A `retryPolicy` block as defined below.
  late final pulumi.Output<EventSubscriptionRetryPolicy> retryPolicy;
  /// Specifies the scope at which the EventGrid Event Subscription should be created. Changing this forces a new resource to be created.
  late final pulumi.Output<String> scope;
  /// Specifies the id where the Service Bus Queue is located.
  late final pulumi.Output<String?> serviceBusQueueEndpointId;
  /// Specifies the id where the Service Bus Topic is located.
  late final pulumi.Output<String?> serviceBusTopicEndpointId;
  /// A `storageBlobDeadLetterDestination` block as defined below.
  late final pulumi.Output<EventSubscriptionStorageBlobDeadLetterDestination?> storageBlobDeadLetterDestination;
  /// A `storageQueueEndpoint` block as defined below.
  late final pulumi.Output<EventSubscriptionStorageQueueEndpoint?> storageQueueEndpoint;
  /// A `subjectFilter` block as defined below.
  late final pulumi.Output<EventSubscriptionSubjectFilter?> subjectFilter;
  /// A `webhookEndpoint` block as defined below.
  ///
  /// &gt; **Note:** One of `eventhubEndpointId`, `hybridConnectionEndpointId`, `serviceBusQueueEndpointId`, `serviceBusTopicEndpointId`, `storageQueueEndpoint`, `webhookEndpoint` or `azureFunctionEndpoint` must be specified.
  late final pulumi.Output<EventSubscriptionWebhookEndpoint?> webhookEndpoint;

  /// Creates a new [EventSubscription].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [EventSubscription]. {@macro pulumi_eventhub_event_subscription_event_subscription_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  EventSubscription(
    String name, {
    EventSubscriptionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:eventhub/eventSubscription:EventSubscription',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.40.0').merge(options),
        ) {
    advancedFilter = registerOutput<EventSubscriptionAdvancedFilter?>('advancedFilter', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return EventSubscriptionAdvancedFilter.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    advancedFilteringOnArraysEnabled = registerOutput<bool?>('advancedFilteringOnArraysEnabled');
    azureFunctionEndpoint = registerOutput<EventSubscriptionAzureFunctionEndpoint?>('azureFunctionEndpoint', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return EventSubscriptionAzureFunctionEndpoint.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    deadLetterIdentity = registerOutput<EventSubscriptionDeadLetterIdentity?>('deadLetterIdentity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return EventSubscriptionDeadLetterIdentity.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    deliveryIdentity = registerOutput<EventSubscriptionDeliveryIdentity?>('deliveryIdentity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return EventSubscriptionDeliveryIdentity.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    deliveryProperties = registerOutput<List<EventSubscriptionDeliveryProperty>?>('deliveryProperties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<EventSubscriptionDeliveryProperty>(guardedValue, (value) => EventSubscriptionDeliveryProperty.fromMap((value as Map).cast<String, dynamic>())); });
    eventDeliverySchema = registerOutput<String?>('eventDeliverySchema');
    eventhubEndpointId = registerOutput<String>('eventhubEndpointId');
    expirationTimeUtc = registerOutput<String?>('expirationTimeUtc');
    hybridConnectionEndpointId = registerOutput<String>('hybridConnectionEndpointId');
    includedEventTypes = registerOutput<List<String>>('includedEventTypes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    labels = registerOutput<List<String>?>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    this.name = registerOutput<String>('name');
    retryPolicy = registerOutput<EventSubscriptionRetryPolicy>('retryPolicy', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return EventSubscriptionRetryPolicy.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    scope = registerOutput<String>('scope');
    serviceBusQueueEndpointId = registerOutput<String?>('serviceBusQueueEndpointId');
    serviceBusTopicEndpointId = registerOutput<String?>('serviceBusTopicEndpointId');
    storageBlobDeadLetterDestination = registerOutput<EventSubscriptionStorageBlobDeadLetterDestination?>('storageBlobDeadLetterDestination', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return EventSubscriptionStorageBlobDeadLetterDestination.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    storageQueueEndpoint = registerOutput<EventSubscriptionStorageQueueEndpoint?>('storageQueueEndpoint', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return EventSubscriptionStorageQueueEndpoint.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    subjectFilter = registerOutput<EventSubscriptionSubjectFilter?>('subjectFilter', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return EventSubscriptionSubjectFilter.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    webhookEndpoint = registerOutput<EventSubscriptionWebhookEndpoint?>('webhookEndpoint', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return EventSubscriptionWebhookEndpoint.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Gets an existing [EventSubscription] resource's state with the given [name] and [id].
  static EventSubscription get(
    String name,
    pulumi.Input<String> id, {
    EventSubscriptionState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return EventSubscription._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  EventSubscription._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:eventhub/eventSubscription:EventSubscription',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    advancedFilter = registerOutput<EventSubscriptionAdvancedFilter?>('advancedFilter', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return EventSubscriptionAdvancedFilter.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    advancedFilteringOnArraysEnabled = registerOutput<bool?>('advancedFilteringOnArraysEnabled');
    azureFunctionEndpoint = registerOutput<EventSubscriptionAzureFunctionEndpoint?>('azureFunctionEndpoint', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return EventSubscriptionAzureFunctionEndpoint.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    deadLetterIdentity = registerOutput<EventSubscriptionDeadLetterIdentity?>('deadLetterIdentity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return EventSubscriptionDeadLetterIdentity.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    deliveryIdentity = registerOutput<EventSubscriptionDeliveryIdentity?>('deliveryIdentity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return EventSubscriptionDeliveryIdentity.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    deliveryProperties = registerOutput<List<EventSubscriptionDeliveryProperty>?>('deliveryProperties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<EventSubscriptionDeliveryProperty>(guardedValue, (value) => EventSubscriptionDeliveryProperty.fromMap((value as Map).cast<String, dynamic>())); });
    eventDeliverySchema = registerOutput<String?>('eventDeliverySchema');
    eventhubEndpointId = registerOutput<String>('eventhubEndpointId');
    expirationTimeUtc = registerOutput<String?>('expirationTimeUtc');
    hybridConnectionEndpointId = registerOutput<String>('hybridConnectionEndpointId');
    includedEventTypes = registerOutput<List<String>>('includedEventTypes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    labels = registerOutput<List<String>?>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    this.name = registerOutput<String>('name');
    retryPolicy = registerOutput<EventSubscriptionRetryPolicy>('retryPolicy', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return EventSubscriptionRetryPolicy.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    scope = registerOutput<String>('scope');
    serviceBusQueueEndpointId = registerOutput<String?>('serviceBusQueueEndpointId');
    serviceBusTopicEndpointId = registerOutput<String?>('serviceBusTopicEndpointId');
    storageBlobDeadLetterDestination = registerOutput<EventSubscriptionStorageBlobDeadLetterDestination?>('storageBlobDeadLetterDestination', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return EventSubscriptionStorageBlobDeadLetterDestination.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    storageQueueEndpoint = registerOutput<EventSubscriptionStorageQueueEndpoint?>('storageQueueEndpoint', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return EventSubscriptionStorageQueueEndpoint.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    subjectFilter = registerOutput<EventSubscriptionSubjectFilter?>('subjectFilter', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return EventSubscriptionSubjectFilter.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    webhookEndpoint = registerOutput<EventSubscriptionWebhookEndpoint?>('webhookEndpoint', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return EventSubscriptionWebhookEndpoint.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Creates a typed reference to an existing [EventSubscription] resource.
  EventSubscription.reference(String urn)
    : super(
        'azure:eventhub/eventSubscription:EventSubscription',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    advancedFilter = registerOutput<EventSubscriptionAdvancedFilter?>('advancedFilter', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return EventSubscriptionAdvancedFilter.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    advancedFilteringOnArraysEnabled = registerOutput<bool?>('advancedFilteringOnArraysEnabled');
    azureFunctionEndpoint = registerOutput<EventSubscriptionAzureFunctionEndpoint?>('azureFunctionEndpoint', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return EventSubscriptionAzureFunctionEndpoint.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    deadLetterIdentity = registerOutput<EventSubscriptionDeadLetterIdentity?>('deadLetterIdentity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return EventSubscriptionDeadLetterIdentity.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    deliveryIdentity = registerOutput<EventSubscriptionDeliveryIdentity?>('deliveryIdentity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return EventSubscriptionDeliveryIdentity.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    deliveryProperties = registerOutput<List<EventSubscriptionDeliveryProperty>?>('deliveryProperties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<EventSubscriptionDeliveryProperty>(guardedValue, (value) => EventSubscriptionDeliveryProperty.fromMap((value as Map).cast<String, dynamic>())); });
    eventDeliverySchema = registerOutput<String?>('eventDeliverySchema');
    eventhubEndpointId = registerOutput<String>('eventhubEndpointId');
    expirationTimeUtc = registerOutput<String?>('expirationTimeUtc');
    hybridConnectionEndpointId = registerOutput<String>('hybridConnectionEndpointId');
    includedEventTypes = registerOutput<List<String>>('includedEventTypes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    labels = registerOutput<List<String>?>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    this.name = registerOutput<String>('name');
    retryPolicy = registerOutput<EventSubscriptionRetryPolicy>('retryPolicy', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return EventSubscriptionRetryPolicy.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    scope = registerOutput<String>('scope');
    serviceBusQueueEndpointId = registerOutput<String?>('serviceBusQueueEndpointId');
    serviceBusTopicEndpointId = registerOutput<String?>('serviceBusTopicEndpointId');
    storageBlobDeadLetterDestination = registerOutput<EventSubscriptionStorageBlobDeadLetterDestination?>('storageBlobDeadLetterDestination', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return EventSubscriptionStorageBlobDeadLetterDestination.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    storageQueueEndpoint = registerOutput<EventSubscriptionStorageQueueEndpoint?>('storageQueueEndpoint', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return EventSubscriptionStorageQueueEndpoint.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    subjectFilter = registerOutput<EventSubscriptionSubjectFilter?>('subjectFilter', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return EventSubscriptionSubjectFilter.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    webhookEndpoint = registerOutput<EventSubscriptionWebhookEndpoint?>('webhookEndpoint', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return EventSubscriptionWebhookEndpoint.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
