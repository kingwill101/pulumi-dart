// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'event_subscription_advanced_filter.dart';
import 'event_subscription_azure_function_endpoint.dart';
import 'event_subscription_dead_letter_identity.dart';
import 'event_subscription_delivery_identity.dart';
import 'event_subscription_delivery_property.dart';
import 'event_subscription_retry_policy.dart';
import 'event_subscription_storage_blob_dead_letter_destination.dart';
import 'event_subscription_storage_queue_endpoint.dart';
import 'event_subscription_subject_filter.dart';
import 'event_subscription_webhook_endpoint.dart';

/// Input properties used for looking up and filtering EventSubscription resources.
class EventSubscriptionState {
  /// A `advanced_filter` block as defined below.
  final pulumi.Input<EventSubscriptionAdvancedFilter>? advancedFilter;
  /// Specifies whether advanced filters should be evaluated against an array of values instead of expecting a singular value. Defaults to `false`.
  final pulumi.Input<bool>? advancedFilteringOnArraysEnabled;
  /// An `azure_function_endpoint` block as defined below.
  final pulumi.Input<EventSubscriptionAzureFunctionEndpoint>? azureFunctionEndpoint;
  /// A `dead_letter_identity` block as defined below.
  ///
  /// &gt; **Note:** `storage_blob_dead_letter_destination` must be specified when a `dead_letter_identity` is specified
  final pulumi.Input<EventSubscriptionDeadLetterIdentity>? deadLetterIdentity;
  /// A `delivery_identity` block as defined below.
  final pulumi.Input<EventSubscriptionDeliveryIdentity>? deliveryIdentity;
  /// One or more `delivery_property` blocks as defined below.
  final pulumi.Input<List<EventSubscriptionDeliveryProperty>>? deliveryProperties;
  /// Specifies the event delivery schema for the event subscription. Possible values include: `EventGridSchema`, `CloudEventSchemaV1_0`, `CustomInputSchema`. Defaults to `EventGridSchema`. Changing this forces a new resource to be created.
  final pulumi.Input<String>? eventDeliverySchema;
  /// Specifies the id where the Event Hub is located.
  final pulumi.Input<String>? eventhubEndpointId;
  /// Specifies the expiration time of the event subscription (Datetime Format `RFC 3339`).
  final pulumi.Input<String>? expirationTimeUtc;
  /// Specifies the id where the Hybrid Connection is located.
  final pulumi.Input<String>? hybridConnectionEndpointId;
  /// A list of applicable event types that need to be part of the event subscription.
  final pulumi.Input<List<String>>? includedEventTypes;
  /// A list of labels to assign to the event subscription.
  final pulumi.Input<List<String>>? labels;
  /// Specifies the name of the EventGrid Event Subscription resource. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// A `retry_policy` block as defined below.
  final pulumi.Input<EventSubscriptionRetryPolicy>? retryPolicy;
  /// Specifies the scope at which the EventGrid Event Subscription should be created. Changing this forces a new resource to be created.
  final pulumi.Input<String>? scope;
  /// Specifies the id where the Service Bus Queue is located.
  final pulumi.Input<String>? serviceBusQueueEndpointId;
  /// Specifies the id where the Service Bus Topic is located.
  final pulumi.Input<String>? serviceBusTopicEndpointId;
  /// A `storage_blob_dead_letter_destination` block as defined below.
  final pulumi.Input<EventSubscriptionStorageBlobDeadLetterDestination>? storageBlobDeadLetterDestination;
  /// A `storage_queue_endpoint` block as defined below.
  final pulumi.Input<EventSubscriptionStorageQueueEndpoint>? storageQueueEndpoint;
  /// A `subject_filter` block as defined below.
  final pulumi.Input<EventSubscriptionSubjectFilter>? subjectFilter;
  /// A `webhook_endpoint` block as defined below.
  ///
  /// &gt; **Note:** One of `eventhub_endpoint_id`, `hybrid_connection_endpoint_id`, `service_bus_queue_endpoint_id`, `service_bus_topic_endpoint_id`, `storage_queue_endpoint`, `webhook_endpoint` or `azure_function_endpoint` must be specified.
  final pulumi.Input<EventSubscriptionWebhookEndpoint>? webhookEndpoint;

