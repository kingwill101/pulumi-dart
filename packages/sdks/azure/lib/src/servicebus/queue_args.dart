// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_servicebus_queue_queue_args_doc}
/// The set of arguments for Queue.
/// {@endtemplate}
/// {@macro pulumi_servicebus_queue_queue_args_doc}
class QueueArgs {
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
  /// > **Note:** Service Bus Premium namespaces do not support Express Entities, so `express_enabled` MUST be set to `false`.
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
  final pulumi.Input<String> namespaceId;
  /// Boolean flag which controls whether to enable the queue to be partitioned across multiple message brokers. Changing this forces a new resource to be created. Defaults to `false` for Basic and Standard.
  ///
  /// > **Note:** Partitioning is available at entity creation for all queues and topics in Basic or Standard SKUs. For premium namespace, partitioning is available at namespace creation, and all queues and topics in the partitioned namespace will be partitioned, for the premium namespace that has `premium_messaging_partitions` sets to `1`, the namespace is not partitioned.
  final pulumi.Input<bool>? partitioningEnabled;
  /// Boolean flag which controls whether the Queue requires duplicate detection. Changing this forces a new resource to be created. Defaults to `false`.
  final pulumi.Input<bool>? requiresDuplicateDetection;
  /// Boolean flag which controls whether the Queue requires sessions. This will allow ordered handling of unbounded sequences of related messages. With sessions enabled a queue can guarantee first-in-first-out delivery of messages. Changing this forces a new resource to be created. Defaults to `false`.
  final pulumi.Input<bool>? requiresSession;
  /// The status of the Queue. Possible values are `Active`, `Creating`, `Deleting`, `Disabled`, `ReceiveDisabled`, `Renaming`, `SendDisabled`, `Unknown`. Note that `Restoring` is not accepted. Defaults to `Active`.
  final pulumi.Input<String>? status;

