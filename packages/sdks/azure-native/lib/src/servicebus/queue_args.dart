// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'entity_status.dart';

/// {@template pulumi_servicebus_queue_args_doc}
/// The set of arguments for Queue.
/// {@endtemplate}
/// {@macro pulumi_servicebus_queue_args_doc}
class QueueArgs {
  /// ISO 8061 timeSpan idle interval after which the queue is automatically deleted. The minimum duration is 5 minutes.
  final pulumi.Input<String>? autoDeleteOnIdle;
  /// A value that indicates whether this queue has dead letter support when a message expires.
  final pulumi.Input<bool>? deadLetteringOnMessageExpiration;
  /// ISO 8601 default message timespan to live value. This is the duration after which the message expires, starting from when the message is sent to Service Bus. This is the default value used when TimeToLive is not set on a message itself.
  final pulumi.Input<String>? defaultMessageTimeToLive;
  /// ISO 8601 timeSpan structure that defines the duration of the duplicate detection history. The default value is 10 minutes.
  final pulumi.Input<String>? duplicateDetectionHistoryTimeWindow;
  /// Value that indicates whether server-side batched operations are enabled.
  final pulumi.Input<bool>? enableBatchedOperations;
  /// A value that indicates whether Express Entities are enabled. An express queue holds a message in memory temporarily before writing it to persistent storage.
  final pulumi.Input<bool>? enableExpress;
  /// A value that indicates whether the queue is to be partitioned across multiple message brokers.
  final pulumi.Input<bool>? enablePartitioning;
  /// Queue/Topic name to forward the Dead Letter message
  final pulumi.Input<String>? forwardDeadLetteredMessagesTo;
  /// Queue/Topic name to forward the messages
  final pulumi.Input<String>? forwardTo;
  /// ISO 8601 timespan duration of a peek-lock; that is, the amount of time that the message is locked for other receivers. The maximum value for LockDuration is 5 minutes; the default value is 1 minute.
  final pulumi.Input<String>? lockDuration;
  /// The maximum delivery count. A message is automatically deadlettered after this number of deliveries. default value is 10.
  final pulumi.Input<int>? maxDeliveryCount;
  /// Maximum size (in KB) of the message payload that can be accepted by the queue. This property is only used in Premium today and default is 1024.
  final pulumi.Input<double>? maxMessageSizeInKilobytes;
  /// The maximum size of the queue in megabytes, which is the size of memory allocated for the queue. Default is 1024.
  final pulumi.Input<int>? maxSizeInMegabytes;
  /// The namespace name
  final pulumi.Input<String> namespaceName;
  /// The queue name.
  final pulumi.Input<String>? queueName;
  /// A value indicating if this queue requires duplicate detection.
  final pulumi.Input<bool>? requiresDuplicateDetection;
  /// A value that indicates whether the queue supports the concept of sessions.
  final pulumi.Input<bool>? requiresSession;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Enumerates the possible values for the status of a messaging entity.
  final pulumi.Input<EntityStatus>? status;

