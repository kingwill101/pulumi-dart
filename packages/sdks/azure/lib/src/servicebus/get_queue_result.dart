// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getQueue.
class GetQueueResult {
  /// The ISO 8601 timespan duration of the idle interval after which the Queue is automatically deleted, minimum of 5 minutes.
  final String? autoDeleteOnIdle;
  /// Boolean flag which controls whether server-side batched operations are enabled.
  final bool? batchedOperationsEnabled;
  /// Boolean flag which controls whether the Queue has dead letter support when a message expires.
  final bool? deadLetteringOnMessageExpiration;
  /// The ISO 8601 timespan duration of the TTL of messages sent to this queue. This is the default value used when TTL is not set on a message itself.
  final String? defaultMessageTtl;
  /// The ISO 8601 timespan duration during which duplicates can be detected.
  final String? duplicateDetectionHistoryTimeWindow;
  final bool? enableBatchedOperations;
  final bool? enableExpress;
  final bool? enablePartitioning;
  /// Boolean flag which controls whether Express Entities are enabled. An express queue holds a message in memory temporarily before writing it to persistent storage.
  final bool? expressEnabled;
  /// The name of a Queue or Topic to automatically forward dead lettered messages to.
  final String? forwardDeadLetteredMessagesTo;
  /// The name of a Queue or Topic to automatically forward messages to. Please [see the documentation](https://docs.microsoft.com/azure/service-bus-messaging/service-bus-auto-forwarding) for more information.
  final String? forwardTo;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// The ISO 8601 timespan duration of a peek-lock; that is, the amount of time that the message is locked for other receivers.
  final String? lockDuration;
  /// Integer value which controls when a message is automatically dead lettered.
  final int? maxDeliveryCount;
  /// Integer value which controls the size of memory allocated for the queue. For supported values see the "Queue or topic size" section of [Service Bus Quotas](https://docs.microsoft.com/azure/service-bus-messaging/service-bus-quotas).
  final int? maxSizeInMegabytes;
  final String? name;
  final String? namespaceId;
  final String? namespaceName;
  /// Boolean flag which controls whether to enable the queue to be partitioned across multiple message brokers.
  final bool? partitioningEnabled;
  /// Boolean flag which controls whether the Queue requires duplicate detection.
  final bool? requiresDuplicateDetection;
  /// Boolean flag which controls whether the Queue requires sessions. This will allow ordered handling of unbounded sequences of related messages. With sessions enabled a queue can guarantee first-in-first-out delivery of messages.
  final bool? requiresSession;
  final String? resourceGroupName;
  /// The status of the Queue. Possible values are `Active`, `Creating`, `Deleting`, `Disabled`, `ReceiveDisabled`, `Renaming`, `SendDisabled`, `Unknown`.
  final String? status;