  /// Creates a new [QueueArgs].
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
  /// [partitioningEnabled] Boolean flag which controls whether to enable the queue to be partitioned across multiple message brokers. Changing this forces a new resource to be created. Defaults to `false` for Basic and Standard.
  /// [requiresDuplicateDetection] Boolean flag which controls whether the Queue requires duplicate detection. Changing this forces a new resource to be created. Defaults to `false`.
  /// [requiresSession] Boolean flag which controls whether the Queue requires sessions. This will allow ordered handling of unbounded sequences of related messages. With sessions enabled a queue can guarantee first-in-first-out delivery of messages. Changing this forces a new resource to be created. Defaults to `false`.
  /// [status] The status of the Queue. Possible values are `Active`, `Creating`, `Deleting`, `Disabled`, `ReceiveDisabled`, `Renaming`, `SendDisabled`, `Unknown`. Note that `Restoring` is not accepted. Defaults to `Active`.
  QueueArgs({
    pulumi.Output<String>? autoDeleteOnIdle,
    pulumi.Output<bool>? batchedOperationsEnabled,
    pulumi.Output<bool>? deadLetteringOnMessageExpiration,
    pulumi.Output<String>? defaultMessageTtl,
    pulumi.Output<String>? duplicateDetectionHistoryTimeWindow,
    pulumi.Output<bool>? expressEnabled,
    pulumi.Output<String>? forwardDeadLetteredMessagesTo,
    pulumi.Output<String>? forwardTo,
    pulumi.Output<String>? lockDuration,
    pulumi.Output<int>? maxDeliveryCount,
    pulumi.Output<int>? maxMessageSizeInKilobytes,
    pulumi.Output<int>? maxSizeInMegabytes,
    pulumi.Output<String>? name,
    required pulumi.Output<String> namespaceId,
    pulumi.Output<bool>? partitioningEnabled,
    pulumi.Output<bool>? requiresDuplicateDetection,
    pulumi.Output<bool>? requiresSession,
    pulumi.Output<String>? status,
  }) :
      autoDeleteOnIdle = pulumi.Input.asOptionalInput<String>(autoDeleteOnIdle),
      batchedOperationsEnabled = pulumi.Input.asOptionalInput<bool>(batchedOperationsEnabled),
      deadLetteringOnMessageExpiration = pulumi.Input.asOptionalInput<bool>(deadLetteringOnMessageExpiration),
      defaultMessageTtl = pulumi.Input.asOptionalInput<String>(defaultMessageTtl),
      duplicateDetectionHistoryTimeWindow = pulumi.Input.asOptionalInput<String>(duplicateDetectionHistoryTimeWindow),
      expressEnabled = pulumi.Input.asOptionalInput<bool>(expressEnabled),
      forwardDeadLetteredMessagesTo = pulumi.Input.asOptionalInput<String>(forwardDeadLetteredMessagesTo),
      forwardTo = pulumi.Input.asOptionalInput<String>(forwardTo),
      lockDuration = pulumi.Input.asOptionalInput<String>(lockDuration),
      maxDeliveryCount = pulumi.Input.asOptionalInput<int>(maxDeliveryCount),
      maxMessageSizeInKilobytes = pulumi.Input.asOptionalInput<int>(maxMessageSizeInKilobytes),
      maxSizeInMegabytes = pulumi.Input.asOptionalInput<int>(maxSizeInMegabytes),
      name = pulumi.Input.asOptionalInput<String>(name),
      namespaceId = pulumi.Input.asInput<String>(namespaceId),
      partitioningEnabled = pulumi.Input.asOptionalInput<bool>(partitioningEnabled),
      requiresDuplicateDetection = pulumi.Input.asOptionalInput<bool>(requiresDuplicateDetection),
      requiresSession = pulumi.Input.asOptionalInput<bool>(requiresSession),
      status = pulumi.Input.asOptionalInput<String>(status);

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
      'namespaceId': namespaceId,
      'partitioningEnabled': ?partitioningEnabled,
      'requiresDuplicateDetection': ?requiresDuplicateDetection,
      'requiresSession': ?requiresSession,
      'status': ?status,
    };
  }

  factory QueueArgs.fromMap(Map<String, dynamic> map) {
    return QueueArgs(
      autoDeleteOnIdle: map['autoDeleteOnIdle'] == null ? null : pulumi.Output.create<String>(map['autoDeleteOnIdle'] as String),
      batchedOperationsEnabled: map['batchedOperationsEnabled'] == null ? null : pulumi.Output.create<bool>(map['batchedOperationsEnabled'] as bool),
      deadLetteringOnMessageExpiration: map['deadLetteringOnMessageExpiration'] == null ? null : pulumi.Output.create<bool>(map['deadLetteringOnMessageExpiration'] as bool),
      defaultMessageTtl: map['defaultMessageTtl'] == null ? null : pulumi.Output.create<String>(map['defaultMessageTtl'] as String),
      duplicateDetectionHistoryTimeWindow: map['duplicateDetectionHistoryTimeWindow'] == null ? null : pulumi.Output.create<String>(map['duplicateDetectionHistoryTimeWindow'] as String),
      expressEnabled: map['expressEnabled'] == null ? null : pulumi.Output.create<bool>(map['expressEnabled'] as bool),
      forwardDeadLetteredMessagesTo: map['forwardDeadLetteredMessagesTo'] == null ? null : pulumi.Output.create<String>(map['forwardDeadLetteredMessagesTo'] as String),
      forwardTo: map['forwardTo'] == null ? null : pulumi.Output.create<String>(map['forwardTo'] as String),
      lockDuration: map['lockDuration'] == null ? null : pulumi.Output.create<String>(map['lockDuration'] as String),
      maxDeliveryCount: map['maxDeliveryCount'] == null ? null : pulumi.Output.create<int>(map['maxDeliveryCount'] as int),
      maxMessageSizeInKilobytes: map['maxMessageSizeInKilobytes'] == null ? null : pulumi.Output.create<int>(map['maxMessageSizeInKilobytes'] as int),
      maxSizeInMegabytes: map['maxSizeInMegabytes'] == null ? null : pulumi.Output.create<int>(map['maxSizeInMegabytes'] as int),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      namespaceId: pulumi.Output.create<String>(map['namespaceId'] as String),
      partitioningEnabled: map['partitioningEnabled'] == null ? null : pulumi.Output.create<bool>(map['partitioningEnabled'] as bool),
      requiresDuplicateDetection: map['requiresDuplicateDetection'] == null ? null : pulumi.Output.create<bool>(map['requiresDuplicateDetection'] as bool),
      requiresSession: map['requiresSession'] == null ? null : pulumi.Output.create<bool>(map['requiresSession'] as bool),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
    );
  }
}

