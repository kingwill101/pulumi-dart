// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getQueue.
class GetQueueResult {
  /// The ISO 8601 timespan duration of the idle interval after which the Queue is automatically deleted, minimum of 5 minutes.
  final String autoDeleteOnIdle;
  /// Boolean flag which controls whether server-side batched operations are enabled.
  final bool batchedOperationsEnabled;
  /// Boolean flag which controls whether the Queue has dead letter support when a message expires.
  final bool deadLetteringOnMessageExpiration;
  /// The ISO 8601 timespan duration of the TTL of messages sent to this queue. This is the default value used when TTL is not set on a message itself.
  final String defaultMessageTtl;
  /// The ISO 8601 timespan duration during which duplicates can be detected.
  final String duplicateDetectionHistoryTimeWindow;
  final bool enableBatchedOperations;
  final bool enableExpress;
  final bool enablePartitioning;
  /// Boolean flag which controls whether Express Entities are enabled. An express queue holds a message in memory temporarily before writing it to persistent storage.
  final bool expressEnabled;
  /// The name of a Queue or Topic to automatically forward dead lettered messages to.
  final String forwardDeadLetteredMessagesTo;
  /// The name of a Queue or Topic to automatically forward messages to. Please [see the documentation](https://docs.microsoft.com/azure/service-bus-messaging/service-bus-auto-forwarding) for more information.
  final String forwardTo;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// The ISO 8601 timespan duration of a peek-lock; that is, the amount of time that the message is locked for other receivers.
  final String lockDuration;
  /// Integer value which controls when a message is automatically dead lettered.
  final int maxDeliveryCount;
  /// Integer value which controls the size of memory allocated for the queue. For supported values see the "Queue or topic size" section of [Service Bus Quotas](https://docs.microsoft.com/azure/service-bus-messaging/service-bus-quotas).
  final int maxSizeInMegabytes;
  final String name;
  final String? namespaceId;
  final String? namespaceName;
  /// Boolean flag which controls whether to enable the queue to be partitioned across multiple message brokers.
  final bool partitioningEnabled;
  /// Boolean flag which controls whether the Queue requires duplicate detection.
  final bool requiresDuplicateDetection;
  /// Boolean flag which controls whether the Queue requires sessions. This will allow ordered handling of unbounded sequences of related messages. With sessions enabled a queue can guarantee first-in-first-out delivery of messages.
  final bool requiresSession;
  final String? resourceGroupName;
  /// The status of the Queue. Possible values are `Active`, `Creating`, `Deleting`, `Disabled`, `ReceiveDisabled`, `Renaming`, `SendDisabled`, `Unknown`.
  final String status;