  /// Creates a new [GetQueueResult].
  /// [autoDeleteOnIdle] The ISO 8601 timespan duration of the idle interval after which the Queue is automatically deleted, minimum of 5 minutes.
  /// [batchedOperationsEnabled] Boolean flag which controls whether server-side batched operations are enabled.
  /// [deadLetteringOnMessageExpiration] Boolean flag which controls whether the Queue has dead letter support when a message expires.
  /// [defaultMessageTtl] The ISO 8601 timespan duration of the TTL of messages sent to this queue. This is the default value used when TTL is not set on a message itself.
  /// [duplicateDetectionHistoryTimeWindow] The ISO 8601 timespan duration during which duplicates can be detected.
  /// [enableBatchedOperations] Optional.
  /// [enableExpress] Optional.
  /// [enablePartitioning] Optional.
  /// [expressEnabled] Boolean flag which controls whether Express Entities are enabled. An express queue holds a message in memory temporarily before writing it to persistent storage.
  /// [forwardDeadLetteredMessagesTo] The name of a Queue or Topic to automatically forward dead lettered messages to.
  /// [forwardTo] The name of a Queue or Topic to automatically forward messages to. Please [see the documentation](https://docs.microsoft.com/azure/service-bus-messaging/service-bus-auto-forwarding) for more information.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [lockDuration] The ISO 8601 timespan duration of a peek-lock; that is, the amount of time that the message is locked for other receivers.
  /// [maxDeliveryCount] Integer value which controls when a message is automatically dead lettered.
  /// [maxSizeInMegabytes] Integer value which controls the size of memory allocated for the queue. For supported values see the "Queue or topic size" section of [Service Bus Quotas](https://docs.microsoft.com/azure/service-bus-messaging/service-bus-quotas).
  /// [name] Optional.
  /// [namespaceId] Optional.
  /// [namespaceName] Optional.
  /// [partitioningEnabled] Boolean flag which controls whether to enable the queue to be partitioned across multiple message brokers.
  /// [requiresDuplicateDetection] Boolean flag which controls whether the Queue requires duplicate detection.
  /// [requiresSession] Boolean flag which controls whether the Queue requires sessions. This will allow ordered handling of unbounded sequences of related messages. With sessions enabled a queue can guarantee first-in-first-out delivery of messages.
  /// [resourceGroupName] Optional.
  /// [status] The status of the Queue. Possible values are `Active`, `Creating`, `Deleting`, `Disabled`, `ReceiveDisabled`, `Renaming`, `SendDisabled`, `Unknown`.
  const GetQueueResult({
    this.autoDeleteOnIdle,
    this.batchedOperationsEnabled,
    this.deadLetteringOnMessageExpiration,
    this.defaultMessageTtl,
    this.duplicateDetectionHistoryTimeWindow,
    this.enableBatchedOperations,
    this.enableExpress,
    this.enablePartitioning,
    this.expressEnabled,
    this.forwardDeadLetteredMessagesTo,
    this.forwardTo,
    this.id,
    this.lockDuration,
    this.maxDeliveryCount,
    this.maxSizeInMegabytes,
    this.name,
    this.namespaceId,
    this.namespaceName,
    this.partitioningEnabled,
    this.requiresDuplicateDetection,
    this.requiresSession,
    this.resourceGroupName,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoDeleteOnIdle': ?autoDeleteOnIdle,
      'batchedOperationsEnabled': ?batchedOperationsEnabled,
      'deadLetteringOnMessageExpiration': ?deadLetteringOnMessageExpiration,
      'defaultMessageTtl': ?defaultMessageTtl,
      'duplicateDetectionHistoryTimeWindow': ?duplicateDetectionHistoryTimeWindow,
      'enableBatchedOperations': ?enableBatchedOperations,
      'enableExpress': ?enableExpress,
      'enablePartitioning': ?enablePartitioning,
      'expressEnabled': ?expressEnabled,
      'forwardDeadLetteredMessagesTo': ?forwardDeadLetteredMessagesTo,
      'forwardTo': ?forwardTo,
      'id': ?id,
      'lockDuration': ?lockDuration,
      'maxDeliveryCount': ?maxDeliveryCount,
      'maxSizeInMegabytes': ?maxSizeInMegabytes,
      'name': ?name,
      'namespaceId': ?namespaceId,
      'namespaceName': ?namespaceName,
      'partitioningEnabled': ?partitioningEnabled,
      'requiresDuplicateDetection': ?requiresDuplicateDetection,
      'requiresSession': ?requiresSession,
      'resourceGroupName': ?resourceGroupName,
      'status': ?status,
    };
  }

  factory GetQueueResult.fromMap(Map<String, dynamic> map) {
    return GetQueueResult(
      autoDeleteOnIdle: (() { final guardedValue = map['autoDeleteOnIdle']; if (guardedValue == null) return null; return guardedValue as String; })(),
      batchedOperationsEnabled: (() { final guardedValue = map['batchedOperationsEnabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      deadLetteringOnMessageExpiration: (() { final guardedValue = map['deadLetteringOnMessageExpiration']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      defaultMessageTtl: (() { final guardedValue = map['defaultMessageTtl']; if (guardedValue == null) return null; return guardedValue as String; })(),
      duplicateDetectionHistoryTimeWindow: (() { final guardedValue = map['duplicateDetectionHistoryTimeWindow']; if (guardedValue == null) return null; return guardedValue as String; })(),
      enableBatchedOperations: (() { final guardedValue = map['enableBatchedOperations']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      enableExpress: (() { final guardedValue = map['enableExpress']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      enablePartitioning: (() { final guardedValue = map['enablePartitioning']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      expressEnabled: (() { final guardedValue = map['expressEnabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      forwardDeadLetteredMessagesTo: (() { final guardedValue = map['forwardDeadLetteredMessagesTo']; if (guardedValue == null) return null; return guardedValue as String; })(),
      forwardTo: (() { final guardedValue = map['forwardTo']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      lockDuration: (() { final guardedValue = map['lockDuration']; if (guardedValue == null) return null; return guardedValue as String; })(),
      maxDeliveryCount: (() { final guardedValue = map['maxDeliveryCount']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      maxSizeInMegabytes: (() { final guardedValue = map['maxSizeInMegabytes']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      namespaceId: (() { final guardedValue = map['namespaceId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      namespaceName: (() { final guardedValue = map['namespaceName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      partitioningEnabled: (() { final guardedValue = map['partitioningEnabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      requiresDuplicateDetection: (() { final guardedValue = map['requiresDuplicateDetection']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      requiresSession: (() { final guardedValue = map['requiresSession']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