  /// Creates a new [EventSubscriptionState].
  /// [advancedFilter] A `advanced_filter` block as defined below.
  /// [advancedFilteringOnArraysEnabled] Specifies whether advanced filters should be evaluated against an array of values instead of expecting a singular value. Defaults to `false`.
  /// [azureFunctionEndpoint] An `azure_function_endpoint` block as defined below.
  /// [deadLetterIdentity] A `dead_letter_identity` block as defined below.
  /// [deliveryIdentity] A `delivery_identity` block as defined below.
  /// [deliveryProperties] One or more `delivery_property` blocks as defined below.
  /// [eventDeliverySchema] Specifies the event delivery schema for the event subscription. Possible values include: `EventGridSchema`, `CloudEventSchemaV1_0`, `CustomInputSchema`. Defaults to `EventGridSchema`. Changing this forces a new resource to be created.
  /// [eventhubEndpointId] Specifies the id where the Event Hub is located.
  /// [expirationTimeUtc] Specifies the expiration time of the event subscription (Datetime Format `RFC 3339`).
  /// [hybridConnectionEndpointId] Specifies the id where the Hybrid Connection is located.
  /// [includedEventTypes] A list of applicable event types that need to be part of the event subscription.
  /// [labels] A list of labels to assign to the event subscription.
  /// [name] Specifies the name of the EventGrid Event Subscription resource. Changing this forces a new resource to be created.
  /// [retryPolicy] A `retry_policy` block as defined below.
  /// [scope] Specifies the scope at which the EventGrid Event Subscription should be created. Changing this forces a new resource to be created.
  /// [serviceBusQueueEndpointId] Specifies the id where the Service Bus Queue is located.
  /// [serviceBusTopicEndpointId] Specifies the id where the Service Bus Topic is located.
  /// [storageBlobDeadLetterDestination] A `storage_blob_dead_letter_destination` block as defined below.
  /// [storageQueueEndpoint] A `storage_queue_endpoint` block as defined below.
  /// [subjectFilter] A `subject_filter` block as defined below.
  /// [webhookEndpoint] A `webhook_endpoint` block as defined below.
  const EventSubscriptionState({
    this.advancedFilter,
    this.advancedFilteringOnArraysEnabled,
    this.azureFunctionEndpoint,
    this.deadLetterIdentity,
    this.deliveryIdentity,
    this.deliveryProperties,
    this.eventDeliverySchema,
    this.eventhubEndpointId,
    this.expirationTimeUtc,
    this.hybridConnectionEndpointId,
    this.includedEventTypes,
    this.labels,
    this.name,
    this.retryPolicy,
    this.scope,
    this.serviceBusQueueEndpointId,
    this.serviceBusTopicEndpointId,
    this.storageBlobDeadLetterDestination,
    this.storageQueueEndpoint,
    this.subjectFilter,
    this.webhookEndpoint,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'advancedFilter': ?pulumi.Input.mapOptionalInputValue<EventSubscriptionAdvancedFilter, Map<String, dynamic>>(advancedFilter, (value) => value.toMap()),
      'advancedFilteringOnArraysEnabled': ?advancedFilteringOnArraysEnabled,
      'azureFunctionEndpoint': ?pulumi.Input.mapOptionalInputValue<EventSubscriptionAzureFunctionEndpoint, Map<String, dynamic>>(azureFunctionEndpoint, (value) => value.toMap()),
      'deadLetterIdentity': ?pulumi.Input.mapOptionalInputValue<EventSubscriptionDeadLetterIdentity, Map<String, dynamic>>(deadLetterIdentity, (value) => value.toMap()),
      'deliveryIdentity': ?pulumi.Input.mapOptionalInputValue<EventSubscriptionDeliveryIdentity, Map<String, dynamic>>(deliveryIdentity, (value) => value.toMap()),
      'deliveryProperties': ?pulumi.Input.mapOptionalInputValue<List<EventSubscriptionDeliveryProperty>, List<Map<String, dynamic>>>(deliveryProperties, (value) => pulumi.Input.encodeList<EventSubscriptionDeliveryProperty, Map<String, dynamic>>(value, (value) => value.toMap())),
      'eventDeliverySchema': ?eventDeliverySchema,
      'eventhubEndpointId': ?eventhubEndpointId,
      'expirationTimeUtc': ?expirationTimeUtc,
      'hybridConnectionEndpointId': ?hybridConnectionEndpointId,
      'includedEventTypes': ?includedEventTypes,
      'labels': ?labels,
      'name': ?name,
      'retryPolicy': ?pulumi.Input.mapOptionalInputValue<EventSubscriptionRetryPolicy, Map<String, dynamic>>(retryPolicy, (value) => value.toMap()),
      'scope': ?scope,
      'serviceBusQueueEndpointId': ?serviceBusQueueEndpointId,
      'serviceBusTopicEndpointId': ?serviceBusTopicEndpointId,
      'storageBlobDeadLetterDestination': ?pulumi.Input.mapOptionalInputValue<EventSubscriptionStorageBlobDeadLetterDestination, Map<String, dynamic>>(storageBlobDeadLetterDestination, (value) => value.toMap()),
      'storageQueueEndpoint': ?pulumi.Input.mapOptionalInputValue<EventSubscriptionStorageQueueEndpoint, Map<String, dynamic>>(storageQueueEndpoint, (value) => value.toMap()),
      'subjectFilter': ?pulumi.Input.mapOptionalInputValue<EventSubscriptionSubjectFilter, Map<String, dynamic>>(subjectFilter, (value) => value.toMap()),
      'webhookEndpoint': ?pulumi.Input.mapOptionalInputValue<EventSubscriptionWebhookEndpoint, Map<String, dynamic>>(webhookEndpoint, (value) => value.toMap()),
    };
  }

