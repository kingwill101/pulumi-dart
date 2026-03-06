// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'entity_status.dart';
import 'sbclient_affine_properties.dart';

/// {@template pulumi_servicebus_subscription_args_doc}
/// The set of arguments for Subscription.
/// {@endtemplate}
/// {@macro pulumi_servicebus_subscription_args_doc}
class SubscriptionArgs {
  /// ISO 8061 timeSpan idle interval after which the topic is automatically deleted. The minimum duration is 5 minutes.
  final pulumi.Input<String>? autoDeleteOnIdle;
  /// Properties specific to client affine subscriptions.
  final pulumi.Input<SBClientAffineProperties>? clientAffineProperties;
  /// Value that indicates whether a subscription has dead letter support on filter evaluation exceptions.
  final pulumi.Input<bool>? deadLetteringOnFilterEvaluationExceptions;
  /// Value that indicates whether a subscription has dead letter support when a message expires.
  final pulumi.Input<bool>? deadLetteringOnMessageExpiration;
  /// ISO 8061 Default message timespan to live value. This is the duration after which the message expires, starting from when the message is sent to Service Bus. This is the default value used when TimeToLive is not set on a message itself.
  final pulumi.Input<String>? defaultMessageTimeToLive;
  /// ISO 8601 timeSpan structure that defines the duration of the duplicate detection history. The default value is 10 minutes.
  final pulumi.Input<String>? duplicateDetectionHistoryTimeWindow;
  /// Value that indicates whether server-side batched operations are enabled.
  final pulumi.Input<bool>? enableBatchedOperations;
  /// Queue/Topic name to forward the Dead Letter message
  final pulumi.Input<String>? forwardDeadLetteredMessagesTo;
  /// Queue/Topic name to forward the messages
  final pulumi.Input<String>? forwardTo;
  /// Value that indicates whether the subscription has an affinity to the client id.
  final pulumi.Input<bool>? isClientAffine;
  /// ISO 8061 lock duration timespan for the subscription. The default value is 1 minute.
  final pulumi.Input<String>? lockDuration;
  /// Number of maximum deliveries.
  final pulumi.Input<int>? maxDeliveryCount;
  /// The namespace name
  final pulumi.Input<String> namespaceName;
  /// Value indicating if a subscription supports the concept of sessions.
  final pulumi.Input<bool>? requiresSession;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Enumerates the possible values for the status of a messaging entity.
  final pulumi.Input<EntityStatus>? status;
  /// The subscription name.
  final pulumi.Input<String>? subscriptionName;
  /// The topic name.
  final pulumi.Input<String> topicName;

