// ignore_for_file: unused_element, unnecessary_cast

import 'message_count_details_response.dart';
import 'system_data_response.dart';

/// Result data returned by getQueue.
class GetQueueResult {
  /// Last time a message was sent, or the last time there was a receive request to this queue.
  final String accessedAt;
  /// ISO 8061 timeSpan idle interval after which the queue is automatically deleted. The minimum duration is 5 minutes.
  final String? autoDeleteOnIdle;
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Message Count Details.
  final MessageCountDetailsResponse countDetails;
  /// The exact time the message was created.
  final String createdAt;
  /// A value that indicates whether this queue has dead letter support when a message expires.
  final bool? deadLetteringOnMessageExpiration;
  /// ISO 8601 default message timespan to live value. This is the duration after which the message expires, starting from when the message is sent to Service Bus. This is the default value used when TimeToLive is not set on a message itself.
  final String? defaultMessageTimeToLive;
  /// ISO 8601 timeSpan structure that defines the duration of the duplicate detection history. The default value is 10 minutes.
  final String? duplicateDetectionHistoryTimeWindow;
  /// Value that indicates whether server-side batched operations are enabled.
  final bool? enableBatchedOperations;
  /// A value that indicates whether Express Entities are enabled. An express queue holds a message in memory temporarily before writing it to persistent storage.
  final bool? enableExpress;
  /// A value that indicates whether the queue is to be partitioned across multiple message brokers.
  final bool? enablePartitioning;
  /// Queue/Topic name to forward the Dead Letter message
  final String? forwardDeadLetteredMessagesTo;
  /// Queue/Topic name to forward the messages
  final String? forwardTo;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String id;
  /// The geo-location where the resource lives
  final String location;
  /// ISO 8601 timespan duration of a peek-lock; that is, the amount of time that the message is locked for other receivers. The maximum value for LockDuration is 5 minutes; the default value is 1 minute.
  final String? lockDuration;
  /// The maximum delivery count. A message is automatically deadlettered after this number of deliveries. default value is 10.
  final int? maxDeliveryCount;
  /// Maximum size (in KB) of the message payload that can be accepted by the queue. This property is only used in Premium today and default is 1024.
  final double? maxMessageSizeInKilobytes;
  /// The maximum size of the queue in megabytes, which is the size of memory allocated for the queue. Default is 1024.
  final int? maxSizeInMegabytes;
  /// The number of messages in the queue.
  final double messageCount;
  /// The name of the resource
  final String name;
  /// A value indicating if this queue requires duplicate detection.
  final bool? requiresDuplicateDetection;
  /// A value that indicates whether the queue supports the concept of sessions.
  final bool? requiresSession;
  /// The size of the queue, in bytes.
  final double sizeInBytes;
  /// Enumerates the possible values for the status of a messaging entity.
  final String? status;
  /// The system meta data relating to this resource.
  final SystemDataResponse systemData;
  /// The type of the resource. E.g. "Microsoft.EventHub/Namespaces" or "Microsoft.EventHub/Namespaces/EventHubs"
  final String type;
  /// The exact time the message was updated.
  final String updatedAt;

