// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'system_topic_event_subscription_advanced_filter.dart';
import 'system_topic_event_subscription_azure_function_endpoint.dart';
import 'system_topic_event_subscription_dead_letter_identity.dart';
import 'system_topic_event_subscription_delivery_identity.dart';
import 'system_topic_event_subscription_delivery_property.dart';
import 'system_topic_event_subscription_retry_policy.dart';
import 'system_topic_event_subscription_storage_blob_dead_letter_destination.dart';
import 'system_topic_event_subscription_storage_queue_endpoint.dart';
import 'system_topic_event_subscription_subject_filter.dart';
import 'system_topic_event_subscription_webhook_endpoint.dart';

/// {@template pulumi_eventgrid_system_topic_event_subscription_system_topic_event_subscription_args_doc}
/// The set of arguments for SystemTopicEventSubscription.
/// {@endtemplate}
/// {@macro pulumi_eventgrid_system_topic_event_subscription_system_topic_event_subscription_args_doc}
class SystemTopicEventSubscriptionArgs {
  /// A `advanced_filter` block as defined below.
  final pulumi.Input<SystemTopicEventSubscriptionAdvancedFilter>? advancedFilter;
  /// Specifies whether advanced filters should be evaluated against an array of values instead of expecting a singular value. Defaults to `false`.
  final pulumi.Input<bool>? advancedFilteringOnArraysEnabled;
  /// An `azure_function_endpoint` block as defined below.
  final pulumi.Input<SystemTopicEventSubscriptionAzureFunctionEndpoint>? azureFunctionEndpoint;
  /// A `dead_letter_identity` block as defined below.
  ///
  /// &gt; **Note:** `storage_blob_dead_letter_destination` must be specified when a `dead_letter_identity` is specified
  final pulumi.Input<SystemTopicEventSubscriptionDeadLetterIdentity>? deadLetterIdentity;
  /// A `delivery_identity` block as defined below.
  final pulumi.Input<SystemTopicEventSubscriptionDeliveryIdentity>? deliveryIdentity;
  /// One or more `delivery_property` blocks as defined below.
  final pulumi.Input<List<SystemTopicEventSubscriptionDeliveryProperty>>? deliveryProperties;
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
  /// The name which should be used for this Event Subscription. Changing this forces a new Event Subscription to be created.
  final pulumi.Input<String>? name;
  /// The name of the Resource Group where the System Topic exists. Changing this forces a new Event Subscription to be created.
  final pulumi.Input<String> resourceGroupName;
  /// A `retry_policy` block as defined below.
  final pulumi.Input<SystemTopicEventSubscriptionRetryPolicy>? retryPolicy;
  /// Specifies the id where the Service Bus Queue is located.
  final pulumi.Input<String>? serviceBusQueueEndpointId;
  /// Specifies the id where the Service Bus Topic is located.
  final pulumi.Input<String>? serviceBusTopicEndpointId;
  /// A `storage_blob_dead_letter_destination` block as defined below.
  final pulumi.Input<SystemTopicEventSubscriptionStorageBlobDeadLetterDestination>? storageBlobDeadLetterDestination;
  /// A `storage_queue_endpoint` block as defined below.
  final pulumi.Input<SystemTopicEventSubscriptionStorageQueueEndpoint>? storageQueueEndpoint;
  /// A `subject_filter` block as defined below.
  final pulumi.Input<SystemTopicEventSubscriptionSubjectFilter>? subjectFilter;
  /// The System Topic where the Event Subscription should be created in. Changing this forces a new Event Subscription to be created.
  final pulumi.Input<String> systemTopic;
  /// A `webhook_endpoint` block as defined below.
  ///
  /// &gt; **Note:** One of `azure_function_endpoint`, `eventhub_endpoint_id`, `hybrid_connection_endpoint`, `hybrid_connection_endpoint_id`, `service_bus_queue_endpoint_id`, `service_bus_topic_endpoint_id`, `storage_queue_endpoint` or `webhook_endpoint` must be specified.
  final pulumi.Input<SystemTopicEventSubscriptionWebhookEndpoint>? webhookEndpoint;