  /// Creates a new [SubscriptionArgs].
  /// [autoDeleteOnIdle] ISO 8061 timeSpan idle interval after which the topic is automatically deleted. The minimum duration is 5 minutes.
  /// [clientAffineProperties] Properties specific to client affine subscriptions.
  /// [deadLetteringOnFilterEvaluationExceptions] Value that indicates whether a subscription has dead letter support on filter evaluation exceptions.
  /// [deadLetteringOnMessageExpiration] Value that indicates whether a subscription has dead letter support when a message expires.
  /// [defaultMessageTimeToLive] ISO 8061 Default message timespan to live value. This is the duration after which the message expires, starting from when the message is sent to Service Bus. This is the default value used when TimeToLive is not set on a message itself.
  /// [duplicateDetectionHistoryTimeWindow] ISO 8601 timeSpan structure that defines the duration of the duplicate detection history. The default value is 10 minutes.
  /// [enableBatchedOperations] Value that indicates whether server-side batched operations are enabled.
  /// [forwardDeadLetteredMessagesTo] Queue/Topic name to forward the Dead Letter message
  /// [forwardTo] Queue/Topic name to forward the messages
  /// [isClientAffine] Value that indicates whether the subscription has an affinity to the client id.
  /// [lockDuration] ISO 8061 lock duration timespan for the subscription. The default value is 1 minute.
  /// [maxDeliveryCount] Number of maximum deliveries.
  /// [namespaceName] The namespace name
  /// [requiresSession] Value indicating if a subscription supports the concept of sessions.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [status] Enumerates the possible values for the status of a messaging entity.
  /// [subscriptionName] The subscription name.
  /// [topicName] The topic name.
  const SubscriptionArgs({
    this.autoDeleteOnIdle,
    this.clientAffineProperties,
    this.deadLetteringOnFilterEvaluationExceptions,
    this.deadLetteringOnMessageExpiration,
    this.defaultMessageTimeToLive,
    this.duplicateDetectionHistoryTimeWindow,
    this.enableBatchedOperations,
    this.forwardDeadLetteredMessagesTo,
    this.forwardTo,
    this.isClientAffine,
    this.lockDuration,
    this.maxDeliveryCount,
    required this.namespaceName,
    this.requiresSession,
    required this.resourceGroupName,
    this.status,
    this.subscriptionName,
    required this.topicName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoDeleteOnIdle': ?autoDeleteOnIdle,
      'clientAffineProperties': ?pulumi.Input.mapOptionalInputValue<SBClientAffineProperties, Map<String, dynamic>>(clientAffineProperties, (value) => value.toMap()),
      'deadLetteringOnFilterEvaluationExceptions': ?deadLetteringOnFilterEvaluationExceptions,
      'deadLetteringOnMessageExpiration': ?deadLetteringOnMessageExpiration,
      'defaultMessageTimeToLive': ?defaultMessageTimeToLive,
      'duplicateDetectionHistoryTimeWindow': ?duplicateDetectionHistoryTimeWindow,
      'enableBatchedOperations': ?enableBatchedOperations,
      'forwardDeadLetteredMessagesTo': ?forwardDeadLetteredMessagesTo,
      'forwardTo': ?forwardTo,
      'isClientAffine': ?isClientAffine,
      'lockDuration': ?lockDuration,
      'maxDeliveryCount': ?maxDeliveryCount,
      'namespaceName': namespaceName,
      'requiresSession': ?requiresSession,
      'resourceGroupName': resourceGroupName,
      'status': ?pulumi.Input.mapOptionalInputValue<EntityStatus, String>(status, (value) => value.wireValue),
      'subscriptionName': ?subscriptionName,
      'topicName': topicName,
    };
  }

  factory SubscriptionArgs.fromMap(Map<String, dynamic> map) {
    return SubscriptionArgs(
      autoDeleteOnIdle: (() { final guardedValue = map['autoDeleteOnIdle']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      clientAffineProperties: (() { final guardedValue = map['clientAffineProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SBClientAffineProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      deadLetteringOnFilterEvaluationExceptions: (() { final guardedValue = map['deadLetteringOnFilterEvaluationExceptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      deadLetteringOnMessageExpiration: (() { final guardedValue = map['deadLetteringOnMessageExpiration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      defaultMessageTimeToLive: (() { final guardedValue = map['defaultMessageTimeToLive']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      duplicateDetectionHistoryTimeWindow: (() { final guardedValue = map['duplicateDetectionHistoryTimeWindow']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enableBatchedOperations: (() { final guardedValue = map['enableBatchedOperations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      forwardDeadLetteredMessagesTo: (() { final guardedValue = map['forwardDeadLetteredMessagesTo']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      forwardTo: (() { final guardedValue = map['forwardTo']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      isClientAffine: (() { final guardedValue = map['isClientAffine']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      lockDuration: (() { final guardedValue = map['lockDuration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      maxDeliveryCount: (() { final guardedValue = map['maxDeliveryCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      namespaceName: pulumi.Input.fromValue(map['namespaceName'] as String),
      requiresSession: (() { final guardedValue = map['requiresSession']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EntityStatus.fromValue(guardedValue as String)); })(),
      subscriptionName: (() { final guardedValue = map['subscriptionName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      topicName: pulumi.Input.fromValue(map['topicName'] as String),
    );
  }
}