  /// Creates a new [GetQueueResult].
  /// [autoDeleteOnIdle] The ISO 8601 timespan duration of the idle interval after which the Queue is automatically deleted, minimum of 5 minutes.
  /// [batchedOperationsEnabled] Boolean flag which controls whether server-side batched operations are enabled.
  /// [deadLetteringOnMessageExpiration] Boolean flag which controls whether the Queue has dead letter support when a message expires.
  /// [defaultMessageTtl] The ISO 8601 timespan duration of the TTL of messages sent to this queue. This is the default value used when TTL is not set on a message itself.
  /// [duplicateDetectionHistoryTimeWindow] The ISO 8601 timespan duration during which duplicates can be detected.
  /// [enableBatchedOperations] Required.
  /// [enableExpress] Required.
  /// [enablePartitioning] Required.
  /// [expressEnabled] Boolean flag which controls whether Express Entities are enabled. An express queue holds a message in memory temporarily before writing it to persistent storage.
  /// [forwardDeadLetteredMessagesTo] The name of a Queue or Topic to automatically forward dead lettered messages to.
  /// [forwardTo] The name of a Queue or Topic to automatically forward messages to. Please [see the documentation](https://docs.microsoft.com/azure/service-bus-messaging/service-bus-auto-forwarding) for more information.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [lockDuration] The ISO 8601 timespan duration of a peek-lock; that is, the amount of time that the message is locked for other receivers.
  /// [maxDeliveryCount] Integer value which controls when a message is automatically dead lettered.
  /// [maxSizeInMegabytes] Integer value which controls the size of memory allocated for the queue. For supported values see the "Queue or topic size" section of [Service Bus Quotas](https://docs.microsoft.com/azure/service-bus-messaging/service-bus-quotas).
  /// [name] Required.
  /// [namespaceId] Optional.
  /// [namespaceName] Optional.
  /// [partitioningEnabled] Boolean flag which controls whether to enable the queue to be partitioned across multiple message brokers.
  /// [requiresDuplicateDetection] Boolean flag which controls whether the Queue requires duplicate detection.
  /// [requiresSession] Boolean flag which controls whether the Queue requires sessions. This will allow ordered handling of unbounded sequences of related messages. With sessions enabled a queue can guarantee first-in-first-out delivery of messages.
  /// [resourceGroupName] Optional.
  /// [status] The status of the Queue. Possible values are `Active`, `Creating`, `Deleting`, `Disabled`, `ReceiveDisabled`, `Renaming`, `SendDisabled`, `Unknown`.
  const GetQueueResult({
    required this.autoDeleteOnIdle,
    required this.batchedOperationsEnabled,
    required this.deadLetteringOnMessageExpiration,
    required this.defaultMessageTtl,
    required this.duplicateDetectionHistoryTimeWindow,
    required this.enableBatchedOperations,
    required this.enableExpress,
    required this.enablePartitioning,
    required this.expressEnabled,
    required this.forwardDeadLetteredMessagesTo,
    required this.forwardTo,
    required this.id,
    required this.lockDuration,
    required this.maxDeliveryCount,
    required this.maxSizeInMegabytes,
    required this.name,
    this.namespaceId,
    this.namespaceName,
    required this.partitioningEnabled,
    required this.requiresDuplicateDetection,
    required this.requiresSession,
    this.resourceGroupName,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoDeleteOnIdle': autoDeleteOnIdle,
      'batchedOperationsEnabled': batchedOperationsEnabled,
      'deadLetteringOnMessageExpiration': deadLetteringOnMessageExpiration,
      'defaultMessageTtl': defaultMessageTtl,
      'duplicateDetectionHistoryTimeWindow': duplicateDetectionHistoryTimeWindow,
      'enableBatchedOperations': enableBatchedOperations,
      'enableExpress': enableExpress,
      'enablePartitioning': enablePartitioning,
      'expressEnabled': expressEnabled,
      'forwardDeadLetteredMessagesTo': forwardDeadLetteredMessagesTo,
      'forwardTo': forwardTo,
      'id': id,
      'lockDuration': lockDuration,
      'maxDeliveryCount': maxDeliveryCount,
      'maxSizeInMegabytes': maxSizeInMegabytes,
      'name': name,
      'namespaceId': ?namespaceId,
      'namespaceName': ?namespaceName,
      'partitioningEnabled': partitioningEnabled,
      'requiresDuplicateDetection': requiresDuplicateDetection,
      'requiresSession': requiresSession,
      'resourceGroupName': ?resourceGroupName,
      'status': status,
    };
  }

  factory GetQueueResult.fromMap(Map<String, dynamic> map) {
    return GetQueueResult(
      autoDeleteOnIdle: map['autoDeleteOnIdle'] as String,
      batchedOperationsEnabled: map['batchedOperationsEnabled'] as bool,
      deadLetteringOnMessageExpiration: map['deadLetteringOnMessageExpiration'] as bool,
      defaultMessageTtl: map['defaultMessageTtl'] as String,
      duplicateDetectionHistoryTimeWindow: map['duplicateDetectionHistoryTimeWindow'] as String,
      enableBatchedOperations: map['enableBatchedOperations'] as bool,
      enableExpress: map['enableExpress'] as bool,
      enablePartitioning: map['enablePartitioning'] as bool,
      expressEnabled: map['expressEnabled'] as bool,
      forwardDeadLetteredMessagesTo: map['forwardDeadLetteredMessagesTo'] as String,
      forwardTo: map['forwardTo'] as String,
      id: map['id'] as String,
      lockDuration: map['lockDuration'] as String,
      maxDeliveryCount: map['maxDeliveryCount'] as int,
      maxSizeInMegabytes: map['maxSizeInMegabytes'] as int,
      name: map['name'] as String,
      namespaceId: (() { final guardedValue = map['namespaceId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      namespaceName: (() { final guardedValue = map['namespaceName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      partitioningEnabled: map['partitioningEnabled'] as bool,
      requiresDuplicateDetection: map['requiresDuplicateDetection'] as bool,
      requiresSession: map['requiresSession'] as bool,
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      status: map['status'] as String,
    );
  }
}
