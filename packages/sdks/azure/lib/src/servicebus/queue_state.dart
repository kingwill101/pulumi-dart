// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Queue resources.
class QueueState {
  /// The ISO 8601 timespan duration of the idle interval after which the Queue is automatically deleted, minimum of 5 minutes.
  final pulumi.Input<String>? autoDeleteOnIdle;
  /// Boolean flag which controls whether server-side batched operations are enabled. Defaults to `true`.
  final pulumi.Input<bool>? batchedOperationsEnabled;
  /// Boolean flag which controls whether the Queue has dead letter support when a message expires. Defaults to `false`.
  final pulumi.Input<bool>? deadLetteringOnMessageExpiration;
  /// The ISO 8601 timespan duration of the TTL of messages sent to this queue. This is the default value used when TTL is not set on message itself.
  final pulumi.Input<String>? defaultMessageTtl;
  /// The ISO 8601 timespan duration during which duplicates can be detected. Defaults to `PT10M` (10 Minutes).
  final pulumi.Input<String>? duplicateDetectionHistoryTimeWindow;
  /// Boolean flag which controls whether Express Entities are enabled. An express queue holds a message in memory temporarily before writing it to persistent storage. Defaults to `false` for Basic and Standard. For Premium, it MUST be set to `false`.
  ///
  /// &gt; **Note:** Service Bus Premium namespaces do not support Express Entities, so `express_enabled` MUST be set to `false`.
  final pulumi.Input<bool>? expressEnabled;
  /// The name of a Queue or Topic to automatically forward dead lettered messages to.
  final pulumi.Input<String>? forwardDeadLetteredMessagesTo;
  /// The name of a Queue or Topic to automatically forward messages to. Please [see the documentation](https://docs.microsoft.com/azure/service-bus-messaging/service-bus-auto-forwarding) for more information.
  final pulumi.Input<String>? forwardTo;
  /// The ISO 8601 timespan duration of a peek-lock; that is, the amount of time that the message is locked for other receivers. Maximum value is 5 minutes. Defaults to `PT1M` (1 Minute).
  final pulumi.Input<String>? lockDuration;
  /// Integer value which controls when a message is automatically dead lettered. Defaults to `10`.
  final pulumi.Input<int>? maxDeliveryCount;
  /// Integer value which controls the maximum size of a message allowed on the queue for Premium SKU. For supported values see the "Large messages support" section of [this document](https://docs.microsoft.com/azure/service-bus-messaging/service-bus-premium-messaging#large-messages-support-preview).
  final pulumi.Input<int>? maxMessageSizeInKilobytes;
  /// Integer value which controls the size of memory allocated for the queue. For supported values see the "Queue or topic size" section of [Service Bus Quotas](https://docs.microsoft.com/azure/service-bus-messaging/service-bus-quotas).
  final pulumi.Input<int>? maxSizeInMegabytes;
  /// Specifies the name of the ServiceBus Queue resource. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The ID of the ServiceBus Namespace to create this queue in. Changing this forces a new resource to be created.
  final pulumi.Input<String>? namespaceId;
  final pulumi.Input<String>? namespaceName;
  /// Boolean flag which controls whether to enable the queue to be partitioned across multiple message brokers. Changing this forces a new resource to be created. Defaults to `false` for Basic and Standard.
  ///
  /// &gt; **Note:** Partitioning is available at entity creation for all queues and topics in Basic or Standard SKUs. For premium namespace, partitioning is available at namespace creation, and all queues and topics in the partitioned namespace will be partitioned, for the premium namespace that has `premium_messaging_partitions` sets to `1`, the namespace is not partitioned.
  final pulumi.Input<bool>? partitioningEnabled;
  /// Boolean flag which controls whether the Queue requires duplicate detection. Changing this forces a new resource to be created. Defaults to `false`.
  final pulumi.Input<bool>? requiresDuplicateDetection;
  /// Boolean flag which controls whether the Queue requires sessions. This will allow ordered handling of unbounded sequences of related messages. With sessions enabled a queue can guarantee first-in-first-out delivery of messages. Changing this forces a new resource to be created. Defaults to `false`.
  final pulumi.Input<bool>? requiresSession;
  final pulumi.Input<String>? resourceGroupName;
  /// The status of the Queue. Possible values are `Active`, `Creating`, `Deleting`, `Disabled`, `ReceiveDisabled`, `Renaming`, `SendDisabled`, `Unknown`. Note that `Restoring` is not accepted. Defaults to `Active`.
  final pulumi.Input<String>? status;

