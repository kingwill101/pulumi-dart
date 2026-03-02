// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'subscription_client_scoped_subscription.dart';

/// {@template pulumi_eventhub_subscription_subscription_args_doc}
/// The set of arguments for Subscription.
/// {@endtemplate}
/// {@macro pulumi_eventhub_subscription_subscription_args_doc}
class SubscriptionArgs {
  /// The idle interval after which the topic is automatically deleted as an [ISO 8601 duration](https://en.wikipedia.org/wiki/ISO_8601#Durations). The minimum duration is `5` minutes or `PT5M`. Defaults to `P10675199DT2H48M5.4775807S`.
  final pulumi.Input<String>? autoDeleteOnIdle;
  /// Boolean flag which controls whether the Subscription supports batched operations.
  final pulumi.Input<bool>? batchedOperationsEnabled;
  /// A `client_scoped_subscription` block as defined below.
  final pulumi.Input<SubscriptionClientScopedSubscription>? clientScopedSubscription;
  /// whether the subscription is scoped to a client id. Defaults to `false`.
  ///
  /// > **Note:** Client Scoped Subscription can only be used for JMS subscription (Java Message Service).
  final pulumi.Input<bool>? clientScopedSubscriptionEnabled;
  /// Boolean flag which controls whether the Subscription has dead letter support on filter evaluation exceptions. Defaults to `true`.
  final pulumi.Input<bool>? deadLetteringOnFilterEvaluationError;
  /// Boolean flag which controls whether the Subscription has dead letter support when a message expires.
  final pulumi.Input<bool>? deadLetteringOnMessageExpiration;
  /// The Default message timespan to live as an [ISO 8601 duration](https://en.wikipedia.org/wiki/ISO_8601#Durations). This is the duration after which the message expires, starting from when the message is sent to Service Bus. This is the value used when TimeToLive is not set on a message itself. Defaults to `P10675199DT2H48M5.4775807S`.
  final pulumi.Input<String>? defaultMessageTtl;
  /// The name of a Queue or Topic to automatically forward Dead Letter messages to.
  final pulumi.Input<String>? forwardDeadLetteredMessagesTo;
  /// The name of a Queue or Topic to automatically forward messages to.
  final pulumi.Input<String>? forwardTo;
  /// The lock duration for the subscription as an [ISO 8601 duration](https://en.wikipedia.org/wiki/ISO_8601#Durations). Defaults to `PT1M`.
  final pulumi.Input<String>? lockDuration;
  /// The maximum number of deliveries.
  final pulumi.Input<int> maxDeliveryCount;
  /// Specifies the name of the ServiceBus Subscription resource. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// Boolean flag which controls whether this Subscription supports the concept of a session. Changing this forces a new resource to be created.
  final pulumi.Input<bool>? requiresSession;
  /// The status of the Subscription. Possible values are `Active`,`ReceiveDisabled`, or `Disabled`. Defaults to `Active`.
  final pulumi.Input<String>? status;
  /// The ID of the ServiceBus Topic to create this Subscription in. Changing this forces a new resource to be created.
  final pulumi.Input<String> topicId;