  /// Creates a new [GetQueueResult].
  /// [accessedAt] Last time a message was sent, or the last time there was a receive request to this queue.
  /// [autoDeleteOnIdle] ISO 8061 timeSpan idle interval after which the queue is automatically deleted. The minimum duration is 5 minutes.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [countDetails] Message Count Details.
  /// [createdAt] The exact time the message was created.
  /// [deadLetteringOnMessageExpiration] A value that indicates whether this queue has dead letter support when a message expires.
  /// [defaultMessageTimeToLive] ISO 8601 default message timespan to live value. This is the duration after which the message expires, starting from when the message is sent to Service Bus. This is the default value used when TimeToLive is not set on a message itself.
  /// [duplicateDetectionHistoryTimeWindow] ISO 8601 timeSpan structure that defines the duration of the duplicate detection history. The default value is 10 minutes.
  /// [enableBatchedOperations] Value that indicates whether server-side batched operations are enabled.
  /// [enableExpress] A value that indicates whether Express Entities are enabled. An express queue holds a message in memory temporarily before writing it to persistent storage.
  /// [enablePartitioning] A value that indicates whether the queue is to be partitioned across multiple message brokers.
  /// [forwardDeadLetteredMessagesTo] Queue/Topic name to forward the Dead Letter message
  /// [forwardTo] Queue/Topic name to forward the messages
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [location] The geo-location where the resource lives
  /// [lockDuration] ISO 8601 timespan duration of a peek-lock; that is, the amount of time that the message is locked for other receivers. The maximum value for LockDuration is 5 minutes; the default value is 1 minute.
  /// [maxDeliveryCount] The maximum delivery count. A message is automatically deadlettered after this number of deliveries. default value is 10.
  /// [maxMessageSizeInKilobytes] Maximum size (in KB) of the message payload that can be accepted by the queue. This property is only used in Premium today and default is 1024.
  /// [maxSizeInMegabytes] The maximum size of the queue in megabytes, which is the size of memory allocated for the queue. Default is 1024.
  /// [messageCount] The number of messages in the queue.
  /// [name] The name of the resource
  /// [requiresDuplicateDetection] A value indicating if this queue requires duplicate detection.
  /// [requiresSession] A value that indicates whether the queue supports the concept of sessions.
  /// [sizeInBytes] The size of the queue, in bytes.
  /// [status] Enumerates the possible values for the status of a messaging entity.
  /// [systemData] The system meta data relating to this resource.
  /// [type] The type of the resource. E.g. "Microsoft.EventHub/Namespaces" or "Microsoft.EventHub/Namespaces/EventHubs"
  /// [updatedAt] The exact time the message was updated.
  const GetQueueResult({
    required this.accessedAt,
    this.autoDeleteOnIdle,
    required this.azureApiVersion,
    required this.countDetails,
    required this.createdAt,
    this.deadLetteringOnMessageExpiration,
    this.defaultMessageTimeToLive,
    this.duplicateDetectionHistoryTimeWindow,
    this.enableBatchedOperations,
    this.enableExpress,
    this.enablePartitioning,
    this.forwardDeadLetteredMessagesTo,
    this.forwardTo,
    required this.id,
    required this.location,
    this.lockDuration,
    this.maxDeliveryCount,
    this.maxMessageSizeInKilobytes,
    this.maxSizeInMegabytes,
    required this.messageCount,
    required this.name,
    this.requiresDuplicateDetection,
    this.requiresSession,
    required this.sizeInBytes,
    this.status,
    required this.systemData,
    required this.type,
    required this.updatedAt,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessedAt': accessedAt,
      'autoDeleteOnIdle': ?autoDeleteOnIdle,
      'azureApiVersion': azureApiVersion,
      'countDetails': countDetails.toMap(),
      'createdAt': createdAt,
      'deadLetteringOnMessageExpiration': ?deadLetteringOnMessageExpiration,
      'defaultMessageTimeToLive': ?defaultMessageTimeToLive,
      'duplicateDetectionHistoryTimeWindow': ?duplicateDetectionHistoryTimeWindow,
      'enableBatchedOperations': ?enableBatchedOperations,
      'enableExpress': ?enableExpress,
      'enablePartitioning': ?enablePartitioning,
      'forwardDeadLetteredMessagesTo': ?forwardDeadLetteredMessagesTo,
      'forwardTo': ?forwardTo,
      'id': id,
      'location': location,
      'lockDuration': ?lockDuration,
      'maxDeliveryCount': ?maxDeliveryCount,
      'maxMessageSizeInKilobytes': ?maxMessageSizeInKilobytes,
      'maxSizeInMegabytes': ?maxSizeInMegabytes,
      'messageCount': messageCount,
      'name': name,
      'requiresDuplicateDetection': ?requiresDuplicateDetection,
      'requiresSession': ?requiresSession,
      'sizeInBytes': sizeInBytes,
      'status': ?status,
      'systemData': systemData.toMap(),
      'type': type,
      'updatedAt': updatedAt,
    };
  }

  factory GetQueueResult.fromMap(Map<String, dynamic> map) {
    return GetQueueResult(
      accessedAt: map['accessedAt'] as String,
      autoDeleteOnIdle: (() { final guardedValue = map['autoDeleteOnIdle']; if (guardedValue == null) return null; return guardedValue as String; })(),
      azureApiVersion: map['azureApiVersion'] as String,
      countDetails: MessageCountDetailsResponse.fromMap((map['countDetails']! as Map).cast<String, dynamic>()),
      createdAt: map['createdAt'] as String,
      deadLetteringOnMessageExpiration: (() { final guardedValue = map['deadLetteringOnMessageExpiration']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      defaultMessageTimeToLive: (() { final guardedValue = map['defaultMessageTimeToLive']; if (guardedValue == null) return null; return guardedValue as String; })(),
      duplicateDetectionHistoryTimeWindow: (() { final guardedValue = map['duplicateDetectionHistoryTimeWindow']; if (guardedValue == null) return null; return guardedValue as String; })(),
      enableBatchedOperations: (() { final guardedValue = map['enableBatchedOperations']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      enableExpress: (() { final guardedValue = map['enableExpress']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      enablePartitioning: (() { final guardedValue = map['enablePartitioning']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      forwardDeadLetteredMessagesTo: (() { final guardedValue = map['forwardDeadLetteredMessagesTo']; if (guardedValue == null) return null; return guardedValue as String; })(),
      forwardTo: (() { final guardedValue = map['forwardTo']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: map['id'] as String,
      location: map['location'] as String,
      lockDuration: (() { final guardedValue = map['lockDuration']; if (guardedValue == null) return null; return guardedValue as String; })(),
      maxDeliveryCount: (() { final guardedValue = map['maxDeliveryCount']; if (guardedValue == null) return null; return guardedValue as int; })(),
      maxMessageSizeInKilobytes: (() { final guardedValue = map['maxMessageSizeInKilobytes']; if (guardedValue == null) return null; return guardedValue as double; })(),
      maxSizeInMegabytes: (() { final guardedValue = map['maxSizeInMegabytes']; if (guardedValue == null) return null; return guardedValue as int; })(),
      messageCount: map['messageCount'] as double,
      name: map['name'] as String,
      requiresDuplicateDetection: (() { final guardedValue = map['requiresDuplicateDetection']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      requiresSession: (() { final guardedValue = map['requiresSession']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      sizeInBytes: map['sizeInBytes'] as double,
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      type: map['type'] as String,
      updatedAt: map['updatedAt'] as String,
    );
  }
}