  /// Creates a new [QueueState].
  /// [autoDeleteOnIdle] The ISO 8601 timespan duration of the idle interval after which the Queue is automatically deleted, minimum of 5 minutes.
  /// [batchedOperationsEnabled] Boolean flag which controls whether server-side batched operations are enabled. Defaults to `true`.
  /// [deadLetteringOnMessageExpiration] Boolean flag which controls whether the Queue has dead letter support when a message expires. Defaults to `false`.
  /// [defaultMessageTtl] The ISO 8601 timespan duration of the TTL of messages sent to this queue. This is the default value used when TTL is not set on message itself.
  /// [duplicateDetectionHistoryTimeWindow] The ISO 8601 timespan duration during which duplicates can be detected. Defaults to `PT10M` (10 Minutes).
  /// [expressEnabled] Boolean flag which controls whether Express Entities are enabled. An express queue holds a message in memory temporarily before writing it to persistent storage. Defaults to `false` for Basic and Standard. For Premium, it MUST be set to `false`.
  /// [forwardDeadLetteredMessagesTo] The name of a Queue or Topic to automatically forward dead lettered messages to.
  /// [forwardTo] The name of a Queue or Topic to automatically forward messages to. Please [see the documentation](https://docs.microsoft.com/azure/service-bus-messaging/service-bus-auto-forwarding) for more information.
  /// [lockDuration] The ISO 8601 timespan duration of a peek-lock; that is, the amount of time that the message is locked for other receivers. Maximum value is 5 minutes. Defaults to `PT1M` (1 Minute).
  /// [maxDeliveryCount] Integer value which controls when a message is automatically dead lettered. Defaults to `10`.
  /// [maxMessageSizeInKilobytes] Integer value which controls the maximum size of a message allowed on the queue for Premium SKU. For supported values see the "Large messages support" section of [this document](https://docs.microsoft.com/azure/service-bus-messaging/service-bus-premium-messaging#large-messages-support-preview).
  /// [maxSizeInMegabytes] Integer value which controls the size of memory allocated for the queue. For supported values see the "Queue or topic size" section of [Service Bus Quotas](https://docs.microsoft.com/azure/service-bus-messaging/service-bus-quotas).
  /// [name] Specifies the name of the ServiceBus Queue resource. Changing this forces a new resource to be created.
  /// [namespaceId] The ID of the ServiceBus Namespace to create this queue in. Changing this forces a new resource to be created.
  /// [namespaceName] Optional.
  /// [partitioningEnabled] Boolean flag which controls whether to enable the queue to be partitioned across multiple message brokers. Changing this forces a new resource to be created. Defaults to `false` for Basic and Standard.
  /// [requiresDuplicateDetection] Boolean flag which controls whether the Queue requires duplicate detection. Changing this forces a new resource to be created. Defaults to `false`.
  /// [requiresSession] Boolean flag which controls whether the Queue requires sessions. This will allow ordered handling of unbounded sequences of related messages. With sessions enabled a queue can guarantee first-in-first-out delivery of messages. Changing this forces a new resource to be created. Defaults to `false`.
  /// [resourceGroupName] Optional.
  /// [status] The status of the Queue. Possible values are `Active`, `Creating`, `Deleting`, `Disabled`, `ReceiveDisabled`, `Renaming`, `SendDisabled`, `Unknown`. Note that `Restoring` is not accepted. Defaults to `Active`.
  const QueueState({
    this.autoDeleteOnIdle,
    this.batchedOperationsEnabled,
    this.deadLetteringOnMessageExpiration,
    this.defaultMessageTtl,
    this.duplicateDetectionHistoryTimeWindow,
    this.expressEnabled,
    this.forwardDeadLetteredMessagesTo,
    this.forwardTo,
    this.lockDuration,
    this.maxDeliveryCount,
    this.maxMessageSizeInKilobytes,
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
      'expressEnabled': ?expressEnabled,
      'forwardDeadLetteredMessagesTo': ?forwardDeadLetteredMessagesTo,
      'forwardTo': ?forwardTo,
      'lockDuration': ?lockDuration,
      'maxDeliveryCount': ?maxDeliveryCount,
      'maxMessageSizeInKilobytes': ?maxMessageSizeInKilobytes,
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

  factory QueueState.fromMap(Map<String, dynamic> map) {
    return QueueState(
      autoDeleteOnIdle: (() { final guardedValue = map['autoDeleteOnIdle']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      batchedOperationsEnabled: (() { final guardedValue = map['batchedOperationsEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      deadLetteringOnMessageExpiration: (() { final guardedValue = map['deadLetteringOnMessageExpiration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      defaultMessageTtl: (() { final guardedValue = map['defaultMessageTtl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      duplicateDetectionHistoryTimeWindow: (() { final guardedValue = map['duplicateDetectionHistoryTimeWindow']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      expressEnabled: (() { final guardedValue = map['expressEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      forwardDeadLetteredMessagesTo: (() { final guardedValue = map['forwardDeadLetteredMessagesTo']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      forwardTo: (() { final guardedValue = map['forwardTo']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      lockDuration: (() { final guardedValue = map['lockDuration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      maxDeliveryCount: (() { final guardedValue = map['maxDeliveryCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      maxMessageSizeInKilobytes: (() { final guardedValue = map['maxMessageSizeInKilobytes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      maxSizeInMegabytes: (() { final guardedValue = map['maxSizeInMegabytes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      namespaceId: (() { final guardedValue = map['namespaceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      namespaceName: (() { final guardedValue = map['namespaceName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      partitioningEnabled: (() { final guardedValue = map['partitioningEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      requiresDuplicateDetection: (() { final guardedValue = map['requiresDuplicateDetection']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      requiresSession: (() { final guardedValue = map['requiresSession']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

