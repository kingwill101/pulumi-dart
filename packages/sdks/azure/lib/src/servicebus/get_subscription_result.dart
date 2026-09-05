// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getSubscription.
class GetSubscriptionResult {
  /// The idle interval after which the Subscription is automatically deleted.
  final String? autoDeleteOnIdle;
  /// Whether batched operations are enabled.
  final bool? batchedOperationsEnabled;
  /// Does the ServiceBus Subscription have dead letter support on filter evaluation exceptions?
  final bool? deadLetteringOnFilterEvaluationError;
  /// Does the Service Bus Subscription have dead letter support when a message expires?
  final bool? deadLetteringOnMessageExpiration;
  /// The Default message timespan to live. This is the duration after which the message expires, starting from when the message is sent to Service Bus. This is the default value used when TimeToLive is not set on a message itself.
  final String? defaultMessageTtl;
  final bool? enableBatchedOperations;
  /// The name of a Queue or Topic to automatically forward Dead Letter messages to.
  final String? forwardDeadLetteredMessagesTo;
  /// The name of a ServiceBus Queue or ServiceBus Topic where messages are automatically forwarded.
  final String? forwardTo;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// The lock duration for the subscription.
  final String? lockDuration;
  /// The maximum number of deliveries.
  final int? maxDeliveryCount;
  final String? name;
  final String? namespaceName;
  /// Whether this ServiceBus Subscription supports session.
  final bool? requiresSession;
  final String? resourceGroupName;
  final String? topicId;
  final String? topicName;

  /// Creates a new [GetSubscriptionResult].
  /// [autoDeleteOnIdle] The idle interval after which the Subscription is automatically deleted.
  /// [batchedOperationsEnabled] Whether batched operations are enabled.
  /// [deadLetteringOnFilterEvaluationError] Does the ServiceBus Subscription have dead letter support on filter evaluation exceptions?
  /// [deadLetteringOnMessageExpiration] Does the Service Bus Subscription have dead letter support when a message expires?
  /// [defaultMessageTtl] The Default message timespan to live. This is the duration after which the message expires, starting from when the message is sent to Service Bus. This is the default value used when TimeToLive is not set on a message itself.
  /// [enableBatchedOperations] Optional.
  /// [forwardDeadLetteredMessagesTo] The name of a Queue or Topic to automatically forward Dead Letter messages to.
  /// [forwardTo] The name of a ServiceBus Queue or ServiceBus Topic where messages are automatically forwarded.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [lockDuration] The lock duration for the subscription.
  /// [maxDeliveryCount] The maximum number of deliveries.
  /// [name] Optional.
  /// [namespaceName] Optional.
  /// [requiresSession] Whether this ServiceBus Subscription supports session.
  /// [resourceGroupName] Optional.
  /// [topicId] Optional.
  /// [topicName] Optional.
  const GetSubscriptionResult({
    this.autoDeleteOnIdle,
    this.batchedOperationsEnabled,
    this.deadLetteringOnFilterEvaluationError,
    this.deadLetteringOnMessageExpiration,
    this.defaultMessageTtl,
    this.enableBatchedOperations,
    this.forwardDeadLetteredMessagesTo,
    this.forwardTo,
    this.id,
    this.lockDuration,
    this.maxDeliveryCount,
    this.name,
    this.namespaceName,
    this.requiresSession,
    this.resourceGroupName,
    this.topicId,
    this.topicName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoDeleteOnIdle': ?autoDeleteOnIdle,
      'batchedOperationsEnabled': ?batchedOperationsEnabled,
      'deadLetteringOnFilterEvaluationError': ?deadLetteringOnFilterEvaluationError,
      'deadLetteringOnMessageExpiration': ?deadLetteringOnMessageExpiration,
      'defaultMessageTtl': ?defaultMessageTtl,
      'enableBatchedOperations': ?enableBatchedOperations,
      'forwardDeadLetteredMessagesTo': ?forwardDeadLetteredMessagesTo,
      'forwardTo': ?forwardTo,
      'id': ?id,
      'lockDuration': ?lockDuration,
      'maxDeliveryCount': ?maxDeliveryCount,
      'name': ?name,
      'namespaceName': ?namespaceName,
      'requiresSession': ?requiresSession,
      'resourceGroupName': ?resourceGroupName,
      'topicId': ?topicId,
      'topicName': ?topicName,
    };
  }

  factory GetSubscriptionResult.fromMap(Map<String, dynamic> map) {
    return GetSubscriptionResult(
      autoDeleteOnIdle: (() { final guardedValue = map['autoDeleteOnIdle']; if (guardedValue == null) return null; return guardedValue as String; })(),
      batchedOperationsEnabled: (() { final guardedValue = map['batchedOperationsEnabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      deadLetteringOnFilterEvaluationError: (() { final guardedValue = map['deadLetteringOnFilterEvaluationError']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      deadLetteringOnMessageExpiration: (() { final guardedValue = map['deadLetteringOnMessageExpiration']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      defaultMessageTtl: (() { final guardedValue = map['defaultMessageTtl']; if (guardedValue == null) return null; return guardedValue as String; })(),
      enableBatchedOperations: (() { final guardedValue = map['enableBatchedOperations']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      forwardDeadLetteredMessagesTo: (() { final guardedValue = map['forwardDeadLetteredMessagesTo']; if (guardedValue == null) return null; return guardedValue as String; })(),
      forwardTo: (() { final guardedValue = map['forwardTo']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      lockDuration: (() { final guardedValue = map['lockDuration']; if (guardedValue == null) return null; return guardedValue as String; })(),
      maxDeliveryCount: (() { final guardedValue = map['maxDeliveryCount']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      namespaceName: (() { final guardedValue = map['namespaceName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      requiresSession: (() { final guardedValue = map['requiresSession']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      topicId: (() { final guardedValue = map['topicId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      topicName: (() { final guardedValue = map['topicName']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