  /// Creates a new [QueueArgs].
  /// [autoDeleteOnIdle] ISO 8061 timeSpan idle interval after which the queue is automatically deleted. The minimum duration is 5 minutes.
  /// [deadLetteringOnMessageExpiration] A value that indicates whether this queue has dead letter support when a message expires.
  /// [defaultMessageTimeToLive] ISO 8601 default message timespan to live value. This is the duration after which the message expires, starting from when the message is sent to Service Bus. This is the default value used when TimeToLive is not set on a message itself.
  /// [duplicateDetectionHistoryTimeWindow] ISO 8601 timeSpan structure that defines the duration of the duplicate detection history. The default value is 10 minutes.
  /// [enableBatchedOperations] Value that indicates whether server-side batched operations are enabled.
  /// [enableExpress] A value that indicates whether Express Entities are enabled. An express queue holds a message in memory temporarily before writing it to persistent storage.
  /// [enablePartitioning] A value that indicates whether the queue is to be partitioned across multiple message brokers.
  /// [forwardDeadLetteredMessagesTo] Queue/Topic name to forward the Dead Letter message
  /// [forwardTo] Queue/Topic name to forward the messages
  /// [lockDuration] ISO 8601 timespan duration of a peek-lock; that is, the amount of time that the message is locked for other receivers. The maximum value for LockDuration is 5 minutes; the default value is 1 minute.
  /// [maxDeliveryCount] The maximum delivery count. A message is automatically deadlettered after this number of deliveries. default value is 10.
  /// [maxMessageSizeInKilobytes] Maximum size (in KB) of the message payload that can be accepted by the queue. This property is only used in Premium today and default is 1024.
  /// [maxSizeInMegabytes] The maximum size of the queue in megabytes, which is the size of memory allocated for the queue. Default is 1024.
  /// [namespaceName] The namespace name
  /// [queueName] The queue name.
  /// [requiresDuplicateDetection] A value indicating if this queue requires duplicate detection.
  /// [requiresSession] A value that indicates whether the queue supports the concept of sessions.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [status] Enumerates the possible values for the status of a messaging entity.
  QueueArgs({
    this.autoDeleteOnIdle,
    this.deadLetteringOnMessageExpiration,
    this.defaultMessageTimeToLive,
    this.duplicateDetectionHistoryTimeWindow,
    this.enableBatchedOperations,
    this.enableExpress,
    this.enablePartitioning,
    this.forwardDeadLetteredMessagesTo,
    this.forwardTo,
    this.lockDuration,
    this.maxDeliveryCount,
    this.maxMessageSizeInKilobytes,
    this.maxSizeInMegabytes,
    required this.namespaceName,
    this.queueName,
    this.requiresDuplicateDetection,
    this.requiresSession,
    required this.resourceGroupName,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoDeleteOnIdle': ?autoDeleteOnIdle,
      'deadLetteringOnMessageExpiration': ?deadLetteringOnMessageExpiration,
      'defaultMessageTimeToLive': ?defaultMessageTimeToLive,
      'duplicateDetectionHistoryTimeWindow': ?duplicateDetectionHistoryTimeWindow,
      'enableBatchedOperations': ?enableBatchedOperations,
      'enableExpress': ?enableExpress,
      'enablePartitioning': ?enablePartitioning,
      'forwardDeadLetteredMessagesTo': ?forwardDeadLetteredMessagesTo,
      'forwardTo': ?forwardTo,
      'lockDuration': ?lockDuration,
      'maxDeliveryCount': ?maxDeliveryCount,
      'maxMessageSizeInKilobytes': ?maxMessageSizeInKilobytes,
      'maxSizeInMegabytes': ?maxSizeInMegabytes,
      'namespaceName': namespaceName,
      'queueName': ?queueName,
      'requiresDuplicateDetection': ?requiresDuplicateDetection,
      'requiresSession': ?requiresSession,
      'resourceGroupName': resourceGroupName,
      'status': ?pulumi.Input.mapOptionalInputValue<EntityStatus, String>(status, (value) => value.value),
    };
  }

  factory QueueArgs.fromMap(Map<String, dynamic> map) {
    return QueueArgs(
      autoDeleteOnIdle: map['autoDeleteOnIdle'] == null ? null : (map['autoDeleteOnIdle'] as String).input(),
      deadLetteringOnMessageExpiration: map['deadLetteringOnMessageExpiration'] == null ? null : (map['deadLetteringOnMessageExpiration'] as bool).input(),
      defaultMessageTimeToLive: map['defaultMessageTimeToLive'] == null ? null : (map['defaultMessageTimeToLive'] as String).input(),
      duplicateDetectionHistoryTimeWindow: map['duplicateDetectionHistoryTimeWindow'] == null ? null : (map['duplicateDetectionHistoryTimeWindow'] as String).input(),
      enableBatchedOperations: map['enableBatchedOperations'] == null ? null : (map['enableBatchedOperations'] as bool).input(),
      enableExpress: map['enableExpress'] == null ? null : (map['enableExpress'] as bool).input(),
      enablePartitioning: map['enablePartitioning'] == null ? null : (map['enablePartitioning'] as bool).input(),
      forwardDeadLetteredMessagesTo: map['forwardDeadLetteredMessagesTo'] == null ? null : (map['forwardDeadLetteredMessagesTo'] as String).input(),
      forwardTo: map['forwardTo'] == null ? null : (map['forwardTo'] as String).input(),
      lockDuration: map['lockDuration'] == null ? null : (map['lockDuration'] as String).input(),
      maxDeliveryCount: map['maxDeliveryCount'] == null ? null : (map['maxDeliveryCount'] as int).input(),
      maxMessageSizeInKilobytes: map['maxMessageSizeInKilobytes'] == null ? null : (map['maxMessageSizeInKilobytes'] as double).input(),
      maxSizeInMegabytes: map['maxSizeInMegabytes'] == null ? null : (map['maxSizeInMegabytes'] as int).input(),
      namespaceName: (map['namespaceName'] as String).input(),
      queueName: map['queueName'] == null ? null : (map['queueName'] as String).input(),
      requiresDuplicateDetection: map['requiresDuplicateDetection'] == null ? null : (map['requiresDuplicateDetection'] as bool).input(),
      requiresSession: map['requiresSession'] == null ? null : (map['requiresSession'] as bool).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      status: map['status'] == null ? null : (EntityStatus.fromValue(map['status'] as String)).input(),
    );
  }
}