  /// Creates a new [SubscriptionArgs].
  /// [autoDeleteOnIdle] The idle interval after which the topic is automatically deleted as an [ISO 8601 duration](https://en.wikipedia.org/wiki/ISO_8601#Durations). The minimum duration is `5` minutes or `PT5M`. Defaults to `P10675199DT2H48M5.4775807S`.
  /// [batchedOperationsEnabled] Boolean flag which controls whether the Subscription supports batched operations.
  /// [clientScopedSubscription] A `client_scoped_subscription` block as defined below.
  /// [clientScopedSubscriptionEnabled] whether the subscription is scoped to a client id. Defaults to `false`.
  /// [deadLetteringOnFilterEvaluationError] Boolean flag which controls whether the Subscription has dead letter support on filter evaluation exceptions. Defaults to `true`.
  /// [deadLetteringOnMessageExpiration] Boolean flag which controls whether the Subscription has dead letter support when a message expires.
  /// [defaultMessageTtl] The Default message timespan to live as an [ISO 8601 duration](https://en.wikipedia.org/wiki/ISO_8601#Durations). This is the duration after which the message expires, starting from when the message is sent to Service Bus. This is the value used when TimeToLive is not set on a message itself. Defaults to `P10675199DT2H48M5.4775807S`.
  /// [forwardDeadLetteredMessagesTo] The name of a Queue or Topic to automatically forward Dead Letter messages to.
  /// [forwardTo] The name of a Queue or Topic to automatically forward messages to.
  /// [lockDuration] The lock duration for the subscription as an [ISO 8601 duration](https://en.wikipedia.org/wiki/ISO_8601#Durations). Defaults to `PT1M`.
  /// [maxDeliveryCount] The maximum number of deliveries.
  /// [name] Specifies the name of the ServiceBus Subscription resource. Changing this forces a new resource to be created.
  /// [requiresSession] Boolean flag which controls whether this Subscription supports the concept of a session. Changing this forces a new resource to be created.
  /// [status] The status of the Subscription. Possible values are `Active`,`ReceiveDisabled`, or `Disabled`. Defaults to `Active`.
  /// [topicId] The ID of the ServiceBus Topic to create this Subscription in. Changing this forces a new resource to be created.
  SubscriptionArgs({
    this.autoDeleteOnIdle,
    this.batchedOperationsEnabled,
    this.clientScopedSubscription,
    this.clientScopedSubscriptionEnabled,
    this.deadLetteringOnFilterEvaluationError,
    this.deadLetteringOnMessageExpiration,
    this.defaultMessageTtl,
    this.forwardDeadLetteredMessagesTo,
    this.forwardTo,
    this.lockDuration,
    required this.maxDeliveryCount,
    this.name,
    this.requiresSession,
    this.status,
    required this.topicId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoDeleteOnIdle': ?autoDeleteOnIdle,
      'batchedOperationsEnabled': ?batchedOperationsEnabled,
      'clientScopedSubscription': ?pulumi.Input.mapOptionalInputValue<SubscriptionClientScopedSubscription, Map<String, dynamic>>(clientScopedSubscription, (value) => value.toMap()),
      'clientScopedSubscriptionEnabled': ?clientScopedSubscriptionEnabled,
      'deadLetteringOnFilterEvaluationError': ?deadLetteringOnFilterEvaluationError,
      'deadLetteringOnMessageExpiration': ?deadLetteringOnMessageExpiration,
      'defaultMessageTtl': ?defaultMessageTtl,
      'forwardDeadLetteredMessagesTo': ?forwardDeadLetteredMessagesTo,
      'forwardTo': ?forwardTo,
      'lockDuration': ?lockDuration,
      'maxDeliveryCount': maxDeliveryCount,
      'name': ?name,
      'requiresSession': ?requiresSession,
      'status': ?status,
      'topicId': topicId,
    };
  }

  factory SubscriptionArgs.fromMap(Map<String, dynamic> map) {
    return SubscriptionArgs(
      autoDeleteOnIdle: map['autoDeleteOnIdle'] == null ? null : (map['autoDeleteOnIdle']! as String).input(),
      batchedOperationsEnabled: map['batchedOperationsEnabled'] == null ? null : (map['batchedOperationsEnabled']! as bool).input(),
      clientScopedSubscription: map['clientScopedSubscription'] == null ? null : (SubscriptionClientScopedSubscription.fromMap((map['clientScopedSubscription']! as Map).cast<String, dynamic>())).input(),
      clientScopedSubscriptionEnabled: map['clientScopedSubscriptionEnabled'] == null ? null : (map['clientScopedSubscriptionEnabled']! as bool).input(),
      deadLetteringOnFilterEvaluationError: map['deadLetteringOnFilterEvaluationError'] == null ? null : (map['deadLetteringOnFilterEvaluationError']! as bool).input(),
      deadLetteringOnMessageExpiration: map['deadLetteringOnMessageExpiration'] == null ? null : (map['deadLetteringOnMessageExpiration']! as bool).input(),
      defaultMessageTtl: map['defaultMessageTtl'] == null ? null : (map['defaultMessageTtl']! as String).input(),
      forwardDeadLetteredMessagesTo: map['forwardDeadLetteredMessagesTo'] == null ? null : (map['forwardDeadLetteredMessagesTo']! as String).input(),
      forwardTo: map['forwardTo'] == null ? null : (map['forwardTo']! as String).input(),
      lockDuration: map['lockDuration'] == null ? null : (map['lockDuration']! as String).input(),
      maxDeliveryCount: (map['maxDeliveryCount'] as int).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      requiresSession: map['requiresSession'] == null ? null : (map['requiresSession']! as bool).input(),
      status: map['status'] == null ? null : (map['status']! as String).input(),
      topicId: (map['topicId'] as String).input(),
    );
  }
}