  factory EventSubscriptionState.fromMap(Map<String, dynamic> map) {
    return EventSubscriptionState(
      advancedFilter: (() { final guardedValue = map['advancedFilter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EventSubscriptionAdvancedFilter.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      advancedFilteringOnArraysEnabled: (() { final guardedValue = map['advancedFilteringOnArraysEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      azureFunctionEndpoint: (() { final guardedValue = map['azureFunctionEndpoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EventSubscriptionAzureFunctionEndpoint.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      deadLetterIdentity: (() { final guardedValue = map['deadLetterIdentity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EventSubscriptionDeadLetterIdentity.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      deliveryIdentity: (() { final guardedValue = map['deliveryIdentity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EventSubscriptionDeliveryIdentity.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      deliveryProperties: (() { final guardedValue = map['deliveryProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<EventSubscriptionDeliveryProperty>(guardedValue, (value) => EventSubscriptionDeliveryProperty.fromMap((value as Map).cast<String, dynamic>()))); })(),
      eventDeliverySchema: (() { final guardedValue = map['eventDeliverySchema']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      eventhubEndpointId: (() { final guardedValue = map['eventhubEndpointId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      expirationTimeUtc: (() { final guardedValue = map['expirationTimeUtc']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      hybridConnectionEndpointId: (() { final guardedValue = map['hybridConnectionEndpointId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      includedEventTypes: (() { final guardedValue = map['includedEventTypes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      retryPolicy: (() { final guardedValue = map['retryPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EventSubscriptionRetryPolicy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      scope: (() { final guardedValue = map['scope']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serviceBusQueueEndpointId: (() { final guardedValue = map['serviceBusQueueEndpointId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serviceBusTopicEndpointId: (() { final guardedValue = map['serviceBusTopicEndpointId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      storageBlobDeadLetterDestination: (() { final guardedValue = map['storageBlobDeadLetterDestination']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EventSubscriptionStorageBlobDeadLetterDestination.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      storageQueueEndpoint: (() { final guardedValue = map['storageQueueEndpoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EventSubscriptionStorageQueueEndpoint.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      subjectFilter: (() { final guardedValue = map['subjectFilter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EventSubscriptionSubjectFilter.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      webhookEndpoint: (() { final guardedValue = map['webhookEndpoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EventSubscriptionWebhookEndpoint.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

