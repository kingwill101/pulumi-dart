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
  GetQueueResult({
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
      autoDeleteOnIdle: map['autoDeleteOnIdle'] == null ? null : map['autoDeleteOnIdle'] as String,
      azureApiVersion: map['azureApiVersion'] as String,
      countDetails: MessageCountDetailsResponse.fromMap((map['countDetails'] as Map).cast<String, dynamic>()),
      createdAt: map['createdAt'] as String,
      deadLetteringOnMessageExpiration: map['deadLetteringOnMessageExpiration'] == null ? null : map['deadLetteringOnMessageExpiration'] as bool,
      defaultMessageTimeToLive: map['defaultMessageTimeToLive'] == null ? null : map['defaultMessageTimeToLive'] as String,
      duplicateDetectionHistoryTimeWindow: map['duplicateDetectionHistoryTimeWindow'] == null ? null : map['duplicateDetectionHistoryTimeWindow'] as String,
      enableBatchedOperations: map['enableBatchedOperations'] == null ? null : map['enableBatchedOperations'] as bool,
      enableExpress: map['enableExpress'] == null ? null : map['enableExpress'] as bool,
      enablePartitioning: map['enablePartitioning'] == null ? null : map['enablePartitioning'] as bool,
      forwardDeadLetteredMessagesTo: map['forwardDeadLetteredMessagesTo'] == null ? null : map['forwardDeadLetteredMessagesTo'] as String,
      forwardTo: map['forwardTo'] == null ? null : map['forwardTo'] as String,
      id: map['id'] as String,
      location: map['location'] as String,
      lockDuration: map['lockDuration'] == null ? null : map['lockDuration'] as String,
      maxDeliveryCount: map['maxDeliveryCount'] == null ? null : map['maxDeliveryCount'] as int,
      maxMessageSizeInKilobytes: map['maxMessageSizeInKilobytes'] == null ? null : map['maxMessageSizeInKilobytes'] as double,
      maxSizeInMegabytes: map['maxSizeInMegabytes'] == null ? null : map['maxSizeInMegabytes'] as int,
      messageCount: map['messageCount'] as double,
      name: map['name'] as String,
      requiresDuplicateDetection: map['requiresDuplicateDetection'] == null ? null : map['requiresDuplicateDetection'] as bool,
      requiresSession: map['requiresSession'] == null ? null : map['requiresSession'] as bool,
      sizeInBytes: map['sizeInBytes'] as double,
      status: map['status'] == null ? null : map['status'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      type: map['type'] as String,
      updatedAt: map['updatedAt'] as String,
    );
  }
}