  /// Creates a new [SystemTopicEventSubscriptionArgs].
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
  /// [name] The name which should be used for this Event Subscription. Changing this forces a new Event Subscription to be created.
  /// [resourceGroupName] The name of the Resource Group where the System Topic exists. Changing this forces a new Event Subscription to be created.
  /// [retryPolicy] A `retry_policy` block as defined below.
  /// [serviceBusQueueEndpointId] Specifies the id where the Service Bus Queue is located.
  /// [serviceBusTopicEndpointId] Specifies the id where the Service Bus Topic is located.
  /// [storageBlobDeadLetterDestination] A `storage_blob_dead_letter_destination` block as defined below.
  /// [storageQueueEndpoint] A `storage_queue_endpoint` block as defined below.
  /// [subjectFilter] A `subject_filter` block as defined below.
  /// [systemTopic] The System Topic where the Event Subscription should be created in. Changing this forces a new Event Subscription to be created.
  /// [webhookEndpoint] A `webhook_endpoint` block as defined below.
  SystemTopicEventSubscriptionArgs({
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
    required this.resourceGroupName,
    this.retryPolicy,
    this.serviceBusQueueEndpointId,
    this.serviceBusTopicEndpointId,
    this.storageBlobDeadLetterDestination,
    this.storageQueueEndpoint,
    this.subjectFilter,
    required this.systemTopic,
    this.webhookEndpoint,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'advancedFilter': ?pulumi.Input.mapOptionalInputValue<SystemTopicEventSubscriptionAdvancedFilter, Map<String, dynamic>>(advancedFilter, (value) => value.toMap()),
      'advancedFilteringOnArraysEnabled': ?advancedFilteringOnArraysEnabled,
      'azureFunctionEndpoint': ?pulumi.Input.mapOptionalInputValue<SystemTopicEventSubscriptionAzureFunctionEndpoint, Map<String, dynamic>>(azureFunctionEndpoint, (value) => value.toMap()),
      'deadLetterIdentity': ?pulumi.Input.mapOptionalInputValue<SystemTopicEventSubscriptionDeadLetterIdentity, Map<String, dynamic>>(deadLetterIdentity, (value) => value.toMap()),
      'deliveryIdentity': ?pulumi.Input.mapOptionalInputValue<SystemTopicEventSubscriptionDeliveryIdentity, Map<String, dynamic>>(deliveryIdentity, (value) => value.toMap()),
      'deliveryProperties': ?pulumi.Input.mapOptionalInputValue<List<SystemTopicEventSubscriptionDeliveryProperty>, List<Map<String, dynamic>>>(deliveryProperties, (value) => pulumi.Input.encodeList<SystemTopicEventSubscriptionDeliveryProperty, Map<String, dynamic>>(value, (value) => value.toMap())),
      'eventDeliverySchema': ?eventDeliverySchema,
      'eventhubEndpointId': ?eventhubEndpointId,
      'expirationTimeUtc': ?expirationTimeUtc,
      'hybridConnectionEndpointId': ?hybridConnectionEndpointId,
      'includedEventTypes': ?includedEventTypes,
      'labels': ?labels,
      'name': ?name,
      'resourceGroupName': resourceGroupName,
      'retryPolicy': ?pulumi.Input.mapOptionalInputValue<SystemTopicEventSubscriptionRetryPolicy, Map<String, dynamic>>(retryPolicy, (value) => value.toMap()),
      'serviceBusQueueEndpointId': ?serviceBusQueueEndpointId,
      'serviceBusTopicEndpointId': ?serviceBusTopicEndpointId,
      'storageBlobDeadLetterDestination': ?pulumi.Input.mapOptionalInputValue<SystemTopicEventSubscriptionStorageBlobDeadLetterDestination, Map<String, dynamic>>(storageBlobDeadLetterDestination, (value) => value.toMap()),
      'storageQueueEndpoint': ?pulumi.Input.mapOptionalInputValue<SystemTopicEventSubscriptionStorageQueueEndpoint, Map<String, dynamic>>(storageQueueEndpoint, (value) => value.toMap()),
      'subjectFilter': ?pulumi.Input.mapOptionalInputValue<SystemTopicEventSubscriptionSubjectFilter, Map<String, dynamic>>(subjectFilter, (value) => value.toMap()),
      'systemTopic': systemTopic,
      'webhookEndpoint': ?pulumi.Input.mapOptionalInputValue<SystemTopicEventSubscriptionWebhookEndpoint, Map<String, dynamic>>(webhookEndpoint, (value) => value.toMap()),
    };
  }

  factory SystemTopicEventSubscriptionArgs.fromMap(Map<String, dynamic> map) {
    return SystemTopicEventSubscriptionArgs(
      advancedFilter: (() { final guardedValue = map['advancedFilter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SystemTopicEventSubscriptionAdvancedFilter.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      advancedFilteringOnArraysEnabled: (() { final guardedValue = map['advancedFilteringOnArraysEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      azureFunctionEndpoint: (() { final guardedValue = map['azureFunctionEndpoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SystemTopicEventSubscriptionAzureFunctionEndpoint.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      deadLetterIdentity: (() { final guardedValue = map['deadLetterIdentity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SystemTopicEventSubscriptionDeadLetterIdentity.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      deliveryIdentity: (() { final guardedValue = map['deliveryIdentity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SystemTopicEventSubscriptionDeliveryIdentity.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      deliveryProperties: (() { final guardedValue = map['deliveryProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<SystemTopicEventSubscriptionDeliveryProperty>(guardedValue, (value) => SystemTopicEventSubscriptionDeliveryProperty.fromMap((value as Map).cast<String, dynamic>()))); })(),
      eventDeliverySchema: (() { final guardedValue = map['eventDeliverySchema']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      eventhubEndpointId: (() { final guardedValue = map['eventhubEndpointId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      expirationTimeUtc: (() { final guardedValue = map['expirationTimeUtc']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      hybridConnectionEndpointId: (() { final guardedValue = map['hybridConnectionEndpointId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      includedEventTypes: (() { final guardedValue = map['includedEventTypes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      retryPolicy: (() { final guardedValue = map['retryPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SystemTopicEventSubscriptionRetryPolicy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      serviceBusQueueEndpointId: (() { final guardedValue = map['serviceBusQueueEndpointId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serviceBusTopicEndpointId: (() { final guardedValue = map['serviceBusTopicEndpointId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      storageBlobDeadLetterDestination: (() { final guardedValue = map['storageBlobDeadLetterDestination']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SystemTopicEventSubscriptionStorageBlobDeadLetterDestination.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      storageQueueEndpoint: (() { final guardedValue = map['storageQueueEndpoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SystemTopicEventSubscriptionStorageQueueEndpoint.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      subjectFilter: (() { final guardedValue = map['subjectFilter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SystemTopicEventSubscriptionSubjectFilter.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      systemTopic: pulumi.Input.fromValue(map['systemTopic'] as String),
      webhookEndpoint: (() { final guardedValue = map['webhookEndpoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SystemTopicEventSubscriptionWebhookEndpoint.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

